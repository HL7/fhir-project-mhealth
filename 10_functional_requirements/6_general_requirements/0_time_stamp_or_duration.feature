@Device-Shall @App-Shall @Infra-Shall
Feature: A Time Stamp or Time Period is Recorded for Each Measurement
 The time stamp or time period shall be recorded and reported for each measurement taken

 Note: These requirements are checked for each vital sign, physical activity or sleep measure for which the system is
 being assessed.  If the requirement fails for **ANY** measurement, the requirement is considered to not be met.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Vital Signs have a time stamp
Given a <User>
 When a <Measurement> of the <User> vital signs is performed or recorded
 Then that <Measurement> has a time stamp indicating when it was taken.

@Device-Shall @App-Shall @Infra-Shall
Scenario: Physical Activity or Sleep has a Time Period
Given a <User>
 When a <Measurement> of the <User> physical activity or sleep is performed or recorded
 Then that <Measurement> has a time period indicating when it occured.
