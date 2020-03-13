Features in the Attribution category ensure that metadata about reported measurements
are included to identify the device creating a measurement, the author creating manually
entered data, and that devices are not permanently linked to a given user and can be
readily replaced at need.

This metadata is typically considered to be Provenance information (related to
the [Provenance](//hl7.org/fhir/R4/Provenance.html) FHIR Resource of the same name).
Provenance information helps establish authenticity of the recorded information, can
be used to identify issues related to a specific device or type of device.

When this metadata is not available, operational procedures can be used to obtain some
measure of assurance about the source data, but do not provide nearly as strong
assurance as when it is.

Many mobile devices are small, readily lost or broken.  Anyone whose run their fitness
tracker through the laundry can attest to the fact they may need to be replaced.  The
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
### <span class='glyphicon text-success glyphicon-dashboard'/> Feature: Device is Uniqely Identified

The device that performs the measurement ****SHALL**** be uniquely identified.

Each type of device has attributes with regard to precision, accuracy and quality which
can impact the interpretation of measurements taken by the device.  Knowledge of the
device helps greatly in interpreting the results.

#### Scenario: Device Identifier is Unique


GIVEN
: Two devices {D1, D2} that perform a measurement

   AND
   : Identifiers {I1, I2} that are determined from {D1, D2} respectively

WHEN
: The identifiers are compared.

THEN
: {I1} <> {I2}

#### Scenario: Device is Identified


GIVEN
: A device {D} that performs a measurement

   AND
   : is uniquely identified with identifier {I}

WHEN
: A data object {M} representing a measurement that has been obtained

THEN
: The device identifier {I} can be found from {M}

### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: Identify Author of Manually Entered Data

An app that enables recording of outside measurements **SHALL** identify
those measures as having been manually entered by the user of the app, and the user
**SHALL** be identified also.

#### Scenario: Manually Entered Data Can be Identified


GIVEN
: An app that enables user entry of data manually, a user {U} and a manually entered measurement {M}

WHEN
: {M} is accessed by another system or transmitted to infrastructure

THEN
: The {M} can be identified as having been manually entered.

#### Scenario: The User Who Entered the Data Can be Identified.


GIVEN
: An app {A} that enables user manual entry of data

   AND
   : a user {U}

   AND
   : a manually entered measurement {M}

WHEN
: {M} is accessed by another system or transmitted to infrastructure

THEN
: The {M} can be identified as having been manually entered by {U}.

### Feature: Multiple User Support

A given device ****SHALL**** be able to be used by more than one user.

Users from the same family may share a device to take similar measurements (e.g., blood pressure) using
an App on their personal device.

#### <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Record a Measurement for Multiple Users w/ Re-pairing

It's expected that devices will be able to be shared across users and apps
but that some setup or configuration may be needed when transferred between
users (e.g., pairing the device with the platform on which the app is running).
Many smaller devices can only be paired with one system at a time.

GIVEN
: A device {D} that performs a measurement,

   AND
   : two users {U1} and {U2},

   AND
   : an App {A} that runs on both user's devices.

WHEN
: The device {D} has been recognized by {A} on both {U1} and {U2}'s devices

THEN
: The device can take a measurement for {U1}

   AND
   : The device can take a measurement for {U2}

BUT
: The device may need to be configured (e.g., paired with) each user's device before taking the measurement.

#### <span class='glyphicon text-info glyphicon-dashboard'/> Scenario: Record a Measurement for Multiple Users W/o Re-pairing

Ideally, a device should be able to be paired with a small number
of other systems to enable it to be used by different people or
with different systems (e.g., a smart phone or a tablet). This
should not require repairing (though it may require activating
an already paired connection).

GIVEN
: A device {D} that performs a measurement, two users {U1} and {U2},

   AND
   : an App {A} that runs on both user's devices.

WHEN
: The device {D} has been recognized by {A} on both {U1} and {U2}'s devices

THEN
: The device can take a measurement for {U1}

   AND
   : The device can take a measurement for {U2}

   AND
   : The device does not require being reconfigured (e.g., paired with) each user's device before taking the measurement.

### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> Feature: Multiple Device Support

An app ****SHALL**** be able to collect data for a given patient
from multiple (possibly identical) devices and identify the device from
which they were collected.

#### Background: Multiple Device Support

The following sections describe further support requirements for similar
and different devices.  The steps below apply to both cases.

GIVEN
: An app {A} that supports a device {D1} of a particular type {T}

   AND
   : measures {M1} that were acquired through {D1}

THEN
: Previously recorded measures in {M1} still exist

   AND
   : can be distinguished as having come from {D1}

##### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Replacement Device

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of a similar type, not lose their existing data maintained
in the app, and yet also be able to distinguish which device took which measurement.

WHEN
: The user acquires device {D2} of the same type {T}

THEN
: {A} can acquire new measurements {M2} from {D2}

   AND
   : Those measures in {M2} can be distinguished as having come from {D2}

##### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> Scenario: Alternative Device

A user should be able to acquire and use a similar or different kind
of device to work with an application to enable data collection
under different circumstances or in different environments.

For example, blood pressure can be measured
on the arm using a traditional pneumatic cuff, or on the wrist using a
different type of device.  The former may be used at home, and the latter
when traveling because it is smaller and easier to carry (but may be
less accurate, or more difficult to use).  The main idea here is that an app can work
with multiple devices with no user intervention after initial configuration.

WHEN
: The user acquires device {D2} of the same type {T} or a different type {T2}

THEN
: {A} can acquire new measurements {M2} from {D2}

   AND
   : {A} can acquire new measurements {M3} from {D1}

   AND
   : Measures in {M3} can be distinguished as having come from {D1}

   AND
   : Measures in {M2} can be distinguished as having come from {D2}

