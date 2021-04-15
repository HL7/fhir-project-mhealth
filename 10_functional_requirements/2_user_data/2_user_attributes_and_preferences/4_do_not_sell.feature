@App-Shall @Infra-Shall
Feature: The user can request their data not be sold or otherwise shared for commercial gain.
The system shall enable a user to request their data not be sold or otherwise shared for
commercial gain.

Scenario:  User requests their data not be sold.
  A user can express a preference about the sale of their data to others.

Given A <System> (an App or Infrastructure)
  And published manufacturer's <Documentation> for the system
 When the manufacturer's <Documentation> is reviewed,
 Then it describes how a user can request that their data not be sold.