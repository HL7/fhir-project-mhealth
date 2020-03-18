@App-Shall @Infra-Shall
Feature: User Weight
    If the User's weight is essential to compute an observation the app/infra shall
    be able to capture/report the user's weight as an attribute of the user .

NOTE: Information is considered to be essential to compute an observation
when the value of that observation would change if the information changes.
Examples for weight include calories used during an activity (e.g., steps or stairs climbed)

Scenario: Weight is Available

    NOTE 1: Additional steps may be necessary to access the Weight given that the User is known.
This may include retrieving the height in some way as an attribute of the user

NOTE 2: If the weight is not essential for measurement, (i.e., the precondition is not met)
then this test is not applicable and not reported during the assessment.

    Given a <User> with <Weight>
    And an <App>
    And <Height> is essential for the operation of <App>
    And a <UserRecord> for <User>
    When the <UserRecord> is retrieved
    Then the <Weight> can be determined from the <UserRecord>

