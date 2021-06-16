Features in the Attribution category ensure that metadata about reported measurements
are included to identify the device creating a measurement, the author creating manually
entered data, and that devices are not permanently linked to a given user and can be
readily replaced at need.

This metadata is typically considered to be Provenance information (related to
the [Provenance](https://www.hl7.org/fhir/R4/provenance.html) FHIR Resource of the same name).
Provenance information helps establish authenticity of the recorded information, can
be used to identify issues related to a specific device or type of device.

When this metadata is not available, operational procedures can be used to obtain some
measure of assurance about the source data, but do not provide nearly as strong
assurance as when it is.

Many mobile devices are small, readily lost or broken.  Anyone who has run their
fitness tracker through the laundry can attest to the fact they may need to be replaced.  The
ability to connect the measurement to the device allows receivers of measurement
data to rule in or out a change in device as a reason for change in resulting
measurements.  Apps, devices and infrastructure should enable such capabilities.

Some devices easily accommodate use by multiple members of the same household to use
them (e.g., weight scales and blood pressure cuffs).  Additional requirements in this
category ensure that devices and apps which work with them can support this sort of
use.  Even devices considered to be personal use (a smart watch or fitness tracker)
might be shared as one person "tries it out" for a bit to see if it's something they
want to acquire for themselves.  Devices can also be handed down or off to others as
users upgrade and acquire new technology.

###<span class='glyphicon text-success glyphicon-dashboard'/> <a name='measurement_device_identified'>Feature: Measurement Device Can be Identified</a>

The device that performs the measurement **SHALL** be uniquely identified and that identifier**SHALL** persist throughout that devices lifetime.

Each type of device has attributes with regard to precision, accuracy and quality that can impact
the interpretation of measurements taken by the device. Knowledge of the device helps greatly in
interpreting the results.


####<a name='device-is-identified'>Scenario: Device is Identified</a>

A device is identified with a unique identifier and that can be determined from the measurement.

GIVEN
: <i>&lt;Device&gt;</i> performs a measurement

   AND
   : <i>&lt;Device&gt;</i> is uniquely identified with <i>&lt;Identifier&gt;</i>

WHEN
: <i>&lt;Measurement&gt;</i> has been obtained

THEN
: <i>&lt;Device&gt;</i> can be found from <i>&lt;Measurement&gt;</i> 

   AND
   : <i>&lt;Identifier&gt;</i> can be found from <i>&lt;Device&gt;</i>   


####<a name='device-identifier-persists'>Scenario: Device Identifier Persists</a>

The unique identifier of the device is consistent across measurements.

GIVEN
: <i>&lt;Device&gt;</i> that can perform a measurement

   AND
   : <i>&lt;User1&gt;</i>

   AND
   : <i>&lt;User2&gt;</i>

   AND
   : an <i>&lt;App1&gt;</i> used by <i>&lt;User1&gt;</i>

   AND
   : an <i>&lt;App2&gt;</i> used by <i>&lt;User2&gt;</i> (can be the same app as for User1)

WHEN
: a <i>&lt;Measurement1&gt;</i> is taken for <i>&lt;User1&gt;</i> by <i>&lt;App1&gt;</i>

   AND
   : a <i>&lt;Measurement2&gt;</i> is taken for <i>&lt;User2&gt;</i> by <i>&lt;App2&gt;</i>

THEN
: there is an <i>&lt;Identifier1&gt;</i> in the <i>&lt;Device&gt;</i> record associated with <i>&lt;Measurement1&gt;</i>

   AND
   : there is an <i>&lt;Identifier2&gt;</i> in the <i>&lt;Device&gt;</i> record associated with <i>&lt;Measurement2&gt;</i>

   AND
   : <i>&lt;Identifier2&gt;</i> = <i>&lt;Identifier1&gt;</i>


###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='manual_entry_detectable'>Feature: Identify Manually Entered Data and the Author of it</a>

If an app enables recording of outside measurements that app **SHALL** identify
measures as that have been manually entered by the user of the app, and the
user **SHALL** be identified also.


####<a name='manually-entered-data-can-be-detected'>Scenario: Manually Entered Data Can be Detected</a>

Manually entered data **SHALL** be distinguishable from device recorded data.

GIVEN
: An app that enables user entry of data manually,

   AND
   : a <i>&lt;User&gt;</i>

   AND
   : a manually entered <i>&lt;Measurement&gt;</i>

WHEN
: <i>&lt;Measurement&gt;</i> is accessed by another system or transmitted to infrastructure

THEN
: The <i>&lt;Measurement&gt;</i> can be identified as having been manually entered. 


####<a name='the-user-who-entered-the-data-can-be-identified.'>Scenario: The User Who Entered the Data Can be Identified.</a>

The user manually entering data **SHALL** be recorded.

GIVEN
: An <i>&lt;App&gt;</i> that enables user manual entry of data

   AND
   : a <i>&lt;User&gt;</i>

   AND
   : a manually entered <i>&lt;Measurement&gt;</i>

WHEN
: <i>&lt;Measurement&gt;</i> is accessed by another system or transmitted to infrastructure

THEN
: The <i>&lt;Measurement&gt;</i> can be identified as having been manually entered by <i>&lt;User&gt;</i>. 

