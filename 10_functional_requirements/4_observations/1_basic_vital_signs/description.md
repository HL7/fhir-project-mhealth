Basic Vital Signs is a category that includes just the measurements of the
most common vital signs that can be measured for a given user.

It is distinct from [Clinical Vital Signs](clinical_vital_signs.html) because
these measurements do not include other data deemed essential to correctly
interpret the clinical impact of this measurement on the user without making
other assumptions. This category focuses on the ability to measure the
fundamental vital sign, rather than these other factors.

### Associating a Measure with Codes
In Basic Vital Signs, measurements can be associated with codes.  The association of
these codes with the measurement can be accomplished by:

* Directly including the code in the data reported with the measurement
* Associating the code with device metadata so that these codes can be obtained
  computationally from the measurement.

That is to say that codes don't necessarily have to be reported with each measurement,
instead they may be inferred by metadata reported by the device.
