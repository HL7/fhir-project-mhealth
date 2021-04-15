@App-Should @Infra-Should
Feature: Other parties that the user has shared with should be able to pull data from the system.

Scenario: Pull Sharing
  A third party can query for and recieve (pull) new data after being authorized by a user.

Given a <System> supporting pull sharing
  And a <User>
  And a <Party> the user has authorized and shared with
 When new <Data> for <User> has been collected
 Then it can be retrieved by <Party>