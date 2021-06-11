@App-Shall @Infra-Shall
Feature: Capture of clinical data with weight measurement.
    The system shall be able to capture and record other data to facilitate interpretation of
    height and weight measurements.

@App-Shall @Infra-Shall
Scenario: Compute or report Body Mass Index

    This requirement allows BMI to be detected by a device, or reported based on the
reported height and sensed weight.  The method of computing the BMI value is not defined
by this requirement and may be implementation specific.

    Given a <System> (App and/or Infrastructure) that can work with a <Device>
    And a <User> of that <System>
    When there are <Height> and <Weight> measurements for a <User>
    Then there is a <Measurement> of <Body Mass Index> for the <User>

@App-Should @Infra-Should
Scenario: Clothing worn during measurement
    The system shall be able to capture a coded value describing the clothing worn during weight measurement.
    Given a <User>
    And a <System>
    When a <Measurement> of weight is performed by the <System>
    Then there is an opportunity for <User> to describe the clothing worn during the measurement

@App-Should @Infra-Should
Scenario: LOINC Coded BMI Measurement
    The system should provide LOINC codes along with measurements.
    Given a <Measurement> of BMI
    When the <Measurement> is retrieved
    Then that <Measurement> is associated with a <LOINC Code> for BMI,
    And that <LOINC Code> is 39156-5 Body mass index (BMI) [Ratio] [[ Observation#BMI: code = LOINC#39156-5 "Body mass index (BMI)" ]]

@App-Should @Infra-Should
Scenario: UCUM Coded BMI Units
    The measurement should use units coded in UCUM.
    Given a <Measurement> of BMI
    When the <Measurement> is retrieved
    Then that <Measurement> is associated with a <UCUM Unit Code>,
    And that <UCUM Unit Code> is 'kg/m2'. [[ Observation#BMI: valueQuantity.system = UCUM, valueQuantity.code = #'kg/m2', valueQuantity.unit = #'kg/m2']]
