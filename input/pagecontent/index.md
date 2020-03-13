
The purpose of this implementation guide is document the functional requirements
that can be used to assess devices, applications, and FHIR profiles to ensure that
the essential data needed for clinical, patient and research uses is present in
communications between applications.

Mobile apps and devices usually provide their own APIs and methods for collecting device
data that can be communicated to EHR, PHR and research endpoints. Much of this data
can (and has been) readily converted to FHIR resources. However, limits have
been encountered which demonstrate that essential data needed to generate, interpret
and use the FHIR resources is often missing. This has demonstrated the need to develop
an implementation guide describing the functional requirements of such systems in
the mobile health environment.

### Document Organization
This document is organized into three main sections:

1. Overview

   This section provides:
   * An [Introduction](introduction.html) to the mHealth ADE Project, it's audience, scope of work, conventions used, contributors
     and glossary for this guide,
   * An [Overview](overview.html) of the challenges this guide is trying to solve,
   * Describes the four key [Use Cases](use_cases.html) associated with this implementation guide, and
   * Describes the [Actors](actors.html) (systems and users) that are affected by this implementation guide,
     and their roles and responsibilities.

2. Using the Guide

   This section explains:

   * how implementers, users and assessors of solutions can [Use This Guide](using_this_guide.html),
     to facilitate integration of mobile health devices and applications into their health
     information technology solutions; and

   * how they can communicate [Conformance](conformance.html) claims to it.

3. Requirements

   This section provides:

   * the [Functional Requirements](functional_requirements.html) against which
   a device, system, or implementation specification can be assessed, and

   * Provides FHIR [Resource Profiles](resource_profiles.html) against which
   FHIR Resources, Profiles and Implementation guides can be assessed for conformance.

   > NOTE: These profiles are provided to enable the automated computation of assessments
   > of these requirements against published specifications.  They are not generally intended
   > for use as profiles that support the requirements of exchange in clinical settings.

   > Existing profiles, such as the [FHIR Use Core](https://www.hl7.org/fhir/us/core/) and the
   > [Observation Vital Signs Profile](https://www.hl7.org/fhir/observation-vitalsigns.html)
   > should be used for these purposes.


Click on any of the links above, head on over the [table of contents](toc.html),
or if you are looking for a specific artifact including sample resources,
check out the [Artifact Index](artifacts.html).

### Downloads
You can also download:
* [This entire guide](full-ig.zip);
* The definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip),
  [ttl](definitions.ttl.zip), or [csv](csvs.zip) format; or
* The example resources in [json](examples.json.zip), [xml](examples.xml.zip) or
  [ttl](examples.ttl.zip) format.
