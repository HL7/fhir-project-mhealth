@App-Shall @Infra-Shall
Feature: User Height
    If User Height is essential to compute an observation the app/infra shall be
able to capture/report the user's height as an attribute of the user .

NOTE: Information is considered to be essential to compute an observation
when the value of that observation would change if the information changes.
Examples for height include distance traveled or calories used during an
activity (e.g., steps or stairs climbed)

Scenario: Height is Available

    NOTE 1: Additional steps may be necessary to access the Height given that the User is known.
This may include retrieving the height in some way as an attribute of the user

NOTE 2: If the height is not essential for measurement, (i.e., the precondition is not met)
then this test is not applicable and not reported during the assessment.

    Given a <User> with <Height>
    And an <App>
    And <Height> is essential for the operation of <App>
    And a <UserRecord> for <User>
    When the <UserRecord> is retrieved
    Then the <Height> can be determined from the <UserRecord> [[ Observation#Measurement#UserHeight: code = LOINC#8302-2 "Body height", subject only Reference(Patient), subject MS, subject 1..1]]

