@Device @App @Infra
Feature: Oxygen Saturation Measurement
The system shall be able to capture and report additional data used for clinical interpretation.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Report Measurement Site
The measurement site shall be able to be reported with each heart rate measurement

Given a <System> that can report oxygen saturation
When a <Blood Pressure> measurement is performed
Then the <Measurement Site> can be associated with the <Measurement>

