@App @Device
Feature: Multiple Device Support
An app **shall** be able to collect data for a given patient
from multiple (possibly identical) devices and identify the device from
which they were collected.

Background: Multiple Device Support
The following sections describe further support requirements for similar
and different devices.  The steps below apply to both cases.

Given An app {A} that supports a device {D1} of a particular type {T}
  And measures {M1} that were acquired through {D1}
Then  Previously recorded measures in {M1} still exist
  And can be distinguished as having come from {D1}

@App-Shall @Device-Shall
Scenario: Replacement device

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of a similar type, not lose their existing data maintained
in the app, and yet also be able to distinguish which device took which measurement.

When  The user acquires device {D2} of the same type {T}
Then  {A} can acquire new measurements {M2} from {D2}
  And Those measures in {M2} can be distinguished as having come from {D2}

@App-Should @Device-Should
Scenario: Alternative device

A user should be able to acquire and use a similar or different kind
of device to work with an application to enable data collection
under different circumstances or in different environments.

For example, blood pressure can be measured
on the arm using a traditional pneumatic cuff, or on the wrist using a
different type of device.  The former may be used at home, and the latter
when traveling because it is smaller and easier to carry (but may be
less accurate, or more difficult to use).  The main idea here is that an app can work
with multiple devices with no user intervention after initial configuration.

When  The user acquires device {D2} of the same type {T} or a different type {T2}
Then  {A} can acquire new measurements {M2} from {D2}
  And {A} can acquire new measurements {M3} from {D1}
  And Measures in {M3} can be distinguished as having come from {D1}
  And Measures in {M2} can be distinguished as having come from {D2}


