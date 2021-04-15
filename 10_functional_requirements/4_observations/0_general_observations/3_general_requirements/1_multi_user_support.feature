@Device @App
Feature: Multiple User Support

A given device shall be able to be used by more than one user.

Users from the same family may share a device to take similar measurements (e.g., blood pressure) using
an App on their personal device.

Background:
The following scenarios describe further support requirements for similar
and different devices.  The requirements below apply to both of the scenarios
that follow.

Given  A <Device> that performs a measurement,
  And <User1>
  And <User2>,
  And an <App> for <User1> that runs on <MobileDevice1>
  And the same <App> for <User2> that runs on <MobileDevice2>
When <Device> has been recognized by <App> on <MobileDevice1>
 And <Device> has been recognized by <App> on <MobileDevice2>

@Device-Shall @App-Shall
Scenario: record a measurement for multiple users w/ re-pairing

It's expected that devices will be able to be shared across users and apps
but that some setup or configuration may be needed when transferred between
users (e.g., pairing the device with the platform on which the app is running).
Many smaller devices can only be paired with one system at a time.


Then The <Device> can take a measurement for <User1>
 And The <Device> can take a measurement for <User2>
 But The <Device> may need to be configured (e.g., paired with) <MobileDevice1> or <MobileDevice2> before taking the measurement.

@Device-Should @App-Should
Scenario: record a measurement for multiple users w/o re-pairing

Ideally, a device should be able to be paired with a small number
of other systems to enable it to be used by different people or
with different systems (e.g., a smartphone or a tablet). This
should not require repairing (though it may require activating
an already paired connection).

Then  <Device> can take a measurement for <User1>
  And <Device> can take a measurement for <User2>
  But The <Device> does not need to be reconfigured (e.g., paired with) <MobileDevice1> or <MobileDevice2> before taking the measurement.



