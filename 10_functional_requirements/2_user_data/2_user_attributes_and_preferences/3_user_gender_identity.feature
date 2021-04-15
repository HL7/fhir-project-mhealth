@App-Should @Infra-Should
Feature: Gender Identity
    The App and Infrastructure should be able to associate a gender identity (e.g., male, female, trans, non-binary)
with the patient.

Scenario: Gender Identity exists
	Thee user has a gender identity.

    Given a <User> Record
    And a <Gender Identity>
    When <User> is retrieved
    Then <User> contains <Gender Identity>

