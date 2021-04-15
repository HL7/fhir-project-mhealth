@Device @App @Infra
Feature: Clinical Respiration Rate Measurement
The system shall be able to capture and report additional data used for clinical interpretation.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Report Measurement Site
The measurement site shall be able to be reported with each heart rate measurement.  Typically respiration rate
is measured using a chest strap, but some devices are able to detect heart rate variability data using sensors on
a watch or other device.

Given a <System> that can report respiration rate
When a <Respiration Rate> measurement is performed
Then the <Measurement Site> can be associated with the <Respiration Rate>
