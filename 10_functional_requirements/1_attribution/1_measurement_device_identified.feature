@Device-Shall
Feature: Measurement Device can be Identified
    The device that performs the measurement shall be uniquely identified and that identifier
    shall persist throughout that devices lifetime.

Each type of device has attributes with regard to precision, accuracy and quality that can impact
the interpretation of measurements taken by the device. Knowledge of the device helps greatly in
interpreting the results.

Scenario: Device is Identified
A device is identified with a unique identifier and that can be determined from the measurement.
    Given <Device> performs a measurement
    And <Device> is uniquely identified with <Identifier>
    When <Measurement> has been obtained
    Then <Identifier> can be found from <Measurement>

Scenario: Device Identifier Persists
The unique identifier of the device is consistent across measurements.

    Given <Device> that can perform a measurement
    And <User1>
    And <User2>
    And an <App1> used by <User1>
    And an <App2> used by <User2> (can be the same app as for User1)
    When a <Measurement1> is taken for <User1> by <App1>
     And a <Measurement2> is taken for <User2> by <App2>
    Then there is an <Identifier1> in the <Device> record associated with <Measurement1>
     And there is an <Identifier2> in the <Device> record associated with <Measurement2>
     And <Identifier2> = <Identifier1>


# @FHIR
# Scenario: Device is recorded using FHIR
#
#     Given a <Device> record
#     When the <Device> record is retrieved
#     Then <Device> is a FHIR <Device Resource>
#      And <Device Resource> * id 1..1
#      And <Device Resource> * identifier 0..*
#
# @FHIR
# Scenario: Measurement is recorded using FHIR
#     Given a <Measurement>
#     When <Measurement> is retrieved
#     Then <Measurement> is a FHIR <Observation Resource>
#     And  <Observation Resource> * device 1..1