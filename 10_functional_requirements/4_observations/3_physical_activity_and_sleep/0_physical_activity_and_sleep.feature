@Device-Shall @App-Shall @Infra-Shall
Feature: Physical Activities including Sleep is Measured
The system shall record the duration and other qualities of physical activities that it can detect.

Scenario: Activities are recorded
Given a <User>
  And an <Activity>
 When the <User> performs that activity
 Then at least one <Measurement> is provided describing that activity
  And other <Qualifiers> of the activity may be present

@App-Should @Infra-Should
Scenario: SNOMED CT Coded Measurement
The system should provide SNOMED CT or LOINC codes describing the physical activity or sleep and other quality measurements
along with the duration of the activity.

  Given a <Measurement> of a physical activity, sleep or quality descriptor of such activity
   When the <Measurement> is retrieved
   Then that <Measurement> is associated with a <SNOMED CT Code> or a <LOINC Code> describing the activity or quality descriptor

