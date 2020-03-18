@App-Should @Infra-Should
Feature: Other parties that the user has shared with should be able to pull data from the system.

Scenario: Pull Sharing
Given a <System> supporting pull sharing
  And a <User>
  And a <Party> the user has shared with
 When new <Data> for <User> has been collected
 Then it can be retrieved by <Party>