@Device @App @Infra
Feature: Clinical Respiration Rate Measurement
The system shall be able to capture and report additional data used for clinical interpretation.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Report Measurement Site
The measurement site shall be able to be reported with each respiration rate measurement.

Given a <System> that can report respiration rate
When a <Respiration Rate> measurement is performed
Then the <Measurement Site> can be associated with the <Respiration Rate> [[Observation#RespirationRate#RespirationRateMeasurementSite: bodySite 1..1, bodySite from http://hl7.org/fhir/ValueSet/body-site  ]]

