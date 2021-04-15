@App-Shall @Infra-Shall
Feature: User Contact Information
    The App or Infrastructure shall be able to associate the user's contact
information (e.g., e-mail, address, phone number) with the user.

Scenario: Contact information exists
The user has contact information.

    Given a <User>Record
    And a <Contact> information item
    When <User> is retrieved
    Then <User> contains one or more <Contact>
    And <Contact> is one of the following:
    * <Contact> is the user's postal address, or
    * <Contact> is the user's e-mail address, or
    * <Contact> is the user's telephone number
    But  <Contact> is not something else

