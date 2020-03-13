This section should provide a more detailed discussion of the IG.  This should contain more detailed information from the PSS.

### Technical Environment
Describe the devices, systems, components, et cetera, in reader friendly terms that describes the eco-system which this guide is meant to serve.

### Approach
The approach taken in this guide is to establish sets of requirements in various categories,
and to associate those requirements with the different [Actors](actors.html) and levels
of conformance (SHALL vs. SHOULD).

#### Categories
Categories provide a means to group requirements functionally, and also allow groups
of requirements to be broken up in ways that allow for different levels of functionality
to be provided for different use cases.

For example, the basic requirements for tracking blood pressure are generally to record
the systolic and dyastolic results in mm of Mercury.  However, information about the
position in which the reading was taken (e.g., sitting/standing), the amount of recent
physical activity, and the body site where the blood pressure was taken (e.g., left wrist,
right arm) can provide clinicians using the data with more information in order to correctly
interpret it.  The use of categories allows one category to cover the minimum necessary
requirements for measuring blood pressure, and another to have stronger requirements
about additional data or observations to be captured with the results.

This guide therefore divides these measures up into a basic and clinical subcategory,
which allows systems to be assessed based on whether they meet each of thse requirements.

#### Assessment and Reporting
This guide further describes the method by which the actors are assessed, documents
the steps of the assessment in human readable language that can also be processed by
computer systems to automate certain forms of assessment testing.

Finally, this guide establishes the data that must be included in an assessment report.
This enables assessments from different performers to be compared against each other.