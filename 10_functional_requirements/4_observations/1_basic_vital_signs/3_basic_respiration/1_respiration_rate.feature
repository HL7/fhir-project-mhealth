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
Scenario: UCUM Coded Respiration Rate Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of respiration rate
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is '/min' (per minute)
    And that <UCUM Unit Code> may include a UCUM comment (e.g. '{breath}/min' or '{breaths}/min')

@App-Shall @Device-Shall
Scenario: Precision and units are appropriate for heart rate
 The precision and units of a heart rate measurement shall be appropriate to the measurement.

Given A <System> (either a Device or an App)
  And a <Respiration Rate Measurement> that can be produced by <System>
 When <Respiration Rate Measurement> are examined
 Then The precision of <Respiration Rate Measurement> is in at least whole units and not more than tenths of a unit.