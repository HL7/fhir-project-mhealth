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
security reequirements. These issues are addressed separately in the
[HL7 Consumer Mobile Health Application Functional Framework (CMHAFF) Specification](https://cmhaff.healtheservice.com/Standard/ConformanceCriteria/ProductUsage/TabId/1074/Default.aspx) as
well as in the general [Security](http://hl7.org/fhir/security.html) section of the HL7 FHIR
R4 specification.


[^1]: The distinction between software and firmware is getting rather fuzzy these days.
The ability to upgrade a device by "installing new firmware" is nothing more than changing
the software that it runs.  Generally the distinction is made that "it's soft" if it
can be easily changed, and "firm" if it requires a special mode of operation to change
it.  But it's all stored in some form of memory that is very likely rewritable.

