@App-Should @Infra-Should
Feature: User Manual Entry
  An App should allow for manual recording of data from external sources.

  Users of a device or app for tracking a particular type of measurement may also want to keep track of externally generated
  measurements for the purposes of verifying device calibration, keeping general track of what the device helps them monitor,
  or for other reasons.

  Scenario: Manual Entry of a Measurement

  Given an <App>
  And <Infrastructure>
  And a <User>
  When an external <Measurement> is available to the <User>
  Then the <User> can record <Measurement> in the <App>
   And the <Infrastructure> can report that <Measurement>