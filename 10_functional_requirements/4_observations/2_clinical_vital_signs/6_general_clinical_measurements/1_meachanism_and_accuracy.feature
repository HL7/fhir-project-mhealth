@Device-Shall @App-Shall @Infra-Shall
Feature: Mechanism and Accuracy of Measurement is Documented
    The mechanism and accuracy of measurements by the device shall be documented for each vital sign it can measure.

@Device-Shall
Scenario: Mechanism and Accuracy Documented
    Given  A <Device> that measures a vital sign
    And    <Documentation> for <Device>
    When   <Documentation> for <Device> is reviewed
    Then   the mechanism for measuring each vital sign is described and the range of accuracy of the measurement is reported.
