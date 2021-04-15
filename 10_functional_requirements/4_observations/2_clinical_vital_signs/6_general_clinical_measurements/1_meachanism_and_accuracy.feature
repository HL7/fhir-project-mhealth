@Device-Shall @App-Shall @Infra-Shall
Feature: Mechanism and Accuracy of Measurement is Documented
    The method used and accuracy of measurements shall be described for a device in the manufacturer's documentation for each vital sign it can measure.

@Device-Shall
Scenario: Mechanism and Accuracy Documented
    The method used and accuracy of measurements shall be described in the manufacturer's documentation for a device.

    Given  A <Device> that measures a vital sign
    And    Manufacturer's <Documentation> for <Device>
    When   Manufacturer's <Documentation> for <Device> is reviewed
    Then   the mechanism for measuring each vital sign is described and the range of accuracy of the measurement is reported.
