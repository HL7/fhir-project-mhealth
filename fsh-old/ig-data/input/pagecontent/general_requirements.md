The Clinical Vital Signs Category describes requirements supporting additional data needed for
accurate interpretation of device measurements in a clinical setting.
<span id='a-time-stamp-or-time-period-is-recorded-for-each-measurement'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: A Time Stamp or Time Period is Recorded for Each Measurement

The time stamp or time period associated with a measurement **SHALL** be recorded and reported for each measurement taken,and the time when the measure was recorded is also tracked.
Note: These requirements are checked for each measurement for which the system isbeing assessed.  If the requirement fails for **ANY** measurement, the requirement is considered to not be met.


<span id='measurements-have-a-time-stamp-or-time-period-noting-the-time-of-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Measurements Have a Time Stamp or Time Period Noting the Time of Measurement


GIVEN
: a <i>&lt;User&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is performed for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was taken.


<span id='measurements-have-a-time-stamp-or-time-period-noting-the-time-it-was-recorded/stored'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Measurements Have a Time Stamp or Time Period Noting the Time it Was Recorded/stored


GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : <i>&lt;Infrastructuree&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is recorded in <i>&lt;Infrastructure&gt;</i> for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was recorded.


<span id='multiple-user-support'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> Feature: Multiple User Support

A given device **SHALL** be able to be used by more than one user.

Users from the same family may share a device to take similar measurements (e.g., blood pressure) using
an App on their personal device.


<span id=''/>
#### Background: 

The following scenarios describe further support requirements for similar
and different devices.  The requirements below apply to both of the scenarios
that follow.

GIVEN
: A <i>&lt;Device&gt;</i> that performs a measurement,

   AND
   : <i>&lt;User1&gt;</i>

   AND
   : <i>&lt;User2&gt;</i>,

   AND
   : an <i>&lt;App&gt;</i> for <i>&lt;User1&gt;</i> that runs on <i>&lt;MobileDevice1&gt;</i>

   AND
   : the same <i>&lt;App&gt;</i> for <i>&lt;User2&gt;</i> that runs on <i>&lt;MobileDevice2&gt;</i>

WHEN
: <i>&lt;Device&gt;</i> has been recognized by <i>&lt;App&gt;</i> on <i>&lt;MobileDevice1&gt;</i>

   AND
   : <i>&lt;Device&gt;</i> has been recognized by <i>&lt;App&gt;</i> on <i>&lt;MobileDevice2&gt;</i>


<span id='record-a-measurement-for-multiple-users-w/-re-pairing'/>
##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Record a Measurement for Multiple Users w/ Re-pairing

It's expected that devices will be able to be shared across users and apps
but that some setup or configuration may be needed when transferred between
users (e.g., pairing the device with the platform on which the app is running).
Many smaller devices can only be paired with one system at a time.

THEN
: The <i>&lt;Device&gt;</i> can take a measurement for <i>&lt;User1&gt;</i>

   AND
   : The <i>&lt;Device&gt;</i> can take a measurement for <i>&lt;User2&gt;</i>

BUT
: The <i>&lt;Device&gt;</i> may need to be configured (e.g., paired with) <i>&lt;MobileDevice1&gt;</i> or <i>&lt;MobileDevice2&gt;</i> before taking the measurement.


<span id='record-a-measurement-for-multiple-users-w/o-re-pairing'/>
##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> Scenario: Record a Measurement for Multiple Users W/o Re-pairing

Ideally, a device **SHOULD** be able to be paired with a small number
of other systems to enable it to be used by different people or
with different systems (e.g., a smartphone or a tablet). This
**SHOULD** not require repairing (though it may require activating
an already paired connection).

THEN
: <i>&lt;Device&gt;</i> can take a measurement for <i>&lt;User1&gt;</i>

   AND
   : <i>&lt;Device&gt;</i> can take a measurement for <i>&lt;User2&gt;</i>

BUT
: The <i>&lt;Device&gt;</i> does not need to be reconfigured (e.g., paired with) <i>&lt;MobileDevice1&gt;</i> or <i>&lt;MobileDevice2&gt;</i> before taking the measurement.


<span id='multiple-device-support'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> Feature: Multiple Device Support

An app **SHALL** be able to collect data for a given patient
from multiple (possibly identical) devices and identify the device from
which they were collected.


<span id='multiple-device-support'/>
#### Background: Multiple Device Support

The following scenarios describe further support requirements for similar
and different devices.  The requirements below apply to both of the scenarios
that follow.

GIVEN
: An app <i>&lt;App&gt;</i> that supports a device <i>&lt;Device1&gt;</i> of a particular <i>&lt;Type&gt;</i>

   AND
   : <i>&lt;MeasureSet1&gt;</i> that were acquired through <i>&lt;Device1&gt;</i>

THEN
: Previously recorded <i>&lt;MeasureSet1&gt;</i> still exists

   AND
   : can be distinguished as having come from <i>&lt;Device1&gt;</i>


<span id='replacement-device'/>
##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Replacement Device

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of the same type, not lose their existing data maintained
in the app (e.g., all measures of a given kind may be treated as a single stream),
and yet also be able to distinguish which device took which measurement.

WHEN
: The user acquires <i>&lt;Device2&gt;</i> of the same type <i>&lt;Type&gt;</i>

THEN
: <i>&lt;App&gt;</i> can acquire new measurements <i>&lt;MeasureSet2&gt;</i> from <i>&lt;Device2&gt;</i>

   AND
   : Those measures in <i>&lt;MeasureSet2&gt;</i> can be distinguished as having come from <i>&lt;Device2&gt;</i>


<span id='alternative-device'/>
##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> Scenario: Alternative Device

A user **SHOULD** be able to acquire and use a similar or different kind
of device to work with an application to enable data collection
under different circumstances or in different environments.

For example, blood pressure can be measured
on the arm using a traditional pneumatic cuff, or on the wrist using a
different type of device.  The former may be used at home, and the latter
when traveling because it is smaller and easier to carry (but may be
less accurate, or more difficult to use).  The main idea here is that an app can work
with multiple devices with no user intervention after initial configuration.

WHEN
: The user acquires device <i>&lt;Device2&gt;</i> of the same type <i>&lt;Type&gt;</i> or a different type <i>&lt;Type2&gt;</i>

THEN
: <i>&lt;App&gt;</i> can acquire new measurements <i>&lt;MeasureSet2&gt;</i> from <i>&lt;Device2&gt;</i>

   AND
   : <i>&lt;App&gt;</i> can acquire new measurements <i>&lt;MeasureSet3&gt;</i> from <i>&lt;Device1&gt;</i>

   AND
   : Measures in <i>&lt;MeasureSet3&gt;</i> can be distinguished as having come from <i>&lt;Device1&gt;</i>

   AND
   : Measures in <i>&lt;MeasureSet2&gt;</i> can be distinguished as having come from <i>&lt;Device2&gt;</i>


<span id='user-manual-entry'/>
### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Feature: User Manual Entry

An App **SHOULD** allow for manual recording of data from external sources.
Users of a device or app for tracking a particular type of measurement may also want to keep track of externally generatedmeasurements for the purposes of verifying device calibration, keeping general track of what the device helps them monitor,or for other reasons.


<span id='manual-entry-of-a-measurement'/>
#### Scenario: Manual Entry of a Measurement


GIVEN
: an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

   AND
   : a <i>&lt;User&gt;</i>

WHEN
: an external <i>&lt;Measurement&gt;</i> is available to the <i>&lt;User&gt;</i>

THEN
: the <i>&lt;User&gt;</i> can record <i>&lt;Measurement&gt;</i> in the <i>&lt;App&gt;</i>

   AND
   : the <i>&lt;Infrastructure&gt;</i> can report that <i>&lt;Measurement&gt;</i>


<span id='comments-and-additional-data'/>
### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Feature: Comments and Additional Data

An App **SHOULD** allow for recording of additional user supplied data.
Users of a device or app for tracking a particular type of measurement may also want to keep track of additional datafor a measure that is not captured by the device, such as recent physical activity that might affect vital signs readings,or type of blood glucose reading with respect to time of most recent meal, or site used for a blood pressure reading.


<span id='user-supplied-data'/>
#### Scenario: User Supplied Data


GIVEN
: an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Device&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

   AND
   : a <i>&lt;User&gt;</i>

WHEN
: an <i>&lt;Measurement&gt;</i> is captured by the <i>&lt;Device&gt;</i>

THEN
: the <i>&lt;User&gt;</i> can record <i>&lt;Additional Data&gt;</i> in the <i>&lt;App&gt;</i>

   AND
   : the <i>&lt;App&gt;</i> can associate that <i>&lt;Additional Data&gt;</i> with the <i>&lt;Measurement&gt;</i>

   AND
   : the <i>&lt;Infrastructure&gt;</i> can report that associated <i>&lt;Additional Data&gt;</i>


<span id='corrections-and-deletions'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: Corrections and Deletions

An App **SHOULD** allow for the user to correct or "delete" incorrect data.
Users of a device or app for **SHALL** have the ability to correct or remove incorrect data.


<span id='correction'/>
#### Scenario: Correction


GIVEN
: an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

   AND
   : a <i>&lt;User&gt;</i>

WHEN
: an <i>&lt;Measurement&gt;</i> is captured by the <i>&lt;Device&gt;</i> but is recorded incorrectly (e.g., against wrong patient)

THEN
: the <i>&lt;User&gt;</i> can supply a <i>&lt;Corrected Measurement&gt;</i>

   AND
   : the <i>&lt;App&gt;</i> can communicate that <i>&lt;Corrected Measurement&gt;</i> to the <i>&lt;Infrastrucure&gt;</i>

   AND
   : the <i>&lt;Infrastructure&gt;</i> can report that <i>&lt;Corrected Measurement&gt;</i>


<span id='deletion'/>
#### Scenario: Deletion


GIVEN
: an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

   AND
   : a <i>&lt;User&gt;</i>

WHEN
: an <i>&lt;Measurement&gt;</i> is captured by the <i>&lt;Device&gt;</i> but is recorded incorrectly (e.g., against wrong patient)

THEN
: the <i>&lt;User&gt;</i> can mark the <i>&lt;Measurement&gt;</i> as deleted or invalid

   AND
   : the <i>&lt;App&gt;</i> can communicate that mark to the <i>&lt;Infrastrucure&gt;</i>

   AND
   : the <i>&lt;Infrastructure&gt;</i> will either no longer report the incorrect <i>&lt;Measurement&gt;</i> or will report it as being invalid.

