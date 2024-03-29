@Device @App @Infra
Feature: Blood Pressure Measurement
The system shall be able to capture and report a blood pressure measurement from the user.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Capture and Report Blood Pressure Measurement

Given a <System> (App or Infrastructure) that can work with a <Device>
  And a <User> of that <System>
  And the <Blood Pressure> of that <User> containing both systolic and diastolic measures
 When the <System> is operational
 Then the <Device> can capture a <Measurement> in the <System> associated with <User>
  And that <Measurement> contains that user's <Blood Pressure>
  And that <Measurement> captures both systolic and diastolic pressure
  And that <Measurement> has units that are millimeters of mercury
  And the precision of that <Measurement> is to the unit of at least whole millimeters.

@App-Should @Infra-Should
Scenario: LOINC Coded Blood Pressure Measurement
The measurement should be coded in LOINC.

  Given a <Measurement> of blood pressure
   When the <Measurement> is retrieved
   Then that <Measurement> has a component that is associated with a <LOINC Code> for Blood Pressure
    And that <LOINC Code> is 8480-6 Systolic blood pressure or 8462-4 Diastolic blood pressure [[ Observation#Measurement#BloodPressure: code from BloodPressureMeasurements, component.code from BloodPressureMeasurements ]]

@App-Should @Infra-Should
Scenario: UCUM Coded Blood Pressure Units
The measurement should use units coded in UCUM.

  Given a <Measurement> of blood pressure
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <UCUM Unit Code>, [[ Observation#Measurement#BloodPressure: valueQuantity MS, valueQuantity 1..1, valueQuantity.system = UCUM ]]
    And that <UCUM Unit Code> is 'mm[Hg]' (millimeters of mercury). [[ Observation#Measurement#BloodPressure: valueQuantity.code = #'mm[Hg]' ]]

@App-Shall @Device-Shall
Scenario: Precision and units are appropriate for blood pressure
 The precision and units of a blood pressure measurement shall be appropriate to the measurement.

Given A <System> (either a Device or an App)
  And a <Blood Pressure Measurement> that can be produced by <System>
 When <Blood Pressure Measurement> are examined
 Then The precision of <Blood Pressure Measurement> is in at least whole units and not more than tenths of a unit. [[ Observation#Measurement#BloodPressure: valueQuantity obeys value.floor() = value or (value * 10).floor() = (value * 10) ]]
