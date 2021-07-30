The user choice category ensures that a user has control over how sharing occurs.
It includes features that enable the user to restrict commercial use of their data,
and to remove themselves from the system, as well as download their data to enable transfer
to another system.
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='forget_me'>Feature: The User Can Request Deletion of All of Their Data.</a>

The system **SHALL** enable deletion of all of the user's data across the system's ecosystem
at the user's request. This ability supports the patient's right to be forgotten in jurisdictions
where it is required.

NOTE: Deletion only applies to user data contained in the system under test.
It does not ensure that data that has been sent to other parties is also deleted. That is
outside of the scope of this specification.


#### <a name='user-requests-data-deletion.'>Scenario: User Requests Data Deletion.</a>

A User's data can be deleted

GIVEN
: A <i>&lt;User&gt;</i>

   AND
   : A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : <i>&lt;Data&gt;</i> has been recorded in/by the <i>&lt;System&gt;</i>

WHEN
: The <i>&lt;User&gt;</i> requests deletion of their data from <i>&lt;System&gt;</i>

THEN
: The data is no longer available via the <i>&lt;System&gt;</i>.


### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='download_all'>Feature: The User Can Download All of Their Data.</a>

The system **SHALL** enable download of all of the user's data in a machine readable, integrity
preserving form at the user's request.

This feature enables a user to acquire their data before deleting their records from a system, possibly to transfer
them to another system.

The download must preserve the integrity of the data, and be reasonably parsable by a computer system.
A PDF report is NOT generally considered to be parsable, and so would not meet the requirements of this
section. A spreadsheet containing multiple tabs that included all data accessible via APIs would
satisfy this requirement.  A system cannot simply claim this capability by virtue of an existing
API by which an appropriately developed App COULD perform this function.


#### <a name='user-requests-data-deletion.'>Scenario: User Requests Data Deletion.</a>

A User's data can be deleted

GIVEN
: A <i>&lt;User&gt;</i>

   AND
   : A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : <i>&lt;Data&gt;</i> has been recorded in/by the <i>&lt;System&gt;</i>

WHEN
: The <i>&lt;User&gt;</i> requests deletion of their data from <i>&lt;System&gt;</i>

THEN
: The data is no longer available via the <i>&lt;System&gt;</i>.


#### <a name='user-requests-all-of-their-data.'>Scenario: User Requests All of Their Data.</a>

A user can download all of their data.

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


### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='share_with_others'>Feature: The User Can Request That Some or All Their Data be Shared With Another User or a Third Party.</a>

This feature enables users to share or not share data with others of their choosing.  The user can
start or stop sharing at any time.

NOTE: Systems may provide additional features to filter or refine the data that can be shared, but that
is beyond the scope of this section.


#### <a name='user-requests-data-deletion.'>Scenario: User Requests Data Deletion.</a>

A User's data can be deleted

GIVEN
: A <i>&lt;User&gt;</i>

   AND
   : A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : <i>&lt;Data&gt;</i> has been recorded in/by the <i>&lt;System&gt;</i>

WHEN
: The <i>&lt;User&gt;</i> requests deletion of their data from <i>&lt;System&gt;</i>

THEN
: The data is no longer available via the <i>&lt;System&gt;</i>.


#### <a name='user-requests-all-of-their-data.'>Scenario: User Requests All of Their Data.</a>

A user can download all of their data.

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


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='user-requests-sharing-with-another-user-or-third-party.'>Scenario: User Requests Sharing With Another User or Third Party.</a>

A user **SHALL** be able to share data with others of their choosing.

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


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='user-requests-that-sharing-stop-with-the-other-user-or-third-party.'>Scenario: User Requests That Sharing Stop With the Other User or Third Party.</a>

After a user requests that sharing stop, any data previously accessible **SHALL** no longer be
accessible to the third party, and future data **SHALL** not be accessible to that party.

NOTE: This specification does not speak to the access a third party has to data that it
has previously received and/or stored. That is outside of the scope of this specification.

GIVEN
: A <i>&lt;User&gt;</i>

   AND
   : Another <i>&lt;Party&gt;</i> (either user or third party) with whom the user has chose to share data with

   AND
   : A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : <i>&lt;Data&gt;</i> has been recorded in/by <i>&lt;System&gt;</i>

WHEN
: The <i>&lt;User&gt;</i> requests sharing of their data stop from <i>&lt;System&gt;</i> to <i>&lt;Party&gt;</i>

THEN
: <i>&lt;Party&gt;</i> can no longer access the user data (both current and historical).

