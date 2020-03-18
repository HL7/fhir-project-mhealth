Features in the Attribution category ensure that metadata about reported measurements
are included to identify the device creating a measurement, the author creating manually
entered data, and that devices are not permanently linked to a given user and can be
readily replaced at need.

This metadata is typically considered to be Provenance information (related to
the [Provenance](https://www.hl7.org/fhir/R4/provenance.html) FHIR Resource of the same name).
Provenance information helps establish authenticity of the recorded information, can
be used to identify issues related to a specific device or type of device.

When this metadata is not available, operational procedures can be used to obtain some
measure of assurance about the source data, but do not provide nearly as strong
assurance as when it is.

Many mobile devices are small, readily lost or broken.  Anyone whose run their fitness
tracker through the laundry can attest to the fact they may need to be replaced.  The
ability to connect the measurement to the device allows receivers of measurement
data to rule in or out a change in device as a reason for change in resulting
measurements.  Apps, devices and infrastructure should enable such capabilities.

Some devices easily accommodate use by multiple members of the same household to use
them (e.g., weight scales and blood pressure cuffs).  Additional requirements in this
category ensure that devices and apps which work with them can support this sort of
use.  Even devices considered to be personal use (a smart watch or fitness tracker)
might be shared as one person "tries it out" for a bit to see if it's something they
want to acquire for themselves.  Devices can also be handed down or off to others as
users upgrade and acquire new technology.
