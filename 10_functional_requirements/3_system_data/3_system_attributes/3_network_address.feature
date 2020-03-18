@Device-Shall @App-Shall @Infra-Shall

Feature: Network Address
    The network address of a device can be discovered.

Scenario: Network Address can be Accessed

    Given A <Device Record>
    And a <Network Address>
    When The <Device Record> is examined
    Then <Network Address> can be found in <Device Record>