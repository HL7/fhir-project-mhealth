@Device @App @Infra
Feature: Heart Rate Measurement
The system shall be able to capture and report a heart rate measurement from the user.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Capture and Report Heart Rate Measurement

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Heart Rate> of that <User>
 When the <System> is operational
 Then the device can capture a <Measurement> in the <System> associated with <User> that contains that user's <Heart Rate>
  And that <Measurement> has units that are beats / minute
  And the precision of that <Measurement> is to the unit of at least whole beats.

@App-Should @Infra-Should
Scenario: LOINC Coded Heart Rate Measurement
The system should provide LOINC codes along with measurements.

  Given a <Measurement> of blood pressure
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Blood Pressure
    And that <LOINC Code> is 8480-6 Systolic blood pressure or 8462-4 Diastolic blood pressure

@App-Should @Infra-Should
Scenario: UCUM Coded Heart Rate Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of Heart Rate
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is '/min' (per minute)
    And that <UCUM Unit Code> may include a UCUM comment (e.g. '{beat}/min' or '{beats}/min')