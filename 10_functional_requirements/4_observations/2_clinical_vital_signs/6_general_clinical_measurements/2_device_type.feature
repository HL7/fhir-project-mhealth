@App-Shall @Infra-Shall
Feature: Type of Device is available
The type of device performing the measure shall be able to be determined from the <System>
NOTE: If a device can be associated with a Universal Device Identifier (UDI), it meets the criteria for this
requirement, because this information is included in device metadata accessible via UDI.

Scenario: Type of Device

   Given a <Device> that measures a vital sign
   Then the <Device> must be able to be associated with <Metadata> about it
   And that <Metadata> must describe the <Type> of device