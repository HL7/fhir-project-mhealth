@App-Shall @Infra-Shall
Feature: User Unique Identity
    An app/infrastructure shall be able to generate/report the unique identifer for a given user association with a measurement.

This scenario demonstrates the ability of an App to associate a user with an identifier, and in the
process of storing the measurement has associated the measurement with the user's identity.

NOTE: Different kinds of Unique identifiers may be used

Scenario: Identifier exists
Each User is uniquely identified

    Given a <User> Record
    And an <Identifier>
    When <User> is retrieved
    Then <User> contains <Identifier>
    And <Identifier> is one of the following:
    * <Identifier> is the user's e-mail address or
    * <Identifier> is the user's login identifier for another system (e.g., Google, Facebook, Twitter, et cetera) or
    * <Identifier> is the user's selected login name for <App> or
    * <Identifier> is a unique string (e.g., UUID or string) assigned by <App>
    But  <Identifier> is not something else

