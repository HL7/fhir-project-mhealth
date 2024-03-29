@Device-Shall @App-Shall @Infra-Shall
Feature: A Time Stamp or Time Period is Recorded for Each Measurement
 The time stamp or time period associated with a measurement shall be recorded and reported for each measurement taken,
 and the time when the measure was recorded is also tracked.

 Note: These requirements are checked for each measurement for which the system is
 being assessed.  If the requirement fails for **ANY** measurement, the requirement is considered to not be met.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Time of measurement recorded
Measurements shall have a time stamp or time period noting the time of measurement
Given a <User>
 When a <Measurement> is performed for a <User>
 Then that <Measurement> has a time stamp or time period indicating when it was taken. [[ Observation#Measurement: obeys effectiveDateTime.exists() or effectivePeriod.exists() ]]

@Device-Shall @App-Shall @Infra-Shall
Scenario: Time of recording stored
Measurements shall have a time stamp or time period noting the time the data was recorded
Given a <User>
  And <Infrastructure>
 When a <Measurement> is recorded in <Infrastructure> for a <User>
 Then that <Measurement> has a time stamp or time period indicating when it was recorded. [[ Observation#Measurement: issued MS, issued 1..1 ]]

