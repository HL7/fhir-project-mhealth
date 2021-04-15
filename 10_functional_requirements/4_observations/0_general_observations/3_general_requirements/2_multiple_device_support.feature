@App @Device
Feature: Multiple Device Support
An app shall be able to collect data for a given patient
from multiple (possibly identical) devices and identify the device from
which they were collected.

Background: Multiple Device Support
The following scenarios describe further support requirements for similar
and different devices.  The requirements below apply to both of the scenarios
that follow.

Given An app <App> that supports a device <Device1> of a particular <Type>
  And <MeasureSet1> that were acquired through <Device1>
 Then Previously recorded <MeasureSet1> still exists
  And can be distinguished as having come from <Device1>

@App-Shall @Device-Shall
Scenario: Replacement device

Patients may replace a broken, failed, lost or otherwise non-functional
device with a new device of the same type, not lose their existing data maintained
in the app (e.g., all measures of a given kind may be treated as a single stream),
and yet also be able to distinguish which device took which measurement.

When  The user acquires <Device2> of the same type <Type>
Then  <App> can acquire new measurements <MeasureSet2> from <Device2>
 And  Those measures in <MeasureSet2> can be distinguished as having come from <Device2>

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

When  The user acquires device <Device2> of the same type <Type> or a different type <Type2>
Then  <App> can acquire new measurements <MeasureSet2> from <Device2>
  And <App> can acquire new measurements <MeasureSet3> from <Device1>
  And Measures in <MeasureSet3> can be distinguished as having come from <Device1>
  And Measures in <MeasureSet2> can be distinguished as having come from <Device2>


