
Mobile apps and devices provide their own APIs and methods for collecting device data and
communicating it to an Electronic Health Record (EHR), Personal Health Record (PHR) and
research endpoints. Much of this data can (and has been) readily converted to FHIR resources.
However, some limits have been encountered that demonstrate that essential data needed to
generate, interpret and use the FHIR resources is sometimes missing. The purpose of this
implementation guide is to document the functional requirements that can be used to assess
mobile health devices, apps, and FHIR profiles to ensure that the essential data needed for
clinical, patient and research uses is present.

### Target Audience
The target audience for this document includes executive leaders, senior managers, and
development staff interested in integrating mobile health devices and apps into the health
care eco-system.

This includes:
* Members of organizations developing standards and/or regulations supporting these capabilities
  including:

    + Public Health Agencies
    + Quality Reporting Agencies
    + Regulators and Lawmakers

* Organizations developing or assessing the functionality of
    + Electronic Health Record (EHR) systems,
    + Personal Health Record (PHR) systems,
    + Patient Engagement solutions,
    + Mobile Health Devices, and
    + Mobile Health Apps or infrastructure.

* Healthcare Institutions using, purchasing, or connecting these systems to their
  EHR systems.

* Patients and organizations representing patients.

* Health Information Exchange (HIE) organizations facilitating such connections.

### Scope of Work
The scope of this project is to develop the assessment framework and functional requirements
for mobile health devices and apps to support the exchange of observations and other data in
support of consumer health monitoring. This project will focus on functional requirements of
mobile health devices, apps, and infrastructure regarding the observations and related
communication on the following data:

* Vital signs, including
    + height,
    + weight,
    + blood pressure,
    + O2 saturation,
    + respiration,
    + heart rate,
    + physical activity
    + sleep.

#### Out of Scope
This guide is focused on _functional_ requirements.  As such, it specifically leaves
out non-functional requirements addressing system performance and behavior.  The
[HL7 Consumer Mobile Health Application Functional Framework](https://cmhaff.healtheservice.com/Home/tabid/916/Default.aspx) specification addresses many of
these issues.

Out of scope items include:

* Privacy and Security - Devices and applications are expected to operate in a secure
  environment, but this specification provides no guidance in assessing privacy or security of these components.
  These issues are addressed separately in the HL7 Consumer Mobile Health Application Functional Framework (CMHAFF)
  Specification (https://cmhaff.healtheservice.com/Standard/ConformanceCriteria/ProductUsage/TabId/1074/Default.aspx)
  and in requirements provided by governmental agencies and regulatory bodies.
* Reliability, Accuracy and Precision - Devices and applications are expected to operate
  reliably and produce results with adequate precision and accuracy. However, this
  specification does not document how these are assessed.
* Performance, Scalability, Cost, Quality, et cetera.
* FHIR Profiles specifically intended for the purpose of exchange. The profiles
  in this guide are intended to be used as an aid to automate the computation of
  assessments against the requirements of this guide. Existing profiles, such as
  the [FHIR US Core](https://www.hl7.org/fhir/us/core/) and the
  [Observation Vital Signs Profile](https://www.hl7.org/fhir/observation-vitalsigns.html)
  should be used for these purposes.

### Document Conventions
This section explains the meaning of key words and other conventions and/or structures used in the document.

The phrases: **SHALL**, **SHOULD**, **MAY**, **SHALL NOT**, **SHOULD NOT**, **NEED
NOT**, when appearing in this document in **BOLD UPPERCASE** have the following meanings:

SHALL
: An absolute requirement for all implementations.

SHALL NOT
: An absolute prohibition against inclusion for all implementations.

SHOULD/SHOULD NOT
: A best practice or recommendation to be considered by implementers within the
context of their particular implementation; there may be valid reasons to ignore
an item, but the full implications must be understood and carefully weighed before
choosing a different course.

MAY/NEED NOT: This is truly optional language for an implementation; can be
included or omitted as the implementer decides with no implications.

The keywords above are similar to the [Conformance Language](https://www.hl7.org/fhir/conformance-rules.html#conflang)
used in HL7 FHIR and have the same meanings.

FHIR Resource names and field names will appear in text as `Resource`.  Field names
may be preceded by the encompassing resource as in `Resource.field` or may simply
appear on their own as `field` when the Resource can be understood from context.

### Acknowledgements
HL7 would like to thank the following individuals and organizations for contributing
to this effort.

**Individuals**
* [Keith W. Boone](https://www.linkedin.com/in/keithwboone/), MBI, Informatics Adept,
  Audacious Inquiry
* [Nathan Botts](https://www.linkedin.com/in/nathanbotts/), MA, PhD, Senior Study
  Director, Westat
* [Christina Caraballo](https://www.linkedin.com/in/christinacaraballo/), MBA, Director,
  Audacious Inquiry
* [Simona Carini](https://www.linkedin.com/in/simona-carini-1a0b265/), MS, Programmer/Analyst,
  UCSF
* [Gora Datta](https://www.linkedin.com/in/goradatta/), MS, CEO, CAL2CAL
* [Lawrence Garber](https://www.linkedin.com/in/larry-garber-1516129/), MD, Medical
  Director of Informatics, Reliant Medical Group
* [Matthew Graham](https://www.linkedin.com/in/matthew-graham-8623002b/), BS, Technical
  Specialist II, Mayo Clinic
* [Frank Ploeg](https://www.linkedin.com/in/flodurf/), Enterprise Architect, University
  Medical Hospital Groningen
* [Ida Sim](https://www.linkedin.com/in/ida-sim-b67b993/), MD, PhD, Co-Director,
  Informatics & Research Innovation, UCSF Clinical and Translational Sciences Institute

**Organizations**
* [US Office of the National Coordinator for Health IT](https://www.healthit.gov/)
* [US National Institutes of Health, All of Us Research Project](https://allofus.nih.gov/)
* [Open mHealth](https://www.openmhealth.org/)
* [Reliant Medical Group](https://reliantmedicalgroup.org/information-for-patients/research/)
* [Georgia Tech Research Institute](https://gtri.gatech.edu/)

### Glossary
> _"When I use a word," Humpty Dumpty said in rather a scornful tone, "it means just what I choose it to mean -- neither more nor less." - Lewis Carroll, Alice in Wonderland_

The purpose of this Glossary is to ensure that the words and phrases are properly understood
in the context of this guide. It is not an attempt to standardize these terms for general
use.

App
: Whether used alone, or with the adjective Mobile Health, App is simply a shortened
form of Application, but specifically means Mobile Health Application in the context
of this document.  A Mobile Health Application is one that can be accessed via a mobile
devices such as a smart watch, smartphone or tablet.  Such an App may also be accessible via
the Internet or a personal computer.

App Runner
: A system, such as a mobile phone, tablet, laptop computer or Web browser that runs
an App, or an instance of such a system.

Application
: In this guide, the term application refers to a collection of computer software that
provides some computing functionality to an end user. This functionality can be spread
across multiple computing devices or executed within a single computing device.
While all Apps are also applications according to this guide, not all applications
are considered to be Apps.

Assessor
: An assessor is one who measures. In the context of this guide, an assessor is an individual
or organization that measures how well a device, app, application, system or implementation
guide measures up against the criteria specified in this guide.

Mobile Computing Device
: Mobile computing devices are designed to be easily carried around (i.e., either worn
or carried in a possibly over-sized pocket), can perform general purpose computing on
behalf of a user, contain sensors that measure data about a user, and can connect wirelessly
to a network (e.g., via WiFi, Cellular, Bluetooth or other technology). The principal form
of input for a mobile device is generally a touch screen. These include devices such as
a smart watch, smartphone or tablet computer. Laptop computers (even 2-in-1 units)
are not considered in this guide to be a mobile computing device. While "mobile" in
the general sense, they cannot fit into an over-sized pocket easily and usually
rely on external keyboard input for certain tasks.  Laptops and other personal computers
are often used with mobile computing devices to access Apps (see above).

Mobile Device
: Mobile Devices include sensors that measure data about a user or their environment
and can connect to mobile (or other) computing devices.  Mobile computing devices are
considered mobile devices.

Mobile Health
: Mobile Health (mHealth) is often used as an adjective to describe devices, applications,
data repositories and other systems used with mobile computing devices such as a smart watch,
smartphone, or tablet and wireless networks (WiFi, Cellular, Bluetooth or other).

Regulated Health Device
: A regulated device is one that is subject to some form of regulatory health authority (e.g.,
in the US, the Food and Drug Administration (FDA)).  Devices may also be subject to
other regulation (e.g., if they contain a radio transmitter, they may be regulated by
the FCC, they may be regulated by authorities such as UL or CE), but in the context
of this guide, the term specifically addresses devices regulated by health authorities.

Software
: Software is a collection of computing instructions that tells a computing system
how to operate to perform some function. An application is a collection of software
components. This guide makes NO distinction between software and firmware (basically
read-only or unmodifiable software included in many computing devices). Today's computing
platforms include software known as a Basic Input Output System (BIOS) that in prior years was
not designed to be replaced or altered by the end-user. Most systems today use
some form of non-volatile memory to store this software, which was previously known
as "firmware" because it couldn't be easily changed (Note: It still can't be easily changed,
but that's another story).

SUT
: In conformity assessment, SUT is an acronym that means the _System Under Test_.  In
the context of this guide, other specifications or implementation guides may also be tested.

System
: A system is a collection of both hardware and software that provide computing capabilities
to an end user.  It is distinct from "application" in that it includes both the application
and the computing components, whereas "application" includes only the software components.

