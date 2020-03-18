@App-Should @Device-Should
Feature: The range of numeric values is documented and appropriate for each measure


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
 Then the value of <Unit> is from UCUM