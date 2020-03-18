@App-Shall @Infra-Shall
Feature: Birth Sex
    If the user's birth sex is essential to compute a measurement, the App/Infrastructure
    shall be able to associate/report the birth sex of the user.

Scenario: Birth Sex exists
    Given Birth Sex is essential to device configuration
    And a <User> Record
    And a <Birth Sex>
    When <User> is retrieved
    Then <User> contains <Sex>

