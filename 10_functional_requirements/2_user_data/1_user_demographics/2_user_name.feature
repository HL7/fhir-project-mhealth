@App-Shall @Infra-Shall
Feature: User Name
    The App or Infrastructure shall be able to associate the user's name with the user.

Scenario: Name exists
    Given a <User> Record
    And a user <Name>
    When <User> is retrieved
    Then <User> contains <Name>

