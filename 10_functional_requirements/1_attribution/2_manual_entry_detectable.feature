@App-Shall @Infra-Shall
Feature: Identify manually entered data and the author of it

    If an app enables recording of outside measurements that app shall identify
measures as that have been manually entered by the user of the app, and the
user shall be identified also.

Scenario: Manually entered data can be detected
    Manually entered data shall be distinguishable from device recorded data.

    Given An app that enables user entry of data manually,
    And a <User>
    And a manually entered <Measurement>
    When <Measurement> is accessed by another system or transmitted to infrastructure
    Then The <Measurement> can be identified as having been manually entered. [[Observation#Measurement#ManualMeasurement: method MS, method 1..1, method = SCT#362943005 "Manual Method"]]

Scenario: The user who entered the data can be identified.
    The user manually entering data shall be recorded.

    Given An <App> that enables user manual entry of data
    And a <User>
    And a manually entered <Measurement>
    When <Measurement> is accessed by another system or transmitted to infrastructure
    Then The <Measurement> can be identified as having been manually entered by <User>. [[Observation#Measurement#ManualMeasurement: performer MS, performer 1..1]]

