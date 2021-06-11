@Device @App @Infra
Feature: Heart Rate Measurement
The system shall be able to capture and report additional data used for clinical interpretation.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Report Measurement Site
The measurement site shall be able to be reported with each heart rate measurement

Given a <System> that can report heart rate
When a <Heart Rate> measurement is performed
Then the <Measurement Site> can be associated with the <Heart Rate>  [[Observation#HeartRate#HeartRateMeasurementSite: obeys component.where(code = LOINC#8885-6).exists()]]

