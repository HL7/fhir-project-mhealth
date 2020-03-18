@App-Shall @Infra-Shall
Feature: Date of Birth
    The App and Infrastructure shall be able to associate a birth date with the patient.

Scenario: Birth date exists
    Given a <User> Record
    And a <Birthdate>
    When <User> is retrieved
    Then <User> contains <Birthdate>
