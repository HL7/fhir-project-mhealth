@App-Shall @Infra-Shall
Feature: User Contact Information
    The App or Infrastructure shall be able to associate the user's contact
information (e.g., e-mail address, phone number) with the user.

Scenario: Contact information exists

    Given a <User>Record
    And a <Contact> information item
    When <User> is retrieved
    Then <User> contains <Contact>
    And <Contact> is one of the following:
    * <Contact> is the user's postal address, or
    * <Contact> is the user's e-mail address, or
    * <Contact> is the user's telephone number, or
    But  <Contact> is not something else

