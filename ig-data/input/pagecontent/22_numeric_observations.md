This section describes requirements of observations which reflect numeric values.  It
applies to observations from a device, app or infrastructure that provide numeric
results.
<span id='precision-is-documented-and-appropriate-for-each-measurement'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Feature: Precision is Documented And Appropriate for Each Measurement

Precision **SHALL** be Documented and Appropriate for each Measurement


<span id='precision-is-documented'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Precision is Documented


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
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Precision And Units Are Appropriate

The precision and units of a measurement **SHALL** be appropriate to the measurement.[**SHOULD** we just add this for each observation with more detail specificto the measurement? For example, say that heart rate **SHOULD** be measuredin beats per minute, precision is to the whole number of beats? -- KWB]

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


<span id='converted-results-are-not-over-precise'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> Scenario: Converted Results Are Not Over-precise

A converted result **SHOULD** not be reported with greater precision that the originally measured value.

Unit conversion formulae exist to convert between different systems of units.  These values
are very precisely know. Simple math used to convert from a measured value in one unit system
often results in overprecise reported values in other unit system.  The converted value **SHOULD** be
limited to be no more precise than the original value.  For example, height is often measured
in inches or centimeters, and the value when recorded in one unit system can often be reported
in a different unit system depending on system configuration.  Thus, a value recorded in whole inches
**SHOULD** not be reported in more than whole centimeters.

GIVEN
: a <i>&lt;Measurement&gt;</i> reported in a <i>&lt;Orginal Unit System&gt;</i> with <i>&lt;Original Precision&gt;</i>

   AND
   : a <i>&lt;Device&gt;</i> or <i>&lt;App&gt;</i>

WHEN
: the <i>&lt;Meausurement&gt;</i> is reported <i>&lt;Other Precision&gt;</i> in <i>&lt;Other Unit System&gt;</i>

   AND
   : <i>&lt;Orignal Unit System&gt;</i> != <i>&lt;Other Unit System&gt;</i>

THEN
: The <i>&lt;Other Precision&gt;</i> = <i>&lt;Original Precision&gt;</i>


<span id='value-sets-for-units-used-in-measurements-are-documented-and-can-be-mapped-to-standards'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> Feature: Value Sets for Units Used in Measurements Are Documented And Can be Mapped to Standards

Fixed values used for units returned by the device or communicated by the App **SHALL** be documented.


<span id='unit-value-sets-are-documented'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Unit Value Sets Are Documented


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
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Unit Values Should be Mappable to UCUM


GIVEN
: a <i>&lt;Unit Value Set&gt;</i> used for a Device or App

WHEN
: the <i>&lt;Unit Value Set&gt;</i> is compared to UCUM

THEN
: the values of <i>&lt;Unit Value Set&gt;</i> can be readily mapped to UCUM.


<span id='unit-values-use-ucum'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> Scenario: Unit Values Use UCUM

Result values in a measurement **SHOULD** use UCUM

GIVEN
: a <i>&lt;Quantitative Measurement&gt;</i>

WHEN
: the <i>&lt;Unit&gt;</i> describing it is reviewed

THEN
: the value of <i>&lt;Unit&gt;</i> is from UCUM


<span id='the-range-of-numeric-values-is-documented-and-appropriate-for-each-measure'/>
### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> Feature: The Range of Numeric Values is Documented And Appropriate for Each Measure


<span id='unit-values-should-be-mappable-to-ucum'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Unit Values Should be Mappable to UCUM


GIVEN
: a <i>&lt;Unit Value Set&gt;</i> used for a Device or App

WHEN
: the <i>&lt;Unit Value Set&gt;</i> is compared to UCUM

THEN
: the values of <i>&lt;Unit Value Set&gt;</i> can be readily mapped to UCUM.


<span id='unit-values-use-ucum'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> Scenario: Unit Values Use UCUM

Result values in a measurement **SHOULD** use UCUM

GIVEN
: a <i>&lt;Quantitative Measurement&gt;</i>

WHEN
: the <i>&lt;Unit&gt;</i> describing it is reviewed

THEN
: the value of <i>&lt;Unit&gt;</i> is from UCUM

