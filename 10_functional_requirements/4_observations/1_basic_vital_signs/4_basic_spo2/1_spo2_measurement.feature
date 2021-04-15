@Device @App @Infra
Feature: Oxygen Saturation Measurement
The system shall be able to capture and report a Oxygen Saturation measurement from the user.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Capture and Report Oxygen Saturation Measurement

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Oxygen Saturation> of that <User>
 When the <System> is operational
 Then the device can capture a <Measurement> in the <System> associated with <User> that contains that user's <Oxygen Saturation>
  And that <Measurement> has units that are %
  And the precision of that <Measurement> is to the unit of at least whole unit.

@App-Should @Infra-Should
Scenario: LOINC Coded Oxygen Saturation Measurement
The system should provide LOINC codes along with measurements.

  Given a <Measurement> of Oxygen Saturation
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Oxygen Saturation
    And that <LOINC Code> is 2710-2 Oxygen Saturation

@App-Should @Infra-Should
Scenario: UCUM Coded Oxygen Saturation Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of oxygen saturation
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is '%'

@App-Shall @Device-Shall
Scenario: Precision and units are appropriate for oxygen saturation
 The precision and units of an oxygen saturation measurement shall be appropriate to the measurement.

Given A <System> (either a Device or an App)
  And a <Oxygen Saturation Measurement> that can be produced by <System>
 When <Oxygen Saturation Measurement> are examined
 Then The precision of <Oxygen Saturation Measurement> is in at least whole units and not more than tenths of a unit.