@Device @App @Infra
Feature: Temperature Measurement
The system shall be able to capture and report a Temperature measurement from the user.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Capture and Report Temperature Measurement

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Temperature> of that <User>
 When the <System> is operational
 Then the device can capture a <Measurement> in the <System> associated with <User> that contains that user's <Temperature>
  And that <Measurement> has units that are degrees Celsius or Fahrenheit
  And the precision of that <Measurement> is to the unit of at least whole unit.

@App-Should @Infra-Should
Scenario: LOINC Coded Temperature Measurement
The system should provide LOINC codes along with measurements.

  Given a <Measurement> of temperature
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <LOINC Code> for Temperature
    And that <LOINC Code> is 8310-5 Body temperature  [[ Observation#Measurement#BodyTemperature: code = LOINC#8310-5 "Body temperature" ]]

@App-Should @Infra-Should
Scenario: UCUM Coded Temperature Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of temperature
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>, [[ Observation#Measurement#BodyTemperature: valueQuantity.system = UCUM ]]
    And that <UCUM Unit Code> is 'Cel' or '[degF]' [[ Observation#Measurement#BodyTemperature: valueQuantity.code from BodyTempuratureUnits ]]


@App-Shall @Device-Shall
Scenario: Precision and units are appropriate for temperature
 The precision and units of an temperature measurement shall be appropriate to the measurement.

Given A <System> (either a Device or an App)
  And a <Temperature Measurement> that can be produced by <System>
 When <Temperature Measurement> are examined
 Then The precision of <Temperature Measurement> is in at least whole units and not more than tenths of a unit. [[ Observation#Measurement#BodyTemperature: valueQuantity obeys value.floor() = value or (value * 10).floor() = (value * 10) ]]