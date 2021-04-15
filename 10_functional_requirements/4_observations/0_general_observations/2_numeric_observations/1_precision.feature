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

Given A <System> (either a Device or an App)
  And a set of <Measurements> that can be produced by <System>
 When <Measurements> are examined
 Then The precision of each <Measurement> in <Measurements> is appropriate
  And the unit of each <Measurement> in <Measurements> is appropriate

@App-Should @Device-Should
Scenario: Converted results are not reported with more precision than is appropriate.
A converted result should not be reported with more significant digits than the originally
measured value.

A height is reported as 72 inches (with 2 significant digits), when converted to
centimeters the computation would result in a value of 182.88 cm.  However, reporting that value
implies a precision of +/- 0.01 cm, when in fact, it is precise only to +/- 2.54 cm.  It should be reported as 180cm (again,
having 2 significant digits).  In the other direction, a height of 182 cm might be computed as 71.6535 inches.
However, that result has an implied precision of +/- 0.0001 inches, when in fact it is precise to no more than +/- 0.3937007874 inches.
It should be repoorted as 71.7 inches, since 182 has three significant digits of precision.

Given a <Measurement> reported as in <Orginal Unit System> with <Original Precision>
  And a <Device> or <App>
 When the <Meausurement> is reported as <Converted Value> in <Converted Unit System> with <Converted Precision>
  And <Orignal Unit System> != <Converted Unit System>
 Then  <Converted Significant Digits> = <Original Significant Digits>