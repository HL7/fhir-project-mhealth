The Clinical Vital Signs Category describes requirements supporting additional data needed for
accurate interpretation of device measurements in a clinical setting.
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time_stamp_or_duration'>Feature: A Time Stamp or Time Period is Recorded for Each Measurement</a>

The time stamp or time period associated with a measurement **SHALL** be recorded and reported for each measurement taken,and the time when the measure was recorded is also tracked.
Note: These requirements are checked for each measurement for which the system isbeing assessed.  If the requirement fails for **ANY** measurement, the requirement is considered to not be met.


The requirements for this feature when implemented with FHIR can be found in the [TimeStampOrDurationRequirements](StructureDefinition-TimeStampOrDurationRequirements.html) Profile.

#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-measurement-recorded'>Scenario: Time of Measurement Recorded</a>

Measurements **SHALL** have a time stamp or time period noting the time of measurement

GIVEN
: a <i>&lt;User&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is performed for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was taken. 


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-recording-stored'>Scenario: Time of Recording Stored</a>

Measurements **SHALL** have a time stamp or time period noting the time the data was recorded

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is recorded in <i>&lt;Infrastructure&gt;</i> for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was recorded. 


### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <a name='multi_user_support'>Feature: Multiple User Support</a>

A given device **SHALL** be able to be used by more than one user.

Users from the same family may share a device to take similar measurements (e.g., blood pressure) using
an App on their personal device.


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-measurement-recorded'>Scenario: Time of Measurement Recorded</a>

Measurements **SHALL** have a time stamp or time period noting the time of measurement

GIVEN
: a <i>&lt;User&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is performed for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was taken. 


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-recording-stored'>Scenario: Time of Recording Stored</a>

Measurements **SHALL** have a time stamp or time period noting the time the data was recorded

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is recorded in <i>&lt;Infrastructure&gt;</i> for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was recorded. 


#### <a name='_288665596'>Background: </a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/-re-pairing'>Scenario: Record a Measurement for Multiple Users w/ Re-pairing</a>

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


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/o-re-pairing'>Scenario: Record a Measurement for Multiple Users W/o Re-pairing</a>

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


### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <a name='multiple_device_support'>Feature: Multiple Device Support</a>

An app **SHALL** be able to collect data for a given patient
from multiple (possibly identical) devices and identify the device from
which they were collected.


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-measurement-recorded'>Scenario: Time of Measurement Recorded</a>

Measurements **SHALL** have a time stamp or time period noting the time of measurement

GIVEN
: a <i>&lt;User&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is performed for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was taken. 


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-recording-stored'>Scenario: Time of Recording Stored</a>

Measurements **SHALL** have a time stamp or time period noting the time the data was recorded

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is recorded in <i>&lt;Infrastructure&gt;</i> for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was recorded. 


#### <a name='_288665596'>Background: </a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/-re-pairing'>Scenario: Record a Measurement for Multiple Users w/ Re-pairing</a>

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


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/o-re-pairing'>Scenario: Record a Measurement for Multiple Users W/o Re-pairing</a>

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


#### <a name='_13648335'>Background: Multiple Device Support</a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='replacement-device'>Scenario: Replacement Device</a>

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of the similar type, not lose their existing data maintained
in the app (e.g., all measures of a given kind may be treated as a single stream),
and yet also be able to distinguish which device took which measurement.

WHEN
: The user acquires <i>&lt;Device2&gt;</i> of the same type <i>&lt;Type&gt;</i>

THEN
: <i>&lt;App&gt;</i> can acquire new measurements <i>&lt;MeasureSet2&gt;</i> from <i>&lt;Device2&gt;</i>

   AND
   : Those measures in <i>&lt;MeasureSet2&gt;</i> can be distinguished as having come from <i>&lt;Device2&gt;</i>


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='alternative-device'>Scenario: Alternative Device</a>

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


### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='manual_entry'>Feature: User Manual Entry</a>

An App **SHOULD** allow for manual recording of data from external sources.
Users of a device or app for tracking a particular type of measurement may also want to keep track of externally generatedmeasurements for the purposes of verifying device calibration, keeping general track of what the device helps them monitor,or for other reasons.


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-measurement-recorded'>Scenario: Time of Measurement Recorded</a>

Measurements **SHALL** have a time stamp or time period noting the time of measurement

GIVEN
: a <i>&lt;User&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is performed for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was taken. 


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-recording-stored'>Scenario: Time of Recording Stored</a>

Measurements **SHALL** have a time stamp or time period noting the time the data was recorded

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is recorded in <i>&lt;Infrastructure&gt;</i> for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was recorded. 


#### <a name='_288665596'>Background: </a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/-re-pairing'>Scenario: Record a Measurement for Multiple Users w/ Re-pairing</a>

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


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/o-re-pairing'>Scenario: Record a Measurement for Multiple Users W/o Re-pairing</a>

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


#### <a name='_13648335'>Background: Multiple Device Support</a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='replacement-device'>Scenario: Replacement Device</a>

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of the similar type, not lose their existing data maintained
in the app (e.g., all measures of a given kind may be treated as a single stream),
and yet also be able to distinguish which device took which measurement.

WHEN
: The user acquires <i>&lt;Device2&gt;</i> of the same type <i>&lt;Type&gt;</i>

THEN
: <i>&lt;App&gt;</i> can acquire new measurements <i>&lt;MeasureSet2&gt;</i> from <i>&lt;Device2&gt;</i>

   AND
   : Those measures in <i>&lt;MeasureSet2&gt;</i> can be distinguished as having come from <i>&lt;Device2&gt;</i>


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='alternative-device'>Scenario: Alternative Device</a>

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


#### <a name='manual-entry-of-a-measurement'>Scenario: Manual Entry of a Measurement</a>


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


### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='comment'>Feature: Comments and Additional Data</a>

An App **SHOULD** allow for recording of additional user supplied data.
Users of a device or app for tracking a particular type of measurement may also want to keep track of additional datafor a measure that is not captured by the device, such as recent physical activity that might affect vital signs readings,or type of blood glucose reading with respect to time of most recent meal, or site used for a blood pressure reading.


The recommendations for this feature when implemented with FHIR can be found in the [CommentRecommendations](StructureDefinition-CommentRecommendations.html) Profile.

#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-measurement-recorded'>Scenario: Time of Measurement Recorded</a>

Measurements **SHALL** have a time stamp or time period noting the time of measurement

GIVEN
: a <i>&lt;User&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is performed for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was taken. 


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-recording-stored'>Scenario: Time of Recording Stored</a>

Measurements **SHALL** have a time stamp or time period noting the time the data was recorded

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is recorded in <i>&lt;Infrastructure&gt;</i> for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was recorded. 


#### <a name='_288665596'>Background: </a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/-re-pairing'>Scenario: Record a Measurement for Multiple Users w/ Re-pairing</a>

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


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/o-re-pairing'>Scenario: Record a Measurement for Multiple Users W/o Re-pairing</a>

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


#### <a name='_13648335'>Background: Multiple Device Support</a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='replacement-device'>Scenario: Replacement Device</a>

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of the similar type, not lose their existing data maintained
in the app (e.g., all measures of a given kind may be treated as a single stream),
and yet also be able to distinguish which device took which measurement.

WHEN
: The user acquires <i>&lt;Device2&gt;</i> of the same type <i>&lt;Type&gt;</i>

THEN
: <i>&lt;App&gt;</i> can acquire new measurements <i>&lt;MeasureSet2&gt;</i> from <i>&lt;Device2&gt;</i>

   AND
   : Those measures in <i>&lt;MeasureSet2&gt;</i> can be distinguished as having come from <i>&lt;Device2&gt;</i>


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='alternative-device'>Scenario: Alternative Device</a>

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


#### <a name='manual-entry-of-a-measurement'>Scenario: Manual Entry of a Measurement</a>


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


#### <a name='user-supplied-data'>Scenario: User Supplied Data</a>

A User can add a comment to a measurement to provide additional data.

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


### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='corrections'>Feature: Corrections and Deletions</a>

An App **SHOULD** allow for the user to correct or "delete" incorrect data.
Users of a device or app for **SHALL** have the ability to correct or remove incorrect data.


The requirements for this feature when implemented with FHIR can be found in the [CorrectionsRequirements](StructureDefinition-CorrectionsRequirements.html) Profile.

#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-measurement-recorded'>Scenario: Time of Measurement Recorded</a>

Measurements **SHALL** have a time stamp or time period noting the time of measurement

GIVEN
: a <i>&lt;User&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is performed for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was taken. 


#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='time-of-recording-stored'>Scenario: Time of Recording Stored</a>

Measurements **SHALL** have a time stamp or time period noting the time the data was recorded

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : <i>&lt;Infrastructure&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> is recorded in <i>&lt;Infrastructure&gt;</i> for a <i>&lt;User&gt;</i>

THEN
: that <i>&lt;Measurement&gt;</i> has a time stamp or time period indicating when it was recorded. 


#### <a name='_288665596'>Background: </a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/-re-pairing'>Scenario: Record a Measurement for Multiple Users w/ Re-pairing</a>

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


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='record-a-measurement-for-multiple-users-w/o-re-pairing'>Scenario: Record a Measurement for Multiple Users W/o Re-pairing</a>

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


#### <a name='_13648335'>Background: Multiple Device Support</a>

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


##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='replacement-device'>Scenario: Replacement Device</a>

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of the similar type, not lose their existing data maintained
in the app (e.g., all measures of a given kind may be treated as a single stream),
and yet also be able to distinguish which device took which measurement.

WHEN
: The user acquires <i>&lt;Device2&gt;</i> of the same type <i>&lt;Type&gt;</i>

THEN
: <i>&lt;App&gt;</i> can acquire new measurements <i>&lt;MeasureSet2&gt;</i> from <i>&lt;Device2&gt;</i>

   AND
   : Those measures in <i>&lt;MeasureSet2&gt;</i> can be distinguished as having come from <i>&lt;Device2&gt;</i>


##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='alternative-device'>Scenario: Alternative Device</a>

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


#### <a name='manual-entry-of-a-measurement'>Scenario: Manual Entry of a Measurement</a>


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


#### <a name='user-supplied-data'>Scenario: User Supplied Data</a>

A User can add a comment to a measurement to provide additional data.

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


#### <a name='correction'>Scenario: Correction</a>

Users can correct a measurement.

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


#### <a name='deletion'>Scenario: Deletion</a>

Users can delete a measurement.

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

