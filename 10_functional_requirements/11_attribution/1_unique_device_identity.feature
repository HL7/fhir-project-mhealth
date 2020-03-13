@Device-Shall

Feature: Device is Uniqely Identified
The device that performs the measurement **shall** be uniquely identified.

Each type of device has attributes with regard to precision, accuracy and quality which
can impact the interpretation of measurements taken by the device.  Knowledge of the
device helps greatly in interpreting the results.

Scenario: Device identifier is Unique

Given Two devices {D1, D2} that perform a measurement
And Identifiers {I1, I2} that are determined from {D1, D2} respectively
When The identifiers are compared.
Then {I1} <> {I2}

Scenario: Device is Identified

Given A device {D} that performs a measurement
And is uniquely identified with identifier {I}

When A data object {M} representing a measurement that has been obtained

Then The device identifier {I} can be found from {M}
