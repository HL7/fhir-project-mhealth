@App-Shall @Infra-Shall
Feature: The user can request that some or all their data be shared with another user or a third party.
This feature enables users to share or not share data with others of their choosing.  The user can
start or stop sharing at any time.

NOTE: Systems may provide additional features to filter or refine the data that can be shared, but that
is beyond the scope of this section.

@App-Shall @Infra-Shall
Scenario:  User requests sharing with another user or third party.
A user shall be able to share user selected data with others of their choosing.

Given A <User>
  And Another <Party> (either user or third party)
  And A <System> (an App or Infrastructure)
  And <Data> has been recorded in/by <System>
 When The <User> requests sharing of their data from <System> with <Party>
 Then <Party> can access the current data.

@App-Shall @Infra-Shall
Scenario: User requests that sharing stop with the other user or third party.
After a user requests that sharing stop, any data previously accessible shall no longer be
accessible to the third party, and future data shall not be accessible to that party.

NOTE: This specification does not speak to the access a third party has to data that it
has previously received and/or stored. That is outside of the scope of this specification.

Given A <User>
  And Another <Party> (either user or third party) with whom the user has chose to share data with
  And A <System> (an App or Infrastructure)
  And <Data> has been recorded in/by <System>
 When The <User> requests sharing of their data stop from <System> to <Party>
 Then <Party> can no longer access the user data (both current and historical).

 @App-Shall @Infra-Shall
Scenario:  User can request a list of users or third party with whom data is being shared.
A user shall be able to see who data is being shared with.

Given A <User>
  And Other <Parties> (either users or third parties) which data can be shared with
 When The <User> requests a list of data sharing recipients
 Then The list of <Parties> is displayed
