### Device Identification
@Device-Shall

Feature: The device that performs the measurement **shall**
be uniquely identified.

Each type of device has attributes with regard to precision, accuracy and quality which
can impact the interpretation of measurements taken by the device.  Knowledge of the
device helps greatly in interpreting the results.

#### Scenario: Device is Identified

GIVEN: A device {D} that performs a measurement and is uniquely identified
with identifier {I}
 WHEN: A measurement {M} has been performed
 THEN: The device identifier {I} can be found from the reported measurement


### Patient Linkage to Device
@App-Shall @Infra-Shall

Feature: A measurement **shall** be linked to the patient upon whom it was performed.

### Manual vs. Device Measured Data
@App-Shall @Infra-Shall

Feature: An app that enables recording of outside measurements **shall** identify
those measures as having been manually entered by the user of the app, and the user
shall be identified also.

#### Scenario: Manually entered data can be identified

GIVEN: An app that enables user entry of data manually, a user {U} and a manually
entered measurement {M}
 WHEN: {M} is accessed by another system or transmitted to infrastructure
 THEN: The {M} can be identified as having been manually entered.

#### Scenario: The user who entered the data can be identified.

GIVEN: An app that enables user entry of data manually, a user {U} and a manually
entered measurement {M}
 WHEN: {M} is accessed by another system or transmitted to infrastructure
 THEN: The {M} can be identified as having been manually entered by {U}.


### Multiple User Support

A given device **shall** be able to be used by more than one user.  Users from the same
family may share a device to take similar measurements (e.g., blood pressure) using
an App on their personal device.

#### Scenario: record a measurement for multiple users w/ re-pairing
@Device-Shall
GIVEN: A device {D} that performs a measurement, two users {U1} and {U2},
       and an App {A} that runs on both user's devices.
 WHEN: The device {D} has been recognized by {A} on both {U1} and {U2}'s devices
 THEN: The device can take a measurement for {U1}
  AND: The device can take a measurement for {U2}
  BUT: The device may need to be configured (e.g., paired with) each user's device
       before taking the measurement.

#### Scenario: record a measurement for multiple users w/o re-pairing
@Device-Should

GIVEN: A device {D} that performs a measurement, two users {U1} and {U2},
       and an App {A} that runs on both user's devices.
 WHEN: The device {D} has been recognized by {A} on both {U1} and {U2}'s devices
 THEN: The device can take a measurement for {U1}
  AND: The device can take a measurement for {U2}
  AND: The device does not require being reconfigured (e.g., paired with) each
       user's device before taking the measurement.

### Multiple Device Support

Feature: An app **shall** be able to collect data for a given patient
from multiple (possibly identical) devices and identify the device from
which they were collected.

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of a similar type, not lose their existing data maintained
in the app, and yet also be able to distinguish which device took which measurement.

#### Scenario: Replacement device
@App-Shall

GIVEN: An app {A} that supports a device {D1} of a particular type {T} and
measures {M1} that were acquired through {D1}
 WHEN: The user acquires device {D2} of the same type {T}
 THEN: {A} can acquire new measurements {M2} from {D2}
  AND: Those measures in {M1} can be distinguished as having come from {D1}
  AND: Those measures in {M2} can be distinguished as having come from {D2}

#### Scenario: Alternative device
@App-Should

A user may acquire a similar or different kind of device to work with
an application to enable data collection under different circumstances
or in different environments.  For example, blood pressure can be measured
on the arm using a traditional pneumatic cuff, or on the wrist using a
different type of device.  The former may be used at home, and the latter
when traveling because it is smaller and easier to carry (but may be
less accurate, or more difficult to use).  The main idea here is that an app can work
with multiple devices with no user intervention after initial configuration.

GIVEN: An app {A} that supports a device {D1} of a particular type {T} and
measures {M1} that were acquired through {D1}
 WHEN: The user acquires device {D2} of the same type {T} or a different type {T2}
 THEN: {A} can acquire new measurements {M2} from {D2}
  AND: {A} can acquire new measurements {M3} from {D1}
  AND: Those measures in {M1, M3} can be distinguished as having come from {D1}
  AND: Those measures in {M2} can be distinguished as having come from {D2}

