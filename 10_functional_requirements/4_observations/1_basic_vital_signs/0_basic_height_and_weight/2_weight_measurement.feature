@App-Shall @Infra-Shall
Feature: Weight Measurement
The system shall be able to capture and report a weight measurement from the user.

@App-Shall @Infra-Shall
Scenario: Capture and Report Weight Measurement

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Weight> of that <User>
 When the <System> is operational
 Then the <Device> can capture a <Measurement> in the <System> associated with <User>
  And that <Measurement> has units that are either kilograms, grams or pounds.
  And the precision of that <Measurement> is to the unit of at least a whole unit.

@App-Should @Infra-Should
Scenario: LOINC Coded Weight Measurement
The measurement should be coded in LOINC.
  Given a <Measurement> of height
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Weight
    And that <LOINC Code> is 29463-7 Body Weight


@App-Should @Infra-Should
Scenario: UCUM Coded Weight Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of weight
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is 'kg' (kilograms), 'g' (grams), or '[lb_av]' (pounds).

@App-Shall @Device-Shall
Scenario: Precision and units are appropriate for height
 The precision and units of a weight measurement shall be appropriate to the measurement.

Given A <System> (either a Device or an App)
  And a <Weight Measurement> that can be produced by <System>
 When <Weight Measurement> are examined
 Then The precision of <Weight Measurement> is in at least whole units and not more than tenths of a unit
