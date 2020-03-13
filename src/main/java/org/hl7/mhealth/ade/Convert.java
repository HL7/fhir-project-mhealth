package org.hl7.mhealth.ade;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import io.cucumber.gherkin.GherkinDocumentBuilder;
import io.cucumber.gherkin.Parser;
import io.cucumber.gherkin.ParserException;
import io.cucumber.messages.IdGenerator;
import io.cucumber.messages.Messages.GherkinDocument;
import io.cucumber.messages.Messages.GherkinDocument.Feature;
import io.cucumber.messages.Messages.GherkinDocument.Feature.Background;
import io.cucumber.messages.Messages.GherkinDocument.Feature.FeatureChild;
import io.cucumber.messages.Messages.GherkinDocument.Feature.FeatureChild.Rule;
import io.cucumber.messages.Messages.GherkinDocument.Feature.FeatureChild.RuleChild;
import io.cucumber.messages.Messages.GherkinDocument.Feature.Scenario;
import io.cucumber.messages.Messages.GherkinDocument.Feature.Step;
import io.cucumber.messages.internal.com.google.protobuf.GeneratedMessageV3;

public class Convert {
    private static IdGenerator gen = new IdGenerator.Incrementing();
    private static int errors, warnings;

    public static void main(String args[]) throws IOException {
        String output = "./ig-data/input/pagecontent";
        for (String arg : args) {
            if (arg.startsWith("-o")) {
                output = arg.substring(2);
                continue;
            }

            File f = new File(arg);
            if (!f.exists()) {
                error(f, "%s does not exist.", arg);
                continue;
            }
            if (!f.isDirectory()) {
                error(f, "%s is not a folder.", arg);
                continue;
            }
            convert(f, new File(output));
        }
    }

    public static class Hierarchy<Type extends Object> {
        private Type entry;
        private String title;
        private String description;
        private List<String> tags = new ArrayList<>();
        private List<Hierarchy<Type>> children = new ArrayList<>();

        Hierarchy(Type entry) {
            this.entry = entry;
        }

        public Type getEntry() {
            return entry;
        }

        /**
         * @return the title
         */
        public String getTitle() {
            return title;
        }

        /**
         * @param title the title to set
         */
        public void setTitle(String title) {
            this.title = title;
        }

        /**
         * @return the description
         */
        public String getDescription() {
            return description;
        }

        /**
         * @param description the description to set
         */
        public void setDescription(String description) {
            this.description = description;
        }


        public List<String> getTags() {
            return tags;
        }

        public void addTag(String tag) {
            tags.add(tag);
        }

        Hierarchy<Type> add(Type child) {
            Hierarchy<Type> result = new Hierarchy<Type>(child);
            children.add(result);
            return result;
        }

        List<Hierarchy<Type>> getChildren() {
            return children;
        }

        Hierarchy<Type> find(Type t) {
            if (this.equals(t)) {
                return this;
            }
            for (Hierarchy<Type> child : getChildren()) {
                Hierarchy<Type> found = child.find(t);
                if (found != null) {
                    return found;
                }
            }
            return null;
        }
    }

    private static List<String> noiseWords = Arrays.asList("the", "for");

    private static String titleCase(String title) {
        String words[] = title.split("\\s+");
        for (int i = 0; i < words.length; i++) {
            if (words[i].length() < 3 || noiseWords.contains(words[i])) {
                continue;
            }
            words[i] = StringUtils.capitalize(words[i]);
        }
        return StringUtils.join(words, ' ').trim();
    }

    private static String[] FEATURE_EXT = { "feature" };

    private static void convert(File inputFolder, File outputFolder) {
        Hierarchy<GeneratedMessageV3> root = new Hierarchy<>(null);
        processDescription(root, inputFolder, outputFolder);
        processSubfolders(root, inputFolder, outputFolder);
    }

    private static String processDescription(Hierarchy<GeneratedMessageV3> root, File inputFolder, File outputFolder) {
        File input = new File(inputFolder, "description.md");
        File outputFile = computeOutputFile(inputFolder, outputFolder);

        // The outputFolder is here, we need to compute the name of the output file
        // where description.md and other
        // stuff will be copied.
        System.out.printf("%s: %s%n", inputFolder, outputFile);

        if (!input.exists()) {
            error(input, "Missing description.md");
            try (FileWriter fw = new FileWriter(input);
                 PrintWriter pw = new PrintWriter(fw);) {
                pw.printf("The %s category supports [<span class='text-error'>...</span>](#error)", makeTitle(input.getName()));
            } catch (IOException e) {
                warn(input, "Error creating '%s'", input);
            }
        }

        String firstSentence = null;
        try {

            String content = input.exists() ? FileUtils.readFileToString(input, StandardCharsets.UTF_8)
                : String.format("Missing description for %s.%n%n", input.getPath());

            firstSentence = StringUtils.substringBefore(content.replaceAll("\\s+", " "), ". ");
            FileUtils.writeStringToFile(outputFile, content, StandardCharsets.UTF_8);
            root.setTitle(makeTitle(input.getName()));
            root.setDescription(firstSentence);

        } catch (IOException e) {
            error(input, "Unexpected %s reading file.", e.getClass().getName());
            e.printStackTrace();
        }
        return firstSentence;
    }

    private static File computeOutputFile(File inputFolder, File outputFolder) {
        String path = inputFolder.getPath();
        String parts[] = path.split(Pattern.quote(File.separator));
        String number = "";
        for (int i = 0; i < parts.length; i++) {
            String subparts[] = parts[i].split("_");
            if (StringUtils.isNumeric(subparts[0])) {
                number += subparts[0];
                subparts[0] = "";
            }
            parts[i] = StringUtils.join(subparts, '_');
        }
        path = parts[parts.length - 1];
        if (number.length() > 0) {
            path = number + "_" + path;
        }
        return new File(outputFolder, path.replaceAll("_+", "_") + ".md");
    }

    private static void processSubfolders(Hierarchy<GeneratedMessageV3> root, File inputFolder, File outputFolder) {
        boolean isCategory = false;

        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        String category = makeTitle(inputFolder.getName());
        pw.printf("### Category: %s %n%n", category);

        pw.printf("The %s Category includes all requirements for from the following subcategories:%n", category);
        for (File f : inputFolder.listFiles(f -> f.isDirectory())) {
            isCategory = true;
            Hierarchy<GeneratedMessageV3> part = root.add(null);
            String description = processDescription(part, f, outputFolder);
            pw.printf(" * [%s](%s)%n", makeTitle(f.getName()), makeLink(f));
            if (!StringUtils.isBlank(description)) {
                pw.printf("   %s%n", description);
            }
            pw.println();
            handleFeatures(part, f, outputFolder);
            processSubfolders(part, f, outputFolder);
        }
        pw.close();
        File outputFile = computeOutputFile(inputFolder, outputFolder);
        if (isCategory) {
            try {
                FileUtils.writeStringToFile(outputFile, sw.toString(), StandardCharsets.UTF_8, true);
            } catch (IOException e) {
                error(outputFile, "Error writing to file");
            }
        }
    }

    private static String makeTitle(String name) {
        String titleParts[] = name.split("_");
        if (StringUtils.isNumeric(titleParts[0])) {
            titleParts[0] = "";
        }
        return titleCase(StringUtils.join(titleParts, ' '));
    }

    private static String makeLink(File f) {
        String name = f.getName();
        if (StringUtils.isNumeric(StringUtils.substringBefore(name, "_"))) {
            name = StringUtils.substringAfter(name, "_");
        }
        return name + ".html";
    }

    private static void handleFeatures(Hierarchy<GeneratedMessageV3> root, File inputFolder, File outputFolder) {

        Collection<File> collection = FileUtils.listFiles(inputFolder, FEATURE_EXT, false);

        if (collection.isEmpty()) {
            return;
        }

        File outputFile = computeOutputFile(inputFolder, outputFolder);

        for (File input : collection) {
            GherkinDocument doc = null;
            try (PrintWriter pw = new PrintWriter(new FileWriter(outputFile, StandardCharsets.UTF_8, true))) {
                try (BufferedReader r = new BufferedReader(new FileReader(input));) {
                    Parser<GherkinDocument.Builder> parser = new Parser<>(new GherkinDocumentBuilder(gen));
                    doc = parser.parse(r).build();
                } catch (FileNotFoundException e) {
                    error(pw, input, "File '%s' not found.");
                } catch (IOException e) {
                    error(pw, input, "Unexpected %s exception reading '%s'.", e.getClass().getName(), input);
                    pw.printf("Error reading '%s'.", input);
                } catch (ParserException e) {
                    error(pw, input, "Parser Exception in '%s': %n%s%n", input, e.getMessage());
                }
                if (doc == null) {
                    continue;
                }
                Feature feature = doc.getFeature();
                Hierarchy<GeneratedMessageV3> feat = root.add(feature);
                feat.setTitle(feature.getKeyword() + ": " + makeTitle(feature.getName()));
                feat.setDescription(feature.getDescription());
                feature.getTagsList().forEach(t -> feat.addTag(t.getName()));

                printHeading(pw, 3, feat);

                String desc = feature.getDescription();
                if (!StringUtils.isBlank(desc)) {
                    pw.printf("%s%n%n", highlightRequirements(desc));
                }

                handleFeatureChildren(pw, 4, feat, feature.getChildrenList());
            } catch (IOException e1) {
                error(outputFile, "Error writing file");
                e1.printStackTrace();
            }
        }
    }

    private static void printHeading(PrintWriter pw, int i, Hierarchy<GeneratedMessageV3> hier) {
        pw.printf("%1$s %3$s%2$s%n%n", "######".substring(0, i), hier.getTitle(), getTagIcons(hier.getTags()));
    }

    private static void error(PrintWriter pw, File input, String string, String name, File input2) {
        // TODO Auto-generated method stub

    }

    private static Pattern REQ_TERMS = Pattern.compile("(?i)\\b(SHALL|SHALL NOT|SHOULD|SHOULD NOT)\\b");
    private static Object highlightRequirements(String text) {
        Matcher matcher = REQ_TERMS.matcher(text);
        return matcher.replaceAll(m -> "**" + m.group().toUpperCase() + "**");
    }

    private static void handleFeatureChildren(PrintWriter pw, int l, Hierarchy<GeneratedMessageV3> root, List<FeatureChild> childrenList) {

        Hierarchy<GeneratedMessageV3> node;

        for (FeatureChild child : childrenList) {
            node = root.add(child);
            List<Step> steps = Collections.emptyList();
            if (child.hasBackground()) {
                steps = handleBackground(node, child.getBackground());
            } else if (child.hasRule()) {
                handleRule(pw, l, node, child.getRule());
            } else if (child.hasScenario()) {
                steps = handleScenario(node, child.getScenario());
            }
            handleSteps(pw, l, node, steps);
            if (child.hasBackground()) {
                l++;
            }
            if (child.hasRule()) {
                handleRuleChildren(pw, l, node, child.getRule().getChildrenList());
            }
        }
    }

    private static void handleRuleChildren(PrintWriter pw, int l, Hierarchy<GeneratedMessageV3> root, List<RuleChild> childrenList) {
        Hierarchy<GeneratedMessageV3> node;

        for (RuleChild child : childrenList) {
            node = root.add(child);
            List<Step> steps = Collections.emptyList();
            if (child.hasBackground()) {
                steps = handleBackground(node, child.getBackground());
            } else if (child.hasScenario()) {
                steps = handleScenario(node, child.getScenario());
            }
            handleSteps(pw, l + 1, node, steps);
            if (child.hasBackground()) {
                l++;
            }
        }
    }

    private static void handleSteps(PrintWriter pw, int l, Hierarchy<GeneratedMessageV3> node, List<Step> steps) {
        printHeading(pw, l, node);
        String description = node.getDescription();
        if (!StringUtils.isBlank(description)) {
            pw.printf("%s%n", description);
        }
        pw.println();
        for (Step step: steps) {
            String keyword = null, delim = "";
            switch (step.getKeyword()) {
            case "Given ":
                keyword = "GIVEN";
                break;
            case "When ":
                keyword = "WHEN";
                break;
            case "Then ":
                keyword = "THEN";
                break;
            case "And ":
                keyword = "AND";
                delim = "   ";
                break;
            case "But ":
                keyword = "BUT";
                break;
            case "* ":
                pw.printf("  * %s%n%n", step.getText());
                continue;
            default:
                error(null, "Unknown keyword %s", step.getKeyword());
                continue;
            }
            pw.printf("%s%s%n%s: %s%n%n", delim, keyword, delim, step.getText());
        }
    }

    private static List<Step> handleScenario(Hierarchy<GeneratedMessageV3> node, Scenario scenario) {
        node.setTitle(scenario.getKeyword() + ": " + makeTitle(scenario.getName()));
        node.setDescription(scenario.getDescription());
        scenario.getTagsList().forEach(t -> node.addTag(t.getName()));
        return scenario.getStepsList();
    }

    private static void handleRule(PrintWriter pw, int l, Hierarchy<GeneratedMessageV3> node, Rule rule) {
        node.setTitle(rule.getKeyword() + ": " + makeTitle(rule.getName()));
        node.setDescription(rule.getDescription());
    }

    private static List<Step> handleBackground(Hierarchy<GeneratedMessageV3> node, Background background) {
        node.setTitle(background.getKeyword() + ": " + makeTitle(background.getName()));
        node.setDescription(background.getDescription());
        return background.getStepsList();
    }

    private static Map<String, String> tagToIcon = new HashMap<>();
    static {
        tagToIcon.put("app", "phone");
        tagToIcon.put("device", "dashboard");
        tagToIcon.put("infra", "cloud");
    }
    private static String getTagIcons(List<String> list) {
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder b = new StringBuilder();
        for (String tag: new TreeSet<String>(list)) {
            String icon;
            String tagName = StringUtils.substringBefore(tag, "-");
            String reqLevel = StringUtils.substringAfter(tag, "-");
            if (reqLevel.equalsIgnoreCase("shall")) {
                reqLevel = "success";
            } else if (reqLevel.equalsIgnoreCase("should")) {
                reqLevel = "info";
            } else {
                reqLevel = null;
            }
            icon = tagToIcon.get(tagName.substring(1).toLowerCase());

            if (icon != null) {
                if (reqLevel != null) {
                    icon = String.format("<span class='glyphicon text-%s glyphicon-%s'/> ",
                        reqLevel, icon);
                } else {
                    icon = String.format("<span class='glyphicon glyphicon-%s'/> ", icon);
                }
                b.append(icon);
            } else {
                warn(null, "Unrecognized tag '%s'", tag);
            }
        }
        return b.toString();
    }

    private static void report(boolean isError, File input, String format, Object... args) {
        System.err.printf((isError ? ++errors : ++warnings) + ") " + input + ": " + format + "%n", args);
    }

    private static void error(File input, String format, Object... args) {
        report(true, input, format, args);
    }

    private static void error(PrintWriter pw, File input, String format, Object ...args) {
        error(input, format, args);
        // Force broken links for errors and warnings.
        pw.printf("[<span class='text-danger'>"  + input.getPath() + ": " + format + "</span>](#error-" + errors + ")", args);
    }

    private static void warn(File input, String format, Object... args) {
        report(false, input, format, args);
    }

    private static void warn(PrintWriter pw, File input, String format, Object ...args) {
        warn(input, format, args);
        // Force broken links for errors and warnings.
        pw.printf("[<span class='text-danger'>" + input.getPath() + ": " + format + "</span>](#warning-" + warnings + ")", args);
    }


}
