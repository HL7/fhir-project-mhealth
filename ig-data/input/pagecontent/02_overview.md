The functional framework use by this guide is based upon current approaches used in
industry to describe product features, execute on their development and verify the
functionality of these product.

### Approach
This guide describes the technical environment for products, establishes sets of
requirements in categories of interest to the product audience, identifies conformance
levels (SHALL vs. SHOULD) for requirements, associates requirements with the
different [Actors](actors.html).

These requirements are written in the [Gherkin](https://cucumber.io/docs/gherkin/reference/) Language
and transformed into the guide content.

#### Technical Environment
The technical environment for mobile health includes sensors embedded in wearables and
devices, applications running on smart phones or wearable devices, or on a users personal
computer, and infrastructure that supports it, often providing data repository services
and APIs that enable additional data access to other third parties, and apps from those
third parties.  This guide classifies these into four groups:

1. Device - The device containing the sensor.
2. App - The software running on a users personal computing device (including phone
or tablet).
3. Data Repository - The software and systems providing storage and APIs (usually cloud
based) to access data generated.
by either the sensor or the App.
4. Data Consumer - Other (usually third party) applications which interact with the
Data Repository.

These are described in more detail in the section on [Actors](actors.html)

#### Categories
Categories provide a means to group requirements functionally while also allowing groups
of requirements to be broken up in ways that allow different levels of functionality
to be provided for different use cases.

For example, the basic requirements for tracking blood pressure are generally to record
the systolic and diastolic results in mm of Mercury (mmHg).  However, information about the
position in which the reading was taken (e.g., sitting or standing), the amount of recent
physical activity, and the body site where the blood pressure was taken (e.g., left wrist,
right arm) provide clinicians using the data with more information in order to correctly
interpret it.  The use of categories allows one category to cover the minimum necessary
requirements for measuring blood pressure, and another to have stronger requirements
about additional data or observations to be captured with the results.

Therefore, this guide divides measures into a basic and a clinical subcategory,
which allows systems to be assessed based on whether they meet each of these requirements.

#### Assessment and Reporting
This guide further describes the method by which the actors are assessed and documents
the assessment steps in both human-readable language and machine-readable language to to enable computer systems to automate certain forms of assessment testing.

Finally, this guide establishes the data that must be included in an assessment report.
This enables assessments from different performers to be compared against each other.

Further details can be found on assessment and reporting can be found in the section
on [Conformance](conformance.html).