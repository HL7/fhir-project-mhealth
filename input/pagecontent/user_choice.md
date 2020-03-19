The user choice category ensures that a user has control over how sharing occurs.
It includes features that enable the user to restrict commercial use of their data,
and to remove themselves from the system, as well as download their data to enable transfer
to another system.
<span id='the-user-can-request-deletion-of-all-of-their-data.'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: The User Can Request Deletion of All of Their Data.

The system **SHALL** enable deletion of all of the user's data at the user's request.

NOTE: This requirement only describes the ability for a user to delete the data
a system would normally make visible.  It does not ensure that data that has
exists in backups, or which has been sent to other parties is also deleted.  That
is outside of the scope of this specification.


<span id='user-requests-data-deletion.'/>
#### Scenario: User Requests Data Deletion.

Given: A <User>
  And: A <System> (an App or Infrastructure)
  And: <Data> has been recorded in/by <System>
 When: The <User> requests deletion of their data from <System>
 Then: The data is no longer available via <System>.


<span id='the-user-can-request-their-data-not-be-sold.'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: The User Can Request Their Data Not be Sold.

The system **SHALL** enable a user to request their data not be sold.

NOTE: This requirement only describes the ability for a user to delete the data
a system would normally make visible.  It does not ensure that data that has
exists in backups, or which has been sent to other parties is also deleted.  That
is outside of the scope of this specification.


<span id='user-requests-their-data-not-be-sold.'/>
#### Scenario: User Requests Their Data Not be Sold.


GIVEN
: A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : published <i>&lt;Policies&gt;</i> for system regarding sale of user data (including aggregate/anonymized data).

WHEN
: the <i>&lt;Policies&gt;</i> are reviewed,

THEN
: it is clear that <i>&lt;Policies&gt;</i> prohibit sale of user data (including in aggregate and/or anonymized form).


<span id='the-user-can-download-all-of-their-data.'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: The User Can Download All of Their Data.

The system **SHALL** enable download of all of the user's data in a machine readable, integrity
preserving form at the user's request.

This feature enables a user to acquire their data before deleting their records from a system, possibly to transfer
them to another system.

The download must preserve the integrity of the data, and be reasonably parsable by a computer system.
A PDF report is NOT generally considered to be parsable, and so would not meet the requirments of this
section.  A spreadsheet containing multiple tabs which included all data accessible via APIs would satisfy
this requirement.  A system cannot simply claim this capability by virtue of their existing an API by
which an appropriately developed App COULD perform this function.  The system must provide this capability
directly to the user.


<span id='user-requests-all-of-their-data.'/>
#### Scenario: User Requests All of Their Data.


GIVEN
: A <i>&lt;User&gt;</i>

   AND
   : A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : <i>&lt;Data&gt;</i> has been recorded in/by <i>&lt;System&gt;</i>

WHEN
: The <i>&lt;User&gt;</i> requests a <i>&lt;Download&gt;</i> of all of their <i>&lt;Data&gt;</i> from <i>&lt;System&gt;</i> and the <i>&lt;Download&gt;</i> is inspected

THEN
: The <i>&lt;Download&gt;</i> is machine readable

   AND
   : The <i>&lt;Download&gt;</i> contains all the <i>&lt;Data&gt;</i>


<span id='the-user-can-request-that-some-or-all-their-data-be-shared-with-another-user-or-a-third-party.'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: The User Can Request That Some or All Their Data be Shared With Another User or a Third Party.

This feature enables users to share or not share data with others of their choosing.


<span id='user-requests-sharing-with-another-user-or-third-party.'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: User Requests Sharing With Another User or Third Party.

A user shall be able to share data with others of their choosing.

GIVEN
: A <i>&lt;User&gt;</i>

   AND
   : Another <i>&lt;Party&gt;</i> (either user or third party)

   AND
   : A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : <i>&lt;Data&gt;</i> has been recorded in/by <i>&lt;System&gt;</i>

WHEN
: The <i>&lt;User&gt;</i> requests sharing of their data from <i>&lt;System&gt;</i> with <i>&lt;Party&gt;</i>

THEN
: <i>&lt;Party&gt;</i> can access the current data.


<span id='user-requests-that-sharing-stop-with-the-other-user-or-third-party.'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: User Requests That Sharing Stop With the Other User or Third Party.

After a user requests that sharing stop, any data previously accessible shall no longer be
accessible to the third party, and future data shall not be sent to that party.

NOTE: This specification does not speak to the access a third party has to data that it
has previously recieved and/or stored.  That is outside of the scope of this specification.

GIVEN
: A <i>&lt;User&gt;</i>

   AND
   : Another <i>&lt;Party&gt;</i> (either user or third party) with whom the user has chose to share data with

   AND
   : A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : <i>&lt;Data&gt;</i> has been recorded in/by <i>&lt;System&gt;</i>

WHEN
: The <i>&lt;User&gt;</i> requests sharing of their data stope from <i>&lt;System&gt;</i> to <i>&lt;Party&gt;</i>

THEN
: <i>&lt;Party&gt;</i> can no longer access the user data (both current and historical).

