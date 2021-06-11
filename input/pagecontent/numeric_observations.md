This section describes requirements of observations which reflect numeric values.  It
applies to observations from a device, app or infrastructure that provide numeric
results.
<span id='precision-is-documented-and-appropriate-for-each-measurement'/>
###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='precision'>Feature: Precision is Documented and Appropriate for Each Measurement</a>

Precision **SHALL** be Documented and Appropriate for each Measurement


<span id='precision-is-documented'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='scenario_1'>Scenario: Precision is Documented</a>


GIVEN
: a <i>&lt;Measurement&gt;</i>

   AND
   : a <i>&lt;Device&gt;</i> or <i>&lt;App&gt;</i>

WHEN
: <i>&lt;Documentation&gt;</i> is examined

THEN
: The precision of the <i>&lt;Measurement&gt;</i> is documented in <i>&lt;Documentation&gt;</i>

   AND
   : The precision is appropriate for the <i>&lt;Measurement&gt;</i>


<span id='precision-and-units-are-appropriate'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='scenario_2'>Scenario: Precision and Units Are Appropriate</a>

The precision and units of a measurement **SHALL** be appropriate to the measurement.

GIVEN
: A <i>&lt;System&gt;</i> (either a Device or an App)

   AND
   : a set of <i>&lt;Measurements&gt;</i> that can be produced by <i>&lt;System&gt;</i>

WHEN
: <i>&lt;Measurements&gt;</i> are examined

THEN
: The precision of each <i>&lt;Measurement&gt;</i> in <i>&lt;Measurements&gt;</i> is appropriate

   AND
   : the unit of each <i>&lt;Measurement&gt;</i> in <i>&lt;Measurements&gt;</i> is appropriate


<span id='converted-results-are-not-reported-with-more-precision-than-is-appropriate.'/>
####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='scenario_3'>Scenario: Converted Results Are Not Reported With More Precision Than is Appropriate.</a>

A converted result **SHOULD** not be reported with more significant digits than the originally
measured value.

A height is reported as 72 inches (with 2 significant digits), when converted to
centimeters the computation would result in a value of 182.88 cm.  However, reporting that value
implies a precision of +/- 0.01 cm, when in fact, it is precise only to +/- 2.54 cm.  It **SHOULD** be reported as 180cm (again,
having 2 significant digits).  In the other direction, a height of 182 cm might be computed as 71.6535 inches.
However, that result has an implied precision of +/- 0.0001 inches, when in fact it is precise to no more than +/- 0.3937007874 inches.
It **SHOULD** be repoorted as 71.7 inches, since 182 has three significant digits of precision.

GIVEN
: a <i>&lt;Measurement&gt;</i> reported as in <i>&lt;Orginal Unit System&gt;</i> with <i>&lt;Original Precision&gt;</i>

   AND
   : a <i>&lt;Device&gt;</i> or <i>&lt;App&gt;</i>

WHEN
: the <i>&lt;Meausurement&gt;</i> is reported as <i>&lt;Converted Value&gt;</i> in <i>&lt;Converted Unit System&gt;</i> with <i>&lt;Converted Precision&gt;</i>

   AND
   : <i>&lt;Orignal Unit System&gt;</i> != <i>&lt;Converted Unit System&gt;</i>

THEN
: <i>&lt;Converted Significant Digits&gt;</i> = <i>&lt;Original Significant Digits&gt;</i>


<span id='value-sets-for-units-used-in-measurements-are-documented-and-can-be-mapped-to-standards'/>
###<span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <a name='units'>Feature: Value Sets for Units Used in Measurements Are Documented and Can be Mapped to Standards</a>

Fixed values used for units returned by the device or communicated by the App **SHALL** be documented.


<span id='unit-value-sets-are-documented'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='scenario_1'>Scenario: Unit Value Sets Are Documented</a>


GIVEN
: a <i>&lt;Device&gt;</i>

   AND
   : an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Documentation&gt;</i> for them

WHEN
: a <i>&lt;Data Record&gt;</i> with Units is obtained

THEN
: the Unit values that can found in <i>&lt;Data Record&gt;</i> are described in <i>&lt;Documentation&gt;</i>


<span id='unit-values-should-be-mappable-to-ucum'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='scenario_2'>Scenario: Unit Values Should be Mappable to UCUM</a>


GIVEN
: a <i>&lt;Unit Value Set&gt;</i> used for a Device or App

WHEN
: the <i>&lt;Unit Value Set&gt;</i> is compared to UCUM

THEN
: the values of <i>&lt;Unit Value Set&gt;</i> can be readily mapped to UCUM.


<span id='unit-values-use-ucum'/>
####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='scenario_3'>Scenario: Unit Values Use UCUM</a>

Result values in a measurement **SHOULD** use UCUM

GIVEN
: a <i>&lt;Quantitative Measurement&gt;</i>

WHEN
: the <i>&lt;Unit&gt;</i> describing it is reviewed

THEN
: the value of <i>&lt;Unit&gt;</i> is from UCUM 


<span id='the-range-of-numeric-values-is-documented-and-appropriate-for-each-measure'/>
###<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='range'>Feature: The Range of Numeric Values is Documented and Appropriate for Each Measure</a>


<span id='range-of-values-is-documented'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='scenario_1'>Scenario: Range of Values is Documented</a>


GIVEN
: a <i>&lt;Numeric Value&gt;</i> reported by a Device or App

   AND
   : <i>&lt;Documentation&gt;</i> for it

WHEN
: the <i>&lt;Documentation&gt;</i> is examined

THEN
: the range values for the <i>&lt;Numeric Value&gt;</i> is documented

   AND
   : the <i>&lt;Numeric Value&gt;</i> falls within the documented range.

