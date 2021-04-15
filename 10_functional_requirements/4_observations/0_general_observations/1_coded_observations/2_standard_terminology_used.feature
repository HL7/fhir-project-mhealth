@App-Should
Feature: Standards Terminology is used for Measurements
If codes are present in measurements, standard terminology should be used for observation codes, values and units.

Scenario: Codes describing Observations use LOINC&reg; or SNOMED CT&reg;
Measurements should be described using LOINC and/or SNOMED CT

Given a <Measurement>
 When the <Code> describing it is reviewed
 Then it comes from SNOMED CT or LOINC

Scenario: Units are coded using the UCUM Unit terminology system
Units should be coded using UCUM

Given a <Measurement>
 When the <Value> describing it is reviewed
 Then the units are recorded using UCUM


Scenario: Coded Values use SNOMED CT or ICD-10
Result values in a measurement should use SNOMED CT or ICD-10
NOTE: ICD-10 may include national variants (e.g., ICD-10-CM in the US)

Given a <Measurement>
 When the <Value> describing it is reviewed
 Then it comes from SNOMED CT or ICD-10
