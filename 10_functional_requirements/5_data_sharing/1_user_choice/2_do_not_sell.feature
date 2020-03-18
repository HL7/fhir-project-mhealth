@App-Shall @Infra-Shall
Feature: The user can request their data not be sold.
The system shall enable a user to request their data not be sold.

NOTE: This requirement only describes the ability for a user to delete the data
a system would normally make visible.  It does not ensure that data that has
exists in backups, or which has been sent to other parties is also deleted.  That
is outside of the scope of this specification.

Scenario:  User requests their data not be sold.

Given A <System> (an App or Infrastructure)
  And published <Policies> for system regarding sale of user data (including aggregate/anonymized data).
 When the <Policies> are reviewed,
 Then it is clear that <Policies> prohibit sale of user data (including in aggregate and/or anonymized form).