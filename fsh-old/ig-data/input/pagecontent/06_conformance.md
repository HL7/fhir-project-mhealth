This section describes how an [Actor](actors.html) should be assessed for conformance to this guide.

The assessment framework provided by this IG enables HL7 Workgroups, provider organizations, professional societies,
health information exchanges and other kinds of programs to perform assessments on mobile health devices, and establishes
a common framework for understanding those assessments.  Smaller provider organizations might not be able to perform
assessments, but could take advantage of assessments provided by others.

### Approach
The conformity assessment must be readily reproducible across different assessors. It should be measurable
against each requirement and groups of requirements functional areas and/or
categories. However, pass/fail conformity assessment (e.g., as is done for UL Listed
or CE Mark) is generally insufficient when there is great diversity in end-user requirements.
This guide takes the approach that there are multiple levels of "conformance",
as has been done with other specifications.

Some Internet Engineering Task Force (IETF) specifications (known as Requests for Comments or RFC) have
distinguished between conforming and fully conforming to the specification. A conforming system implements
all SHALL requirements, but a fully conforming system implements all SHALL and SHOULD
requirements. The distinction is useful. It shows up in a few commonly used RFCs, but
is not common.

This guide describes a user-friendly stars rating system based on an ordinal scale of 1 to 5.
Unlike some stars rating systems that use aggregated ratings of
subjective assessors, this guide defines a rating system based on objective
criteria readily reproduced by different assessors.

#### Scoring
This section explains the scoring metrics
where 0 stars is fully non-conforming, 1 star meets some requirements,
2 stars meets most of the requirements, 3 stars meets all required criteria,
4 stars meets all required criteria and some degree of recommended criteria,
and 5 stars meets all required criteria, and most or all of the recommended criteria.

> <span class="glyphicon stars0" aria-hidden="true">
> : (0 stars) The device or system under test (SUT) does not meet any **SHALL** criteria.
>
> <span class="glyphicon stars1" aria-hidden="true">
> : (1 star) The SUT meets some (but not most) of the **SHALL** criteria.
>
> <span class="glyphicon stars2" aria-hidden="true">
> : (2 stars) The SUT meets most of the **SHALL** criteria.
>
> <span class="glyphicon stars3" aria-hidden="true">
> : (3 stars) The SUT meets all of the **SHALL** criteria.
>
> <span class="glyphicon stars4" aria-hidden="true">
> : (4 stars) The SUT meets all of the **SHALL** criteria, and some (but not most) of the **SHOULD** criteria.
>
> <span class="glyphicon stars5" aria-hidden="true">
> : (5 stars) The SUT meets all of the **SHALL** criteria and most or all of the **SHOULD** criteria.


For the purposes of this guide, most is defined as 75% or more of the requirements, rounding down (truncating)
to the nearest integer.

**NOTE:** Ratings above are related to conformance to the requirements in this guide,
and do not address non-functional requirements such privacy / security, or device accuracy.  Privacy
and Security requirements can be assessed using other specifications, such as the
[HL7 Consumer Mobile Health Application Functional Framework](https://cmhaff.healtheservice.com/Standard/ConformanceCriteria/ProductUsage/TabId/1074/evl/0/Default.aspx).
Accuracy requirements can be assessed via Device validation programs, such as
the [Validated Device Listing](https://www.validatebp.org/).

### Assessing Conformance
Each feature is individually measured on a pass/fail basis for a SUT and includes
one or more scenarios containing GIVEN/WHEN/THEN statements describing how to perform
the test.  Only **SHALL** and **SHOULD** criteria used in this assessment.  Criteria
using **MAY** or **NEED NOT** may be present to clarify allowed behavior and describe
optional behaviors for which there is no value judgment. These criteria are often
provided to clarify to implementors nuances that might be confusing without further
explanation.

Features, Rules and Scenarios are referred to collectively as requirements.

A feature can have one or more rules or scenarios.  Rules will have one or more scenarios.
Each scenario represents an individual test.  If the test fails, the enclosing rule
and/or feature fails.  A feature fails if one or more of its applicable tests fails.

Requirements are applicable to Apps, Devices or Infrastructure based
on the presence of the @App, @Device or @Infra tags in the requirement.
When a requirement begins with **IF** this is a precondition that must be true
for the requirement to be applicable.  For example, an App may allow for
manual entry of data.  When it does, there are certain requirements that
become applicable.

Only applicable tests are performed, and only applicable features are reported in a
result.

#### Conformance Testing Results
The results of conformance testing for a given SUT include:

* A description of the SUT, including device identifiers, software versions, et cetera.
* The collection of requirement categories that were tested.
* The pass/fail/not-tested status for each requirement in those categories.

##### Applicable Requirements
Applicable test requirements are those which provide a **SHALL** or **SHOULD** requirement
for the type (device, application or infrastructure) of system under test.

##### Untested Requirements
There are requirements on devices to be able to report blood pressure, heart rate,
and respiration rate. However, these three observations are not reported by all devices,
and aren't always needed for every use case.  Thus, a clinic evaluating devices for use
in blood pressure monitoring may elect to Not Test a device against the sub-category
containing requirements on respiration rate.  The test need not be performed in these
cases.

When reporting an assessment result, only categories that have been fully tested can be reported on.
In these cases, and categories with untested subcategories and untested subcategories **SHALL** only be
reported as not fully tested, and no star rating **SHALL** be provided for them. This is shown in the
example [below](#untested).


<span id='assessment'/>
#### Conformance Testing Assessments
The purpose of this guide is to provide a list of core functionalities for clinical utility for
which the presence of the function can be tested, and a means by which this can be assessed
and reported to providers.

As in laboratory diagnostics, tests provide objective evidence. The pass/fail status for each
requirement are the tests.  Assessments perform computations on those results to enable
interpretation of test results. The 0-5 star rating of a system described by this guide
is the assessment.

The procedure for computing assessments is as follows.  For a group of requirements
(e.g., a category or sub-category):

1. Count the number of **SHALL** and **SHOULD** requirements that pass.  Note that **SHOULD**
requirements are still counted even if they cannot contribute to a higher score for
this category.  They may improve the results for the SUT when aggregated up to a higher
category.
2. If the number of passed **SHALL** requirements in the group is:
   * 0 - The group gets 0 stars; the assessment for this group is finished.
   * \> 0 but < 50% - The group gets 1 star; the assessment for this group is finished.
   * \>= 50% but < 100% - The group gets 2 stars; the assessment for this group is finished.
   * 100% - The group gets at least 3 stars; and continues to step 3.
3. If there are no **SHOULD** requirements in this group of requirements, the group
   gets 5 stars, and the assessment is finished.
4. If the number of passed **SHOULD** requirements in the group is:
   * 0 - The group remains at 3 stars.
   * \> 0 but < 50% - The group gets 4 stars.
   * \>= 50% - The group gets 5 stars.

#### Assessment Result Reporting
To report the assessment, the following values **SHOULD** be provided:
* the names, models, and software versions of the app, device, and infrastructure
  components that were tested.
* the date of testing.
* The star ranking.
* The number of **SHALL** criteria met.
* The total number of **SHALL** criteria that are applicable for the device in that category.
* The number of **SHOULD** criteria met.
* The total number of **SHOULD** criteria that are applicable for the device in that category.
* Whether or not complete testing was performed for the device in the category.

These values provide the interpretation of the result (the star ranking) and allow
sub-category results to be aggregated upwards to category results. Assessments can be
computed at a category even when some of the sub-category tests have
not been performed. In this case, the testing for the category **SHALL** be recorded as being
incomplete (and this status will propagate upwards to the next category and so on).

##### Assessing Implementation Guides and Other Specifications
Technical specifications such as FHIR or CDA Implementation Guides, regulatory and other requirements,
and even clinical guidelines can be assessed against this guide. However, because these are specifications,
not systems, they require additional considerations when computing reporting assessments and results.
What is important for implementers of a specification is to be able to determine the
difference between what is minimally required, what can be supported with additional
effort, and what simply cannot be done.

Two sets of results must be computed and assessed.
The first set of results reports what the specification under test requires (the minimal
results). The second set of results reports what the specification allows (the maximal
results).  An assessment is reported for each of these possible results. The minimal
results show how the assessment would perform against an actual implementation conforming
to the specification without any additional work.  The maximal results show how the assessment
would perform against an actual implementation that started off by conforming to the
specification being tested, but was augmented to ensure conformance to this guide.

Consider evaluating the [FHIR Observation Vital Signs](http://hl7.org/fhir/R4/observation-vitalsigns.html)
and the [American Medical Association (AMA) Integrated Health Model Initiative (IHMI) Observation Blood Pressure](https://simplifier.net/guide/MVBTestIG/AMA-IHMI-observation-blood-pressure-3) requirements,
against both the Basic and Clinical Blood Pressure Observation requirements of this
guide.

A FHIR Observation Resource conforming to either of these two guides will
get 5 stars when evaluated against the Basic Blood Pressure Observation.  One can
safely choose an implementation meeting either one and expect that it will meet those
requirements.

However, a FHIR Observation resource meeting only the minimum necessary requirements
of the FHIR Observation Vital Signs profile will NOT meet the requirements of the Clinical
Blood Pressure requirements of this guide, it will likely get 2 stars.  But, one conforming
to the AMA IHMI Observation Blood Pressure 3 requirements will meet the more stringent
guidelines in the Clinical Blood Pressure requirements (it will receive 3 or more stars).
Thus, if your application needs to meet the clinical blood pressure requirements of
this guide, and you have access to an implementation meeting the AMI IHMI Observation
Blood Pressure 3 requirements, then that should be the way to go (when other considerations
are not relevant).

Even so, the FHIR Observation Vital Signs profile does not prohibit one from creating
a FHIR Observation resource that also conforms to the Clinical Blood Pressure Observation
requirements of this guide.  The distance between these two represents a certain amount
of effort that must be expended to go that final step. That effort may need to be weighed
against the cost of acquiring an implementation supporting the more demanding profile.

Given two requirements S and G, where S describes the implementation guide being tested,
and G describes a scenario this guide:

The assessment results for the maximal case will always be at least as good as the assessment
results for the minimal case. Reporting both assessments enables users who may have access to
an implementation supporting S to also support G, and to assess how much additional work is
needed to make the output of the implementation of S to support G.

* Does one of the requirements of S prohibit what G requires in the scenario (or vice versa)?
If so, it is not possible to conform to both specifications at the same time. If this case is
true for any given scenario, the test for that scenario fails.
* Given a scenario in G, does it fulfill a requirement in S? If so, S enforces compliance with G,
and the scenario passes in both the minimal and maximal case.
* Given a scenario in G, is it not fulfilled by requirements in S? If so, S supports compliance
with G (it does not prevent compliance, but it does not enforce it either). In this case, the
scenario passes in the maximal case (where more work is done to ensure compliance), but fails
in the minimal case (just conforming to S does not enforce compliance).

<span id='reporting'/>
##### Reporting Display Recommendations
For a given criteria group in this guide, the reporting recommendations are as follows:

###### Reporting against a System
Display the category name, followed by a number of filled stars given by the assessment
ranking in gold (or light gray for B&W images).  Follow that by a number of open stars
outlined in black necessary to ensure that there are always 5 stars displayed.
After the stars, include four numbers reported in the following form:
{SHALL-passed}/{SHALL-total}+{SHOULD-passed}/{SHOULD-total}

Indent categories under subcategories if they are displayed in the same area.

An example report is given below:

<table class='grid' id='untested'>
  <tbody><tr>
<td class='invert'>
<dl>
  <dt>DEVICE</dt>
  <dd>Sample Device
  <dl class='default'><dt>Model</dt><dd>Prototype</dd>
      <dt>Software Version</dt><dd>0.9.0</dd>
  </dl>
  </dd>
</dl>
</td>
<td class='invert'>
<dl>
  <dt>APP</dt>
  <dd>Sample App
  <dl class='default'><dt>Model</dt><dd>Demo</dd>
      <dt>Software Version</dt><dd>0.0.7</dd>
  </dl>
  </dd>
</dl>
</td>
<td class='invert'>
<dl>
  <dt>INFRA</dt>
  <dd>Sample API Server
  <dl class='default'><dt>Model</dt><dd>Flint API Server</dd>
      <dt>Software Version</dt><dd>Steel 0.80</dd>
  </dl>
  </dd>
</dl>
</td>
</tr>
<tr>
<td colspan='3'>
<blockquote class="report">
  Physical Activity and Sleep <span class="glyphicon stars0" aria-hidden="true"></span> <b>Not Fully Tested</b><br/>
  <blockquote class="report">
    Physical Activity <span class="glyphicon stars0" aria-hidden="true"></span> <b>Not Tested</b><br/>
    Sleep <span class="glyphicon stars1" aria-hidden="true"></span> <b>(1 star)</b> 1/3+1/3<br/>
  </blockquote>
  Basic Vital Signs <span class="glyphicon stars3" aria-hidden="true"></span> <b>(2 stars)</b> 10/11+3/11<br/>
  <blockquote class="report">
    Basic SPO2 <span class="glyphicon stars3" aria-hidden="true"></span> <b>(3 stars)</b> 2/3+1/3<br/>
    Basic Respiration and Pulse <span class="glyphicon stars3" aria-hidden="true"></span> <b>(3 stars)</b> 3/3+0/3<br/>
    Basic Blood Pressure <span class="glyphicon stars4" aria-hidden="true"></span> <b>(4 stars)</b> 3/3+1/3<br/>
    Basic Height and Weight <span class="glyphicon stars5" aria-hidden="true"></span> <b>(5 stars)</b> 2/3+1/2<br/>
  </blockquote>
</blockquote>
</td>
</tr>
</tbody></table>

###### Reporting against a Specification
Display the category name, followed by a number of stars filled in gold (or light-gray
screen for B&W images) given by the minimal assessment ranking. Follow that by a number
of open stars in gold (or light-gray screen in B&W images) necessary to bring the
total up to the maximal assessment ranking (this may be 0). Follow that by a number
of open stars outlined in black necessary to ensure that
there are always 5 stars displayed. After the stars include four - six numbers
reported in the form:
{SHALL-min-passed}-{SHALL-max-passed}/{SHALL-total}+{SHOULD-min-passed}-{SHOULD-max-passed}/{SHOULD-total}

When min-passed and max-passed are the same value, they **SHOULD** be reported as a single
number.

Indent categories under subcategories if they are displayed in the same area.

An example report is given below:

<table class='grid'>
  <thead><tr><th colspan='2' class='invert'>IG Name</th></tr></thead>
  <tbody><tr>
<td class='invert'>
<dl>
  <dt>APP</dt>
  <dd><dl class='default'><dt>Actor</dt><dd>Client Actor Name</dd>
      <dt>Specification Version</dt><dd>IG R1</dd>
  </dl>
  </dd>
</dl>
</td>
<td class='invert'>
<dl>
  <dt>INFRA</dt>
  <dd><dl class='default'><dt>Model</dt><dd>Server Actor Name</dd>
      <dt>Specification Version</dt><dd>IG R1</dd>
  </dl>
  </dd>
</dl>
</td>
</tr>
<tr>
<td colspan='2'>
<blockquote class="report">
 Physical Activity and Sleep <span class="glyphicon stars1" aria-hidden="true"></span> <b>(1 star)</b> 1/6+2/6<br/>
  <blockquote class="report">
    Physical Activity <span class="glyphicon stars0" aria-hidden="true"></span> <b>(0 stars)</b> 0/3+1/3<br/>
    Sleep <span class="glyphicon stars1" aria-hidden="true"></span> <b>(1 star)</b> 1/3+1/3<br/>
  </blockquote>
  Basic Vital Signs <span class="glyphicon stars3-5" aria-hidden="true"></span> <b>(3-5 stars)</b> 10-11/11+4-9/11<br/>
  <blockquote class="report">
    Basic SPO2 <span class="glyphicon stars2-3" aria-hidden="true"></span> <b>(2-3 stars)</b> 2-3/3+1-3/3<br/>
    Basic Respiration and Pulse <span class="glyphicon stars3-5" aria-hidden="true"></span> <b>(3-5 stars)</b> 3/3+0-2/3<br/>
    Basic Blood Pressure <span class="glyphicon stars3-5" aria-hidden="true"></span> <b>(3-5 stars)</b> 3/3+1-3/3<br/>
    Basic Height and Weight <span class="glyphicon stars5" aria-hidden="true"></span> <b>(5 stars)</b> 2/2+1/2<br/>
  </blockquote>
</blockquote>
</td>
</tr>
</tbody></table>

NOTE: The colors of Gold and Black provide a color-blind safe palette.

##### Reporting for Untested Requirements
<span id='untested'> </span>
[Provide example](#todo)

#### Gherkin
[Gherkin](https://cucumber.io/docs/gherkin/reference/) describes a language that is used for testing
applications. The core of this language is made up of three keywords `GIVEN`, `WHEN` and
`THEN` and the conjunction `AND` structured into scenarios (or examples) to test a specific feature.

This guide describes a requirement using the Feature: keyword in Gherkin.

Requirements can further be broken down into specific business rules using the
Rule: keyword to describe a business rule under test.  When rules are used, if any rule
fails, the entire feature fails.

Each test is provided using the Scenario: keyword to describe how the feature can be
tested.

Descriptive text will follow the Feature, Rule, or Scenario to provide more detailed
information.  This guide uses Rationale: as a keyword to explain the reason why a particular
feature is important. Sometimes requirements are obvious, and include the rationale
for a particular requirement aids in communicating the need for a feature.

##### Keywords
The keywords have the following meanings:

GIVEN
: Establishes preconditions that are assumed to have been set up before the test is performed.
Multiple preconditions can be written on separate lines using the conjunction `AND`
at the start of the next line (and subsequent lines).


WHEN
: Specifies the trigger event that to be performed to initiate the test.


THEN
: Specifies the criteria that must be present after execution of the test (the post-conditions).
Again, multiple criteria can be conjoined with `AND` or to reverse the logic of the
condition `BUT`.

##### Applying requirements to Multiple Actors
This guide uses tags to identify the actors for which a feature is applicable. The
form of these tags is @{Actor-Name}[-{Shall|Should}]

When only the actor name is given, the feature has Shall and Should requirements and
these are described in more detail for rules or scenarios within the feature.

Specific rules or scenarios can also be marked with these tags to create rules specific
to the actors to which they are applied.

#### Example
An example requirement is provided below.

##### EX-1 Example Feature
@App @Device-Should

Feature: User data **SHALL** be hidden after a period of inactivity.

This example illustrates the form of a Functional Requirement. Each requirement will be recorded
as a feature in Gherkin. The heading preceding the requirement will provide the requirement
identifier and name.  Requirement identifiers are numbered in sequence, and are preceded
by a short mnemonic that identifies the requirement category.  This example requirement
has the identifier EX-1, and the name "Example Feature".
Rationale: User data should not be exposed when a user is not interacting with the device
or application. Hiding the screen prevents user data from being exposed.

Rule: A screen saver must be present that **SHALL** hide the user's data after a configurable
period of time has elapsed.


###### Scenario: Example Scenario

GIVEN
: the screen saver is configured to hide the screen after 5 minutes.

WHEN
: the time period has elapsed

THEN
: screen is hidden,

AND
: the user must reenter their password to resume work,

BUT
: the user is not logged out.

Rule: If the user does not configure the screen saver, then the
default timeout period **SHALL** be used.

###### Scenario: Default Scenario

GIVEN
: the screen saver has NOT been configured by the user

WHEN
: the default timeout period has elapsed

THEN
: screen is hidden,

AND
: the user must reenter their password to resume work,<br/>

BUT
: the user is not logged out.