@App-Shall @Device-Shall
Feature: Precision is Documented and Appropriate for each Measurement
Precision shall be Documented and Appropriate for each Measurement

@App-Shall @Device-Shall
Scenario: Precision is Documented
Given a <Measurement>
  And a <Device> or <App>
 When <Documentation> is examined
 Then The precision of the <Measurement> is documented in <Documentation>
  And The precision is appropriate for the <Measurement>

@App-Shall @Device-Shall
Scenario: Precision and units are Appropriate
 The precision and units of a measurement shall be appropriate to the measurement.
 [Should we just add this for each observation with more detail specific
  to the measurement? For example, say that heart rate should be measured
  in beats per minute, precision is to the whole number of beats? -- KWB]

Given A <System> (either a Device or an App)
  And a set of <Measurements> that can be produced by <System>
 When <Measurements> are examined
 Then The precision of each <Measurement> in <Measurements> is appropriate
  And the unit of each <Measurement> in <Measurements> is appropriate

@App-Should @Device-Should
Scenario: Converted results are not over-precise
A converted result should not be reported with greater precision that the originally measured value.

Unit conversion formulae exist to convert between different systems of units.  These values
are very precisely know. Simple math used to convert from a measured value in one unit system
often results in overprecise reported values in other unit system.  The converted value should be
limited to be no more precise than the original value.  For example, height is often measured
in inches or centimeters, and the value when recorded in one unit system can often be reported
in a different unit system depending on system configuration.  Thus, a value recorded in whole inches
should not be reported in more than whole centimeters.

Given a <Measurement> reported in a <Orginal Unit System> with <Original Precision>
  And a <Device> or <App>
 When the <Meausurement> is reported <Other Precision> in <Other Unit System>
  And <Orignal Unit System> != <Other Unit System>
 Then The <Other Precision> = <Original Precision>
