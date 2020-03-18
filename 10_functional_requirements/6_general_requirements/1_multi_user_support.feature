@Device @App
Feature: Multiple User Support

A given device shall be able to be used by more than one user.

Users from the same family may share a device to take similar measurements (e.g., blood pressure) using
an App on their personal device.

@Device-Shall @App-Shall
Scenario: record a measurement for multiple users w/ re-pairing

It's expected that devices will be able to be shared across users and apps
but that some setup or configuration may be needed when transferred between
users (e.g., pairing the device with the platform on which the app is running).
Many smaller devices can only be paired with one system at a time.

Given  A <Device> that performs a measurement,
  And <User1>
  And <User2>,
  And an <App> that runs on both user's devices.
When The <Device> has been recognized by <App> on <User1>'s device
 And The <Device> has been recognized by <App> on <User2>'s device
Then The <Device> can take a measurement for <User1>
 And The <Device> can take a measurement for <User2>
 But The <Device> may need to be configured (e.g., paired with) <AppRunner1> or <AppRunner2> before taking the measurement.

@Device-Should @App-Should
Scenario: record a measurement for multiple users w/o re-pairing

Ideally, a device should be able to be paired with a small number
of other systems to enable it to be used by different people or
with different systems (e.g., a smart phone or a tablet). This
should not require repairing (though it may require activating
an already paired connection).

Given  A <Device> that performs a measurement,
  And <User1>
  And <User2>,
  And an <App> that runs on both user's devices.
  And <AppRunner1> for <User1> that runs <App>
  And <AppRunner2> for <User2> that runs <App>
When The <Device> has been recognized by <App> on <User1>'s device
 And The <Device> has been recognized by <App> on <User2>'s device
Then  The <Device> can take a measurement for <User1>
  And The <Device> can take a measurement for <User2>
  But The <Device> doe not need to be configured (e.g., paired with) <AppRunner1> or <AppRunner2> before taking the measurement.



