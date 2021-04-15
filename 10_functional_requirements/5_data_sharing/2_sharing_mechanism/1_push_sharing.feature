@App-Should @Infra-Should
Feature: The system should be able to push new data to another party that the user has shared with.

Scenario: Push Sharing
  The system can send (push) data to other parties in electronic form.

Given a <System> supporting push sharing
  And a <User>
  And a <Party> the user has shared with
 When new <Data> for <User> has been collected
 Then it is sent to <Party>
