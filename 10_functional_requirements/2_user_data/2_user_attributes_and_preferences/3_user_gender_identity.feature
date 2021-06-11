@App-Should @Infra-Should
Feature: Gender Identity
    The App and Infrastructure should be able to associate a gender identity (e.g., male, female, trans, non-binary)
with the patient.

Scenario: Gender Identity exists
	The user has a gender identity.

    Given a <User> Record
    And a <Gender Identity>
    When <User> is retrieved
    Then <User> contains <Gender Identity> [[ Observation#UserGenderIdentity: code = LOINC#76691-5 "Gender identity", subject only Reference(Patient), subject MS, subject 1..1]]

