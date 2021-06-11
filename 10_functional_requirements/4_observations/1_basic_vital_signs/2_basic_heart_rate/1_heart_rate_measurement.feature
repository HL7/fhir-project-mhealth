@Device @App @Infra
Feature: Heart Rate Measurement
The system shall be able to capture and report a heart rate measurement from the user.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Capture and Report Heart Rate Measurement
The system can capture the heart rate of the user.

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
    And that <LOINC Code> is 8867-4 Heart Rate  [[Observation#Measurement#HeartRate: code = LOINC#8867-4 "Heart Rate"]]

@App-Should @Infra-Should
Scenario: UCUM Coded Heart Rate Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of Heart Rate
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is '/min' (per minute)
    And that <UCUM Unit Code> may include a UCUM comment (e.g. '{beat}/min' or '{beats}/min') [[ Observation#Measurement#HeartRate: valueQuantity.code from HeartRateUnits ]]

@App-Shall @Device-Shall
Scenario: Precision and units are appropriate for heart rate
 The precision and units of a heart rate measurement shall be appropriate to the measurement.

Given A <System> (either a Device or an App)
  And a <Heart Rate Measurement> that can be produced by <System>
 When <Heart Rate Measurement> are examined
 Then The precision of <Heart Rate Measurement> is in at least whole units and not more than tenths of a unit. [[ Observation#Measurement#HeartRate: valueQuantity obeys value.floor() = value or (value * 10).floor() = (value * 10) ]]