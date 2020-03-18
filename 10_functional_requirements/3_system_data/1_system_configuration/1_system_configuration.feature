@App-Shall @Device-Shall
Feature: The mechanism to configure a system to use different units is documented.
The means by which a system is configured to report or use different units is documented.

@App-Shall @Device-Shall
Scenario: Unit configuration is Documented

Given a <Device or App>
  And <Documentation> for it
 When the <Documentation> is examined
 Then the means by which the <Device or App> can be configured to use different units is documented.
