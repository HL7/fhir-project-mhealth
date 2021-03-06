@Device @App @Infra
Feature: Clinical Blood Pressure Measurement
The system shall be able to capture and report additional data used for clinical interpretation.

To supplement this blood pressure observation, the mean blood pressure should be computed, and the measurement site and
cuff size (where applicable) shall be reported.

@Device-Should @App-Should @Infra-Should
Scenario: Report Mean Blood Pressure
The system should be able to report mean blood pressure as computed from systolic and dyastolic measures
or through other means.
Given a <System> that can report blood pressure
When a <Blood Pressure> measurement is performed
Then the <Mean Blood Pressure> is also reported

@Device-Shall @App-Shall @Infra-Shall
Scenario: Report Measurement Site
The measurement site shall be able to be reported with each blood pressure measurement

Given a <System> that can report blood pressure
When a <Blood Pressure> measurement is performed
Then the <Measurement Site> can be associated with the <Measurement>

@Device-Shall @App-Shall @Infra-Shall
Scenario: Report Cuff Size
If a cuff is used to measure blood pressure, the cuff size shall be able to be reported with each blood pressure measurement.
Given a <System> that can report blood pressure
When a <Blood Pressure> measurement is performed
Then the <Cuff Size> can be associated with the <Measurement>
