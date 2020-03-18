@App-Shall @Device-Shall @Infra-Shall
Feature: The mechanism to obtain the system configuration is documented.
The means by which a system configuration can be inspected is documented.

Configuration includes the system identifier, software version, and other
configurable system attributes (e.g., units).

@App-Shall @Device-Shall
Scenario: The means to access system configuration shall be documented

Given a <System>
  And <Documentation> for it
 When the <Documentation> is examined
 Then the means by which the <Configuration> can be examined for <System> is documented.
