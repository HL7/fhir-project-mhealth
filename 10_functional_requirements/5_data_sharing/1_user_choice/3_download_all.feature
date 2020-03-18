@App-Shall @Infra-Shall
Feature: The user can download all of their data.
The system shall enable download of all of the user's data in a machine readable, integrity
preserving form at the user's request.

This feature enables a user to acquire their data before deleting their records from a system, possibly to transfer
them to another system.

The download must preserve the integrity of the data, and be reasonably parsable by a computer system.
A PDF report is NOT generally considered to be parsable, and so would not meet the requirments of this
section.  A spreadsheet containing multiple tabs which included all data accessible via APIs would satisfy
this requirement.  A system cannot simply claim this capability by virtue of their existing an API by
which an appropriately developed App COULD perform this function.  The system must provide this capability
directly to the user.

Scenario:  User requests all of their data.

Given A <User>
  And A <System> (an App or Infrastructure)
  And <Data> has been recorded in/by <System>
 When The <User> requests a <Download> of all of their <Data> from <System> and the <Download> is inspected
 Then The <Download> is machine readable
  And The <Download> contains all the <Data>