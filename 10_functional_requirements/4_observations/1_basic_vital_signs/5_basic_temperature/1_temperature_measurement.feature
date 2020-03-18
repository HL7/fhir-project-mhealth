@Device @App @Infra
Feature: Tempurature Measurement
The system shall be able to capture and report a tempurature measurement from the user.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Capture and Report Tempurature Measurement

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Tempurature> of that <User>
 When the <System> is operational
 Then the device can capture a <Measurement> in the <System> associated with <User> that contains that user's <Tempurature>
  And that <Measurement> has units that are degrees Celsius or Fahrenheit
  And the precision of that <Measurement> is to the unit of at least whole unit.

@App-Should @Infra-Should
Scenario: LOINC Coded Temperature Measurement
The system should provide LOINC codes along with measurements.

  Given a <Measurement> of temperature
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Temperature
    And that <LOINC Code> is 8310-5 Body temperature

@App-Should @Infra-Should
Scenario: UCUM Coded Temperature Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of temperature
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is 'Cel' or '[degF]'


