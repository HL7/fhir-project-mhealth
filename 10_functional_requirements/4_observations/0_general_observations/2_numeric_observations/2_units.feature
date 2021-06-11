@App @Device
Feature: Value Sets for units used in measurements are Documented and can be mapped to standards

Fixed values used for units returned by the device or communicated by the App shall be documented.

@App-Shall @Device-Shall
Scenario: Unit Value Sets are Documented

Given a <Device>
  And an <App>
  And <Documentation> for them
 When a <Data Record> with Units is obtained
 Then the Unit values that can found in <Data Record> are described in <Documentation>

@App-Shall @Device-Shall
Scenario: Unit values should be mappable to UCUM

Given a <Unit Value Set> used for a Device or App
 When the <Unit Value Set> is compared to UCUM
 Then the values of <Unit Value Set> can be readily mapped to UCUM.


@App-Should @Device-Should
Scenario: Unit Values use UCUM
Result values in a measurement should use UCUM

Given a <Quantitative Measurement>
 When the <Unit> describing it is reviewed
 Then the value of <Unit> is from UCUM [[Observation#Measurement#QuantitativeMeasurement: valueQuantity MS, valueQuantity 1..1, valueQuantity.system = UCUM]]