@Device-Shall @App-Shall @Infra-Shall
Feature: Device can be Identified
    The device that performs a measurement shall be uniquely identified.

Each type of device has attributes with regard to precision, accuracy and quality which
can impact the interpretation of measurements taken by the device.  Knowledge of the
device helps greatly in interpreting the results.

Scenario: Device identifier is Unique

    The device identifier shall be unique within the namespace defined by the system
    (Device + App + Infrastructure).

    The point of this assessment is that the mechanism by which devices are identified
be sufficient to demonstrate that identifiers are unique.  The device identifier can be
a unique device identifier (UDI), a MAC or physical network address (e.g., the BlueTooth device
address), or some other unique identifier that only applies to a single device.

    Given A <Device> that performs a measurement
    And an <App> that records a measurement
    And <Infrastructure> that reports a measurement
    And An <Identifier> for that <Device>
    When The mechanism for assigning <Identifier> is examined
    Then <Identifier> is uniquely assigned to <Device>

@Device-Should @App-Should @Infra-Should
Scenario: The device has a Unique Device Identifier (UDI)

    The device should have a UDI.

    The [Unique Device Identification System](https://www.fda.gov/medical-devices/unique-device-identification-system-udi-system/udi-basics)
(UDI System) enables users of device related data to identify the devices providing measurements
and enables analysis of device data with regard to issues, errors, accuracy, et cetera.

NOTE: The UDI should be the primary identifier for the device

    Given A <Device Record>
    When The <Device Record> is examined
    Then The <Device Record> contains a UDI for the device
     And The <UDI> is the primary (first) identifier provided for the device.