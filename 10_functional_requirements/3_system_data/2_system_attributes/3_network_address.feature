@Device-Should @App-Should
Feature: Network Address
    The network address of a device should be reported.

    The network address can be the physical network address (e.g., MAC address) or other identifier
    assigned to uniquely identify the device on a network (wired or unwired)

Scenario: Network Address can be Accessed
	The network address (e.g., MAC, TCP IP or other identifier) can be access from the device or application.

    Given A <Device Record>
    And a <Network Address>
    And an <App> running on <App Runner>
    When The <Device> is connected to the <App> and <App Runner>
    Then <Network Address> can be discovered [[ Device: url MS, url 1..1]]