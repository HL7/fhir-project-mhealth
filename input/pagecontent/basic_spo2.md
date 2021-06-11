The Basic SPO2 category supports the measurement of the user's oxygen saturation.

When this category is evaluated, the [Basic Heart Rate (a.k.a. Pulse)](basic_heart_rate.html)
category must also be evaluated.  This is because oxygen saturation and pulse are very
closely related measurements, and it's nearly impossible for a system to measure oxygen
saturation without having some awareness of heart rate.

<span id='oxygen-saturation-measurement'/>
###<span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> <a name='spo2_measurement'>Feature: Oxygen Saturation Measurement</a>

The system **SHALL** be able to capture and report a Oxygen Saturation measurement from the user.


<span id='capture-and-report-oxygen-saturation-measurement'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='scenario_1'>Scenario: Capture and Report Oxygen Saturation Measurement</a>


GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Oxygen Saturation&gt;</i> of that <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: the device can capture a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i> that contains that user's <i>&lt;Oxygen Saturation&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are %

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least whole unit.


<span id='loinc-coded-oxygen-saturation-measurement'/>
####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='scenario_2'>Scenario: LOINC Coded Oxygen Saturation Measurement</a>

The system **SHOULD** provide LOINC codes along with measurements.

GIVEN
: a <i>&lt;Measurement&gt;</i> of Oxygen Saturation

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;LOINC Code&gt;</i> for Oxygen Saturation

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 2710-2 Oxygen Saturation 


<span id='ucum-coded-oxygen-saturation-units'/>
####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='scenario_3'>Scenario: UCUM Coded Oxygen Saturation Units</a>

The measurement **SHOULD** use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of oxygen saturation

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is '%' 


<span id='precision-and-units-are-appropriate-for-oxygen-saturation'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='scenario_4'>Scenario: Precision and Units Are Appropriate for Oxygen Saturation</a>

The precision and units of an oxygen saturation measurement **SHALL** be appropriate to the measurement.

GIVEN
: A <i>&lt;System&gt;</i> (either a Device or an App)

   AND
   : a <i>&lt;Oxygen Saturation Measurement&gt;</i> that can be produced by <i>&lt;System&gt;</i>

WHEN
: <i>&lt;Oxygen Saturation Measurement&gt;</i> are examined

THEN
: The precision of <i>&lt;Oxygen Saturation Measurement&gt;</i> is in at least whole units and not more than tenths of a unit.  

