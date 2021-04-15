@App-Shall @Infra-Shall
Feature: Height Measurement
The system shall be able to capture and report a height measurement from the user.

@App-Shall @Infra-Shall
Scenario: Capture and Report Height Measurement

A system shall be able to record a user measurement of height.
Unlike other vital signs observations, there is no expectation that height is measured
by a device, rather, there is an expectation that such a measure would be manually entered.

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Height> of that <User>
 When the <System> is operational
 Then there is a <Measurement> in the <System> associated with <User> that contains that user's height
  And that <Measurement> has units that are either centimeters or inches.
  And the precision of that <Measurement> is to the unit of at least whole centimeters or inches.

@App-Should @Infra-Should
Scenario: LOINC Coded Height Measurement
The measurement should be coded in LOINC.
  Given a <Measurement> of height
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Height,
    And that <LOINC Code> is 8302-2 Body Height, or 8306-3 Body Height - Lying (for infant length)

@App-Should @Infra-Should
Scenario: UCUM Coded Height Units
The measurement should use units coded in UCUM.
  Given a <Measurement> of height
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is cm (centimeters) or [in_i] (international inches).

@App-Shall @Device-Shall
Scenario: Precision and units are appropriate for height
 The precision and units of a height (or length) measurement shall be appropriate to the measurement.

Given A <System> (either a Device or an App)
  And a <Height Measurement> that can be produced by <System>
 When <Height Measurement> are examined
 Then The precision of <Height Measurement> is in at least whole units and not more than tenths of a unit
