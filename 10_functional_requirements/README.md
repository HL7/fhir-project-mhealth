# Authoring Requirements
This folder is the root of all functional requirements recorded in this guide.

Requirements are stored as .feature files in this folder and it's subfolders.
Folders should either contain .feature files or subfolders, but not both.

## Description
All folders should contain a Description.md file (case of the filename doesn't matter) which
describes the category.  The first sentence should explain the purpose of this category.
That sentence will appear in index pages of the parent category.  The sentence must
end with a period (.).

The remaining text can contain any Markdown and will be included at the top of the page
describing all the features, before the feature index.

## Categories
A folder with subfolders collects subcategories into a larger category,
and will be named according to the folder name, with _ replaced by spaces.
Category folders should be ordered by prepending them
with a 1- or 2-digit number which will be used to craft the output filenames and help
keep material in order in the ig-data\input\pagecontent folder

## Feature Sets
A folder with .feature files is a category that is made up of a set of features,
where each feature is described by the feature file.  The feature names are crafted
from the feature file names.  These names should be ordered by prepending them
with a 1- or 2-digit number which will be used to craft the output filenames and help
keep material in order in the ig-data\input\pagecontent folder.

### Feature Files
Feature files are written in [Gherkin](https://cucumber.io/docs/gherkin/reference/),
a domain specific language for defining features.

The Gherkin [Tags](https://cucumber.io/docs/cucumber/api/?sbsearch=Tags#tags) in the
feature file identify which systems (device, app, or infrastructure) the feature (or
rules or scenarios contained with it) to which the construct applies, and the level
of requirement (SHALL or SHOULD).

* @App-Shall  A SHALL requirement for an app
* @Infra-Should A SHOULD requirement for infrastructure
* @Device-Shall A SHALL requirement for a device

Features should have short names. These are used as headings.
A feature should be followed by a one line sentence containing SHALL/SHOULD/SHALL NOT/SHOULD
NOT keywords. These keywords will be appropriately highlighted in the resulting text.
Case does NOT matter.

Given/When/Then statements must fit on a line.


