@Device @App @Infra
Feature: Respiration Rate Measurement
The system shall be able to capture and report a respiration rate measurement from the user.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Capture and Report Respiration Rate Measurement

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Respiration Rate> of that <User>
 When the <System> is operational
 Then the device can capture a <Measurement> in the <System> associated with <User> that contains that user's <Respiration Rate>
  And that <Measurement> has units that are breaths / minute
  And the precision of that <Measurement> is to the unit of at least whole breaths.

@App-Should @Infra-Should
Scenario: LOINC Coded Respiration Rate Measurement
The system should provide codes along with measurements.

  Given a <Measurement> of respiration rate
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Respiration Rate
    And that <LOINC Code> is 9279-1 Respiratory Rate

@App-Should @Infra-Should
Scenario: LOINC Coded Respiration Rate Measurement
The system should provide LOINC codes along with measurements.

  Given a <Measurement> of respiration rate
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Respiration Rate
    And that <LOINC Code> is 8480-6 9279-1  Respiratory Rate

@App-Should @Infra-Should
Scenario: UCUM Coded Respiration Rate Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of respiration rate
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is '/min' (per minute)
    And that <UCUM Unit Code> may include a UCUM comment (e.g. '{beat}/min' or '{beats}/min')