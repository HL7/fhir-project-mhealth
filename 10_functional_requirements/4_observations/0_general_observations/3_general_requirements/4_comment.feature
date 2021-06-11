@App-Should @Infra-Should
Feature: Comments and Additional Data
  An App should allow for recording of additional user supplied data.

  Users of a device or app for tracking a particular type of measurement may also want to keep track of additional data
  for a measure that is not captured by the device, such as recent physical activity that might affect vital signs readings,
  or type of blood glucose reading with respect to time of most recent meal, or site used for a blood pressure reading.

  Scenario: User Supplied Data
  A User can add a comment to a measurement to provide additional data.

  Given an <App>
  And <Device>
  And <Infrastructure>
  And a <User>
  When an <Measurement> is captured by the <Device>
  Then the <User> can record <Additional Data> in the <App>
   And the <App> can associate that <Additional Data> with the <Measurement>
   And the <Infrastructure> can report that associated <Additional Data> [[ Observation#MeasurementComment: note MS, note 1..1 ]]