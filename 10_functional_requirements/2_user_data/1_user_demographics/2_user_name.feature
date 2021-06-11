@App-Shall @Infra-Shall
Feature: User Name
    The App or Infrastructure shall be able to associate the user's name with the user.

Scenario: Name exists
The user has a name.

    Given a <User> Record
    And a user <Name>
    When <User> is retrieved
    Then <User> contains <Name> [[Patient#User: name MS, name 1..1]]

