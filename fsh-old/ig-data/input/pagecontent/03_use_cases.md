This section describes how the App Data Exchange Assessment Framework in this implementation guide enables
the assessment of mobile health devices, apps, infrastructure and accompanying specifications. Additionally, it describes the various use cases the implementation guide is intended to support.

### Assessment Framework Use Cases
The use cases below describe how the framework described in this IG enables assessment
and selection of devices, apps, and infrastructure to support exchange of data in mobile health solutions.

#### Performing an Assessment of a Mobile Health Device, App or Infrastructure
Provider and developer organizations developing Mobile Health solutions need to assess existing devices,
apps and/or infrastructure (including existing EHR or PHR systems) in order to successfully
deploy these solutions.

**Preconditions**
* The organization has identified multiple devices, apps or infrastructure systems as the systems
  under test (SUT) to assess.
* The organization identifies specific criteria from this guide that it considers to
  be important to the success of the project.

**Steps**
* For each identified SUT, it is assessed against SHALL and SHOULD requirements of this guide.
* Assessments are reported to the organization.
* The organization selects a specific system based on the criteria in this guide.

**Postcondition**
* The device, app, or infrastructure system that most closely meets the organization's
  requirements has been identified.

##### Assessing at Different Levels and Categories
Extending from the use case above, different organizations will have different
requirements that are important to them. To support this, the guide enables providers
to base their assessments on their specific needs.

Specific categories include both Basic and Clinical Data Collection capabilities, the
ability to include additional manual inputs from the user, specific kinds of measurements
to be collected (e.g., weight, blood pressure, physical activity, et cetera).

**Preconditions**
* The provider organization can select specific functional areas (categories) that are important to them.
* The provider organization identifies the specific functional areas (categories) that are important to them.

**Steps**
* The assessments to be performed are selected from functional categories in this guide.

**Postcondition**
• The provider organization continues to assess if the chosen functional areas (categories) meet their needs.

#### Performing an Assessment of an IG or other Specification
Systems to be assessed may already claim and be verified as conforming to a specific
implementation guide and/or other specification. Some specifications may ensure conformance to some or part of the providers requirements and, thus, require only assessment of the remaining gaps. In this case, an assessment of a specification can be performed to enable a provider to identify the gaps that need to be assessed.

**Preconditions**
* A specification or Implementation Guide exists for which a selected device has been
  verified to be conformant.

**Steps**
* The specification is assessed against the requirements of this guide.
* The minimum and maximum level of conformance supported by that specification is reported.

**Postcondition**
* The organization can determine whether or not a system conforming to that
  specification can meet their requirements.
* The organization can determine the gap between what is minimally supported by the
  specification, and what may need additional work.

#### Reporting of Assessment Results
Organizations are able to "score" results from multiple categories to enable an aggregate
score to be computed and used for evaluation and selection.

**Precondition**
* An organization can select two or more categories to assess a system against.

**Steps**
* The system is assessed against those categories.
* The results from those assessments are aggregated into a singular score.

**Postconditions**
* The singular score is produced against which further evaluation and selection can
  be performed.

### Use Cases Functional Requirements in this Guide
The high-level use cases below demonstrate the kinds of exchange that the functional
requirements of the implementation guide support. These use cases provide functional requirements the
guide supports, and, therefore, they are not described in further detail.

#### Capturing Routine Weight Measurement
A Health Care Provider wishes to capture routine weight measurement data to monitor
patients with Congestive Heart Failure (CHF). This IG will help providers to assess
certain aspects of devices, apps and infrastructure to help determine those that
may meet their needs when developing a program to support monitoring and communications
of weight data to their EHR system.

#### Glucose Monitoring (w/ manual Insulin Dose reporting)
Patients with Diabetes taking insulin are directed to routinely journal information
about their blood sugar levels and insulin dose. Healthcare providers may periodically
review these journals. A healthcare provider wishing to capture this data automatically 
can assess devices regarding capabilities to support this data capture, and can also 
determine the degree to which it supports the provider’s insulin dosing recommendations based on
blood sugar level.

This IG will help providers to assess additional manual data capture enabled by the mobile
health device or app and understand how the these may be configured to support the provider’s
treatment recommendations.

#### Communicating Vital Signs, including Blood Pressure
Blood pressure measurements can be captured for a number of different purposes.  The
American Medical Association (AMA) has
[recommendations for self-measured blood pressure](https://www.ama-assn.org/system/files/2020-06/7-step-smbp-quick-guide.pdf)
and [collection of data](https://www.ama-assn.org/system/files/2020-11/smbp-recording-log.pdf).

#### Recording Physical Activity
Monitoring of physical activity, including sleep, is an important component for monitoring
treatment for certain conditions.  This data is still in the early stages
of collection and use, and experience using it is limited. This guide only addresses
basic requirements for this data.
