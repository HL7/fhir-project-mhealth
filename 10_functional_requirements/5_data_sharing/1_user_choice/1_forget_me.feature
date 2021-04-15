@App-Shall @Infra-Shall
Feature: The user can request deletion of all of their data.
The system shall enable deletion of all of the user's data across the system's ecosystem
at the user's request. This ability supports the patient's right to be forgotten in jurisdictions
where it is required.

NOTE: Deletion only applies to user data contained in the system under test.
It does not ensure that data that has been sent to other parties is also deleted. That is
outside of the scope of this specification.

Scenario:  User requests data deletion.
A User's data can be deleted

Given A <User>
  And A <System> (an App or Infrastructure)
  And <Data> has been recorded in/by the <System>
 When The <User> requests deletion of their data from <System>
 Then The data is no longer available via the <System>.