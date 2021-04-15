@Device-Should @App-Should @Infra-Should
Feature: Software Version
    The Software Version associated with a system should be available.

    The Software Version can be the physical network address (e.g., MAC address) or other identifier
    assigned to uniquely identify the device on a network (wired or unwired)

Scenario: Software Version can be Accessed
	The Software Version can be access from the device or application.

    Given A <Device Record>
    And a <Software Version>
    And an <App> running on <App Runner>
    When The <Device> is connected to the <App> and <App Runner>
    Then the <Software Version> can be discovered