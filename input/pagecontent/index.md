<!-- index.md {% comment %}
*****************************************************************************************
*                            WARNING: DO NOT EDIT THIS FILE                             *
*                                                                                       *
* This file is generated by SUSHI. Any edits you make to this file will be overwritten. *
*                                                                                       *
* To change the contents of this file, edit the original source file at:                *
* ig-data\input\pagecontent\index.md                                                    *
*****************************************************************************************
{% endcomment %} -->

The purpose of this implementation guide (IG) is to document the functional requirements and provide
a framework supporting App Data Exchange between mobile health devices, apps and other parts of the
Health IT Infrastructure (e.g., EHR, PHR, research).  The framework can be used to assess mobile health
devices, apps and FHIR profiles to ensure that essential data needed for clinical, patient and
research uses is present.  The framework can be used to assess mobile health devices, apps and FHIR
profiles to ensure that essential data needed for clinical, patient and research uses is present,
while preserving privacy preferences of patients and facilitating compliance with privacy and security
laws and policies.

Mobile health devices and apps usually provide their own APIs and methods for collecting device data and
communicating it to EHRs, Personal Health Record (PHRs) and research endpoints. Much of this data can
(and has been) readily converted to FHIR resources. However, limits have been encountered that
demonstrate that essential data needed to generate, interpret and use the FHIR resources is often
missing. Hence the need to develop an implementation guide describing the functional requirements
of such systems in the mobile health environment.

### Document Organization
This document is organized into three main sections:

1. Overview

   This section provides the following:
   * An [Introduction](introduction.html) to the mHealth ADE Project, its audience, scope of work, conventions used, contributors
     and a glossary of terms;
   * An [Overview](overview.html) of the key challenges this guide is trying to solve;
   * Descriptions for the four key [Use Cases](use_cases.html) associated with this implementation guide; and
   * Describes the [Actors](actors.html) (systems and users) that are affected by this implementation guide,
     and their roles and responsibilities.

2. Using the Guide

   * How [Conformance](conformance.html) claims can be communicated.

3. Requirements

   This section provides:
   * [Functional Requirements](functional_requirements.html) to assess
     a device, system, or implementation specification, and

   > NOTE: These profiles are provided to enable the automated computation of assessments
   > of these requirements against published specifications.  They are not generally intended
   > for use as profiles that support the requirements of exchange in clinical settings.
   > Existing profiles, such as the [FHIR US Core](https://www.hl7.org/fhir/us/core/) and the
   > [Observation Vital Signs Profile](https://www.hl7.org/fhir/observation-vitalsigns.html)
   > should be used for these purposes.


Click on any of the links above, head on over to the [table of contents](toc.html),
or if you are looking for a specific artifact including sample resources,
check out the [Artifact Index](artifacts.html).

### Downloads
You can also download:
* [This entire guide](full-ig.zip);
* The definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip),
  [ttl](definitions.ttl.zip), or [csv](csvs.zip) format; or
* The example resources in [json](examples.json.zip), [xml](examples.xml.zip) or
  [ttl](examples.ttl.zip) format.
