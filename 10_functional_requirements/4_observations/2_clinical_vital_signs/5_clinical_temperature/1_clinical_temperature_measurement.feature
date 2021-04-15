@Device @App @Infra
Feature: Temperature Measurement
The system shall be able to capture and report additional data used for clinical interpretation.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Report Measurement Site
The measurement site shall be able to be reported with each heart rate measurement

Given a <System> that can report temperature
When a <Temperature> measurement is performed
Then the <Measurement Site> can be associated with the <Measurement>



