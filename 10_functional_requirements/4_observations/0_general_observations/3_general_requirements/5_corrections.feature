@App-Shall @Infra-Shall
Feature: Corrections and Deletions
  An App should allow for the user to correct or "delete" incorrect data.

  Users of a device or app for shall have the ability to correct or remove incorrect data.

  Scenario: Correction
  Users can correct a measurement.

  Given an <App>
  And <Infrastructure>
  And a <User>
  When an <Measurement> is captured by the <Device> but is recorded incorrectly (e.g., against wrong patient)
  Then the <User> can supply a <Corrected Measurement>
   And the <App> can communicate that <Corrected Measurement> to the <Infrastrucure>
   And the <Infrastructure> can report that <Corrected Measurement> [[ Observation#CorrectedMeasurement: status from CorrectionsAndDeletions ]]

  Scenario: Deletion
  Users can delete a measurement.

  Given an <App>
  And <Infrastructure>
  And a <User>
  When an <Measurement> is captured by the <Device> but is recorded incorrectly (e.g., against wrong patient)
  Then the <User> can mark the <Measurement> as deleted or invalid
   And the <App> can communicate that mark to the <Infrastrucure>
   And the <Infrastructure> will either no longer report the incorrect <Measurement> or will report it as being invalid. [[ Observation#DeletedMeasurement: status from CorrectionsAndDeletions ]]
