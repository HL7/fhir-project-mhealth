
Mobile apps and devices provide their own APIs and methods for collecting device
data that can be communicated to EHR, PHR and research endpoints. Much of this data
can (and has been) readily converted to FHIR resources. However, some limits have
been encountered which demonstrate that essential data needed to generate, interpret
and use the FHIR resources is sometimes missing. The purpose of this implementation
guide is document the functional requirements that can be used to assess devices,
applications, and FHIR profiles to ensure that the essential data needed for clinical,
patient and research uses is present in communications between applications.

### Target Audience
The target audience for this document includes executive leaders, senior managers,
and development staff interested in integrating mobile health devices into the health
care eco-system.

This includes:
* Members of agencies developing standards or regulation supporting these capabilities
* Organizations developing
    + Electronic Health Record (EHR),
    + Personal Health Record (PHR),
    + Patient Engagement,
    + Mobile Health Devices, and
    + Mobile Health Apps
* Healthcare Institutions using, purchasing, or connecting to these systems to their
  EHR systems.
* Health Information Exchange organizations facilitating such connections.

### Scope of Work
The scope of this project is to develop the assessment framework and functional requirements
for consumer medical devices and applications required to support the exchange of
observations and other data in support of consumer health monitoring. This project
will focus on Observation resources related to vital signs (height, weight, blood
pressure, O2 saturation, respiration and heart rate), and physical activity.

### Document Conventions
Explains Meaning of key words and other conventions or structures used in the document.

### Document Organization
[Overview](overview.html)
: Provides an overview of the challenges this implementation guide is trying to solve
and describes the technical environment and approach it uses to address these challenges.

[Use Cases](usecases.html)
: Describes the four key use cases associated with this implementation guide.

[Actors](actors.html)
: Describes the systems and users that are affected by this implementation guide, and
their roles and responsibilities.

[Using This Guide](usingthisguide.html)
: Explains how implementers of solutions conforming to this guide, users of those systems,
and assessors of those systems can use this guide to facilitate integration of mobile
health devices and applications into their health inforamation technology solutions.

[Conformance](conformance.html)
: Explains how to assert or communicate conformance to this guide.

[Functional Requirements](functionalrequirements.html)
: Provides the functional requirements against which a device, system, or implementation
specification can be assessed.

[Resource Profiles](resourceprofiles.html)
: Provides FHIR Resource profiles against which FHIR Resources can be assessed for conformance.

[Sample Resources](sampleresources.html)
: Provides example FHIR Resources conforming to the profiles in this guide.

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

### Downloads
You can also download:
* [This entire guide](full-ig.zip);
* The definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format; or
* The example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

### Acknowledgements
HL7 would like to thank the following individuals and organizations for contributing
to this effort.

**Individuals**
* [Ida Sim](https://www.linkedin.com/in/ida-sim-b67b993/), MD, PhD, Co-Director, Informatics & Research Innovation, UCSF Clinical and Translational Sciences Institute
* [Simona Carini](https://www.linkedin.com/in/simona-carini-1a0b265/), MS, Programmer/Analyst, UCSF
* [Keith W. Boone](https://www.linkedin.com/in/keithwboone/), MBI, Informatics Adept, Audacious Inquiry
* [Christina Caraballo](https://www.linkedin.com/in/christinacaraballo/), Director, Audacious Inquiry
* [Nathan Botts](https://www.linkedin.com/in/nathanbotts/), MA, PhD, Senior Study Director, Westat
* [Gora Datta](https://www.linkedin.com/in/goradatta/), MS, CEO, CAL2CAL
* [Frank Ploeg](https://www.linkedin.com/in/flodurf/), Enterprise Architect, University Medical Hospital Groningen
* [Matthew Graham](https://www.linkedin.com/in/matthew-graham-8623002b/), BS, Technical Specialist II, Mayo Clinic
* [Lawrence Garber](https://www.linkedin.com/in/larry-garber-1516129/), MD, Medical Director of Informatics, Reliant Medical Group

**Organizations**
* [US Office of the National Coordinator for Health IT](https://www.healthit.gov/)
* [US National Institutes of Health, All of Us Research Project](https://allofus.nih.gov/)
* [Open mHealth](https://www.openmhealth.org/)
* [Reliant Medical Group](https://reliantmedicalgroup.org/information-for-patients/research/)
* [Georgia Tech Research Institute](https://gtri.gatech.edu/)

