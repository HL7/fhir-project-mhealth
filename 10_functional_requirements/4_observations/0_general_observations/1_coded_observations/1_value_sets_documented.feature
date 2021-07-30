@App @Device
Feature: Value Sets for coded measurements are Documented and can be mapped to standards

Fixed values in a list returned by the device or communicated by the App shall be documented.

@App-Shall @Device-Shall
Scenario: Value Sets are Documented

Given a <Device>
  And an <App>
  And <Documentation> for them
 When a <Data Record> is obtained
 Then the coded values that can found in <Data Record> are described in <Documentation>

@App-Should @Device-Should
Scenario: Value Sets should be mappable to Standard Terminologies

Given a <Value Set> used for a Device or App
 When the <Value Set> is compared to standard terminologies (e.g., SNOMED CT&reg;, LOINC&reg;)
 Then the values can be readily mapped.


