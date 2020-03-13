
Feature: Multiple User Support

A given device **shall** be able to be used by more than one user.

Users from the same family may share a device to take similar measurements (e.g., blood pressure) using
an App on their personal device.

@Device-Shall
Scenario: record a measurement for multiple users w/ re-pairing

It's expected that devices will be able to be shared across users and apps
but that some setup or configuration may be needed when transferred between
users (e.g., pairing the device with the platform on which the app is running).
Many smaller devices can only be paired with one system at a time.

Given  A device {D} that performs a measurement,
  And two users {U1} and {U2},
  And an App {A} that runs on both user's devices.
When The device {D} has been recognized by {A} on both {U1} and {U2}'s devices
Then The device can take a measurement for {U1}
 And The device can take a measurement for {U2}
 But The device may need to be configured (e.g., paired with) each user's device before taking the measurement.

@Device-Should
Scenario: record a measurement for multiple users w/o re-pairing

Ideally, a device should be able to be paired with a small number
of other systems to enable it to be used by different people or
with different systems (e.g., a smart phone or a tablet). This
should not require repairing (though it may require activating
an already paired connection).

Given A device {D} that performs a measurement, two users {U1} and {U2},
  And an App {A} that runs on both user's devices.
When  The device {D} has been recognized by {A} on both {U1} and {U2}'s devices
Then  The device can take a measurement for {U1}
  And The device can take a measurement for {U2}
  And The device does not require being reconfigured (e.g., paired with) each user's device before taking the measurement.



