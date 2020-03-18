@App-Should @Infra-Should
Feature: Gender Identity
    The App and Infrastructure should be able to associate a gender identity with the patient.

Scenario: Gender Identity exists
    Given a <User> Record
    And a <Gender Identity>
    When <User> is retrieved
    Then <User> contains <Gender Identity>

