@Device-Shall @App-Shall @Infra-Shall
Feature: A Time Stamp or Time Period is Recorded for Each Measurement
 The time stamp or time period associated with a measurement shall be recorded and reported for each measurement taken,
 and the time when the measure was recorded is also tracked.

 Note: These requirements are checked for each measurement for which the system is
 being assessed.  If the requirement fails for **ANY** measurement, the requirement is considered to not be met.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Measurements have a time stamp or time period noting the time of measurement
Given a <User>
 When a <Measurement> is performed for a <User>
 Then that <Measurement> has a time stamp or time period indicating when it was taken.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Measurements have a time stamp or time period noting the time it was recorded/stored
Given a <User>
  And <Infrastructuree>
 When a <Measurement> is recorded in <Infrastructure> for a <User>
 Then that <Measurement> has a time stamp or time period indicating when it was recorded.

