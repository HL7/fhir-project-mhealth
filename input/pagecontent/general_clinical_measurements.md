The General Clinical Measurements category includes requirements for all clinical vital signs measurements.
Any assessment performed for other categories in clinical vital signs **SHALL** assess this category.
The requirements of this category ensure that documentation of the method of measure
and range of accuracy is documented for the device, and that the type of device can
be determined.
###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='mechanism_and_accuracy'>Feature: Mechanism and Accuracy of Measurement is Documented</a>

The method used and accuracy of measurements **SHALL** be described for a device in the manufacturer's documentation for each vital sign it can measure.


####<span class='glyphicon text-success glyphicon-dashboard'/> <a name='mechanism-and-accuracy-documented'>Scenario: Mechanism and Accuracy Documented</a>

The method used and accuracy of measurements **SHALL** be described in the manufacturer's documentation for a device.

GIVEN
: A <i>&lt;Device&gt;</i> that measures a vital sign

   AND
   : Manufacturer's <i>&lt;Documentation&gt;</i> for <i>&lt;Device&gt;</i>

WHEN
: Manufacturer's <i>&lt;Documentation&gt;</i> for <i>&lt;Device&gt;</i> is reviewed

THEN
: the mechanism for measuring each vital sign is described and the range of accuracy of the measurement is reported.


###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='device_type'>Feature: Type of Device is Available</a>

The type of device performing the measure **SHALL** be able to be determined from the <System>
NOTE: If a device can be associated with a Universal Device Identifier (UDI), it meets the criteria for this
requirement, because this information is included in device metadata accessible via UDI.


####<a name='type-of-device'>Scenario: Type of Device</a>

Information about the type of device is available through the device record.

GIVEN
: a <i>&lt;Device&gt;</i> that measures a vital sign

THEN
: the <i>&lt;Device&gt;</i> must be able to be associated with <i>&lt;Metadata&gt;</i> about it

   AND
   : that <i>&lt;Metadata&gt;</i> must describe the <i>&lt;Type&gt;</i> of device 

