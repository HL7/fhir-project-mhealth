@App-Shall @Infra-Shall
Feature: The user can request deletion of all of their data.
The system shall enable deletion of all of the user's data at the user's request.

NOTE: This requirement only describes the ability for a user to delete the data
a system would normally make visible.  It does not ensure that data that has
exists in backups, or which has been sent to other parties is also deleted.  That
is outside of the scope of this specification.

Scenario:  User requests data deletion.

Given: A <User>
  And: A <System> (an App or Infrastructure)
  And: <Data> has been recorded in/by <System>
 When: The <User> requests deletion of their data from <System>
 Then: The data is no longer available via <System>.