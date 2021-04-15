The Basic Height and Weight category supports capturing measures of the user's height and weight.
<span id='height-measurement'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: Height Measurement

The system **SHALL** be able to capture and report a height measurement from the user.


<span id='capture-and-report-height-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Capture and Report Height Measurement

A system **SHALL** be able to record a user measurement of height.
Unlike other vital signs observations, there is no expectation that height is measured
by a device, rather, there is an expectation that such a measure would be manually entered.

GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Height&gt;</i> of that <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: there is a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i> that contains that user's height

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are either centimeters or inches.

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least whole centimeters or inches.


<span id='loinc-coded-height-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded Height Measurement

The measurement **SHOULD** be coded in LOINC.

GIVEN
: a <i>&lt;Measurement&gt;</i> of height

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;LOINC Code&gt;</i> for Height,

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 8302-2 Body Height, or 8306-3 Body Height - Lying (for infant length)


<span id='ucum-coded-height-units'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: UCUM Coded Height Units

The measurement **SHOULD** use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of height

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is cm (centimeters) or [in_i] (international inches).


<span id='precision-and-units-are-appropriate-for-height'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Precision and Units Are Appropriate for Height

The precision and units of a height (or length) measurement **SHALL** be appropriate to the measurement.

GIVEN
: A <i>&lt;System&gt;</i> (either a Device or an App)

   AND
   : a <i>&lt;Height Measurement&gt;</i> that can be produced by <i>&lt;System&gt;</i>

WHEN
: <i>&lt;Height Measurement&gt;</i> are examined

THEN
: The precision of <i>&lt;Height Measurement&gt;</i> is in at least whole units and not more than tenths of a unit


<span id='weight-measurement'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: Weight Measurement

The system **SHALL** be able to capture and report a weight measurement from the user.


<span id='capture-and-report-weight-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Capture and Report Weight Measurement


GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Weight&gt;</i> of that <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: the <i>&lt;Device&gt;</i> can capture a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are either kilograms, grams or pounds.

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least a whole unit.


<span id='loinc-coded-weight-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded Weight Measurement

The measurement **SHOULD** be coded in LOINC.

GIVEN
: a <i>&lt;Measurement&gt;</i> of height

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;LOINC Code&gt;</i> for Weight

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 29463-7 Body Weight


<span id='ucum-coded-weight-units'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: UCUM Coded Weight Units

The measurement **SHOULD** use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of weight

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is 'kg' (kilograms), 'g' (grams), or '[lb_av]' (pounds).


<span id='precision-and-units-are-appropriate-for-height'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Precision and Units Are Appropriate for Height

The precision and units of a weight measurement **SHALL** be appropriate to the measurement.

GIVEN
: A <i>&lt;System&gt;</i> (either a Device or an App)

   AND
   : a <i>&lt;Weight Measurement&gt;</i> that can be produced by <i>&lt;System&gt;</i>

WHEN
: <i>&lt;Weight Measurement&gt;</i> are examined

THEN
: The precision of <i>&lt;Weight Measurement&gt;</i> is in at least whole units and not more than tenths of a unit

