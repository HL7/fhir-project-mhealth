User attributes and preferences provides additional information about the user of a
device. This information may be used to augment the measurement capabilities of the
device or to address users expressed preferences about how device data is used or
shared.

Information such as user height and weight might need to be provided to allow an app or
device to compute from the number of steps taken as measured by an accelerometer, into an
estimate of distance traveled (computed as a function of user height) or calories burned
(computed as a function of user weight).

Attribute values about the user may be dynamically configured, or even determined by
the device (e.g., current user state, such as sedentary, active, sleeping) that might
enable an application to compute other functions.  This data may be user entered, or
determined through other means.

Some configuration data may also come from [User Demographics](user_demographics.html)
such as age and gender.  Note though, care must be taken to avoid confusing physical
attributes (such as birth sex) which may be necessary to properly configure a device
and gender identity, which should be a user preference.
<span id='user-height'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: User Height

If User Height is essential to compute an observation the app/infra **SHALL** be
able to capture/report the user's height as an attribute of the user .

NOTE: Information is considered to be essential to compute an observation
when the value of that observation would change if the information changes.
Examples for height include distance traveled or calories used during an
activity (e.g., steps or stairs climbed)


<span id='height-is-available'/>
#### Scenario: Height is Available

NOTE 1: Additional steps may be necessary to access the Height given that the User is known.
This may include retrieving the height in some way as an attribute of the user

NOTE 2: If the height is not essential for measurement, (i.e., the precondition is not met)
then this test is not applicable and not reported during the assessment.

GIVEN
: a <i>&lt;User&gt;</i> with <i>&lt;Height&gt;</i>

   AND
   : an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Height&gt;</i> is essential for the operation of <i>&lt;App&gt;</i>

   AND
   : a <i>&lt;UserRecord&gt;</i> for <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;UserRecord&gt;</i> is retrieved

THEN
: the <i>&lt;Height&gt;</i> can be determined from the <i>&lt;UserRecord&gt;</i>


<span id='user-weight'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: User Weight

If the User's weight is essential to compute an observation the app/infra **SHALL**be able to capture/report the user's weight as an attribute of the user .

NOTE: Information is considered to be essential to compute an observation
when the value of that observation would change if the information changes.
Examples for weight include calories used during an activity (e.g., steps or stairs climbed)


<span id='weight-is-available'/>
#### Scenario: Weight is Available

NOTE 1: Additional steps may be necessary to access the Weight given that the User is known.
This may include retrieving the weight in some way as an attribute of the user

NOTE 2: If the weight is not essential for measurement, (i.e., the precondition is not met)
then this test is not applicable and not reported during the assessment.

GIVEN
: a <i>&lt;User&gt;</i> with <i>&lt;Weight&gt;</i>

   AND
   : an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Weight&gt;</i> is essential for the operation of <i>&lt;App&gt;</i>

   AND
   : a <i>&lt;UserRecord&gt;</i> for <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;UserRecord&gt;</i> is retrieved

THEN
: the <i>&lt;Weight&gt;</i> can be determined from the <i>&lt;UserRecord&gt;</i>


<span id='gender-identity'/>
### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Feature: Gender Identity

The App and Infrastructure **SHOULD** be able to associate a gender identity (e.g., male, female, trans, non-binary)
with the patient.


<span id='gender-identity-exists'/>
#### Scenario: Gender Identity Exists

Thee user has a gender identity.

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : a <i>&lt;Gender Identity&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Gender Identity&gt;</i>


<span id='the-user-can-request-their-data-not-be-sold-or-otherwise-shared-for-commercial-gain.'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: The User Can Request Their Data Not be Sold or Otherwise Shared for Commercial Gain.

The system **SHALL** enable a user to request their data not be sold or otherwise shared for
commercial gain.


<span id='user-requests-their-data-not-be-sold.'/>
#### Scenario: User Requests Their Data Not be Sold.

A user can express a preference about the sale of their data to others.

GIVEN
: A <i>&lt;System&gt;</i> (an App or Infrastructure)

   AND
   : published manufacturer's <i>&lt;Documentation&gt;</i> for the system

WHEN
: the manufacturer's <i>&lt;Documentation&gt;</i> is reviewed,

THEN
: it describes how a user can request that their data not be sold.

