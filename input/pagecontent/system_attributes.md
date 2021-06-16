System attributes describe dynamic attributes of a system to one of its clients. While
dynamic and changeable, these are often infrequently altered.  Features in this category
enable other systems to determine metadata about the system and its current state.

Concepts that would be expressed as system attributes include device identity, software
and/or firmware versions[^1].  They may also include information about the current system
state (e.g., the current charge level of the battery used to operate the system, the
current position of the device in GPS coordinates, the most recent ambient Temperature
measured, et cetera).  Attributes are different from recorded measurements because they
can be queried.  When the queried attribute is stored with a timestamp and other metadata,
it effectively becomes a measurement.

Note: Provision of device identifiers, network addresses, software versions, et cetera,
has security ramifications that should be addressed in the overall device privacy and
security reequirements. These issues are addressed separately in the HL7 Consumer Mobile
Health Application Functional Framework (CMHAFF) Specification
(https://cmhaff.healtheservice.com/Standard/ConformanceCriteria/ProductUsage/TabId/1074/Default.aspx) as
well as in the general [Security](http://hl7.org/fhir/security.html) section of the HL7 FHIR
R4 specification.


[^1]: The distinction between software and firmware is getting rather fuzzy these days.
The ability to upgrade a device by "installing new firmware" is nothing more than changing
the software that it runs.  Generally the distinction is made that "it's soft" if it
can be easily changed, and "firm" if it requires a special mode of operation to change
it.  But it's all stored in some form of memory that is very likely rewritable.


###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='current_configuration'>Feature: The Mechanism to Obtain the System Configuration is Documented.</a>

The means by which a system configuration can be inspected is documented.

Configuration includes the system identifier, software version, and other
configurable system attributes (e.g., units).


####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='the-means-to-access-system-configuration-shall-be-documented'>Scenario: The Means to Access System Configuration Shall be Documented</a>

The means by which a user can access system configuration information is described in the documentation.

GIVEN
: a <i>&lt;System&gt;</i>

   AND
   : <i>&lt;Documentation&gt;</i> for it

WHEN
: the <i>&lt;Documentation&gt;</i> is examined

THEN
: the means by which the <i>&lt;Configuration&gt;</i> can be examined for <i>&lt;System&gt;</i> is documented.


###<a name='device_identifier'>Feature: Device Can be Identified</a>

The device that performs a measurement **SHALL** be uniquely identified.

Each type of device has attributes with regard to precision, accuracy and quality which
can impact the interpretation of measurements taken by the device.  Knowledge of the
device helps greatly in interpreting the results.


####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='device-identifier-is-unique'>Scenario: Device Identifier is Unique</a>

The device identifier **SHALL** be unique within the namespace defined by the system(Device + App + Infrastructure).
The point of this assessment is that the mechanism by which devices are identified
be sufficient to demonstrate that identifiers are unique.  The device identifier can be
a unique device identifier (UDI), a MAC or physical network address (e.g., the BlueTooth device
address), or some other unique identifier that only applies to a single device.

GIVEN
: A <i>&lt;Device&gt;</i> that performs a measurement

   AND
   : an <i>&lt;App&gt;</i> that records a measurement

   AND
   : <i>&lt;Infrastructure&gt;</i> that reports a measurement

   AND
   : An <i>&lt;Identifier&gt;</i> for that <i>&lt;Device&gt;</i>

WHEN
: The mechanism for assigning <i>&lt;Identifier&gt;</i> is examined

THEN
: <i>&lt;Identifier&gt;</i> is uniquely assigned to <i>&lt;Device&gt;</i> 


####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='the-device-has-a-unique-device-identifier'>Scenario: The Device Has a Unique Device Identifier</a>

The device **SHOULD** have a UDI.
The [Unique Device Identification System](https://www.fda.gov/medical-devices/unique-device-identification-system-udi-system/udi-basics)
(UDI System) enables users of device related data to identify the devices providing measurements
and enables analysis of device data with regard to issues, errors, accuracy, et cetera.

NOTE: The UDI **SHOULD** be the primary identifier for the device

GIVEN
: A <i>&lt;Device Record&gt;</i>

WHEN
: The <i>&lt;Device Record&gt;</i> is examined

THEN
: The <i>&lt;Device Record&gt;</i> contains a UDI for the device. 


###<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='software_version'>Feature: Software Version</a>

The Software Version associated with a system **SHOULD** be available.
The Software Version can be the physical network address (e.g., MAC address) or other identifierassigned to uniquely identify the device on a network (wired or unwired)


####<a name='software-version-can-be-accessed'>Scenario: Software Version Can be Accessed</a>

The Software Version can be access from the device or application.

GIVEN
: A <i>&lt;Device Record&gt;</i>

   AND
   : a <i>&lt;Software Version&gt;</i>

   AND
   : an <i>&lt;App&gt;</i> running on <i>&lt;App Runner&gt;</i>

WHEN
: The <i>&lt;Device&gt;</i> is connected to the <i>&lt;App&gt;</i> and <i>&lt;App Runner&gt;</i>

THEN
: the <i>&lt;Software Version&gt;</i> can be discovered 


###<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='network_address'>Feature: Network Address</a>

The network address of a device **SHOULD** be reported.
The network address can be the physical network address (e.g., MAC address) or other identifierassigned to uniquely identify the device on a network (wired or unwired)


####<a name='network-address-can-be-accessed'>Scenario: Network Address Can be Accessed</a>

The network address (e.g., MAC, TCP IP or other identifier) can be access from the device or application.

GIVEN
: A <i>&lt;Device Record&gt;</i>

   AND
   : a <i>&lt;Network Address&gt;</i>

   AND
   : an <i>&lt;App&gt;</i> running on <i>&lt;App Runner&gt;</i>

WHEN
: The <i>&lt;Device&gt;</i> is connected to the <i>&lt;App&gt;</i> and <i>&lt;App Runner&gt;</i>

THEN
: <i>&lt;Network Address&gt;</i> can be discovered 


###<span class='glyphicon text-info glyphicon-dashboard'/> <a name='battery_charge'>Feature: Battery Charge</a>

The level of battery charge for a device **SHOULD** be reported.
Reporting the battery charge level for a device enables an App to alerta user that the device needs recharging.
NOTE: Some devices which may be assessed using this guide may have tomeet more stringent requirements to ensure patient safety. That is outsideof the scope of this guide.


####<a name='battery-charge-can-be-accessed'>Scenario: Battery Charge Can be Accessed</a>

Battery charge status can be accessed on devices which have a battery.

GIVEN
: A <i>&lt;Device Record&gt;</i>

   AND
   : a <i>&lt;Charge Level&gt;</i>

WHEN
: The <i>&lt;Device&gt;</i> is connected to the <i>&lt;App&gt;</i> and <i>&lt;App Runner&gt;</i>

THEN
: <i>&lt;Charge Level&gt;</i> for <i>&lt;Device&gt;</i> is reported by <i>&lt;App&gt;</i> 

