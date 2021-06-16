@Device-Should
Feature: Battery Charge
    The level of battery charge for a device should be reported.

    Reporting the battery charge level for a device enables an App to alert
    a user that the device needs recharging.

    NOTE: Some devices which may be assessed using this guide may have to
    meet more stringent requirements to ensure patient safety. That is outside
    of the scope of this guide.

Scenario: Battery Charge can be Accessed
	Battery charge status can be accessed on devices which have a battery.

    Given A <Device Record>
    And a <Charge Level>
    When The <Device> is connected to the <App> and <App Runner>
    Then <Charge Level> for <Device> is reported by <App> [[ Observation#BatteryCharge: code = urn:iso:std:iso:11073:10101#67996 "MDC_ATTR_VAL_BATT_CHARGE", subject only Reference(Device), valueQuantity.value 1..1, valueQuantity.code = #'%', valueQuantity.system = UCUM, valueQuantity.unit = "%"]]