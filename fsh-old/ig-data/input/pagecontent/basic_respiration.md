The Basic Respiration Rate category supports the measurement of the user's respiration
rate.

<span id='respiration-rate-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Respiration Rate Measurement

The system **SHALL** be able to capture and report a respiration rate measurement from the user.


<span id='capture-and-report-respiration-rate-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Capture and Report Respiration Rate Measurement


GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Respiration Rate&gt;</i> of that <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: the device can capture a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i> that contains that user's <i>&lt;Respiration Rate&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are breaths / minute

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least whole breaths.


<span id='loinc-coded-respiration-rate-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded Respiration Rate Measurement

The system **SHOULD** provide codes along with measurements.

GIVEN
: a <i>&lt;Measurement&gt;</i> of respiration rate

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;LOINC Code&gt;</i> for Respiration Rate

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 9279-1 Respiratory Rate


<span id='ucum-coded-respiration-rate-units'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: UCUM Coded Respiration Rate Units

The measurement **SHOULD** use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of respiration rate

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is '/min' (per minute)

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> may include a UCUM comment (e.g. '{breath}/min' or '{breaths}/min')


<span id='precision-and-units-are-appropriate-for-heart-rate'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Precision and Units Are Appropriate for Heart Rate

The precision and units of a heart rate measurement **SHALL** be appropriate to the measurement.

GIVEN
: A <i>&lt;System&gt;</i> (either a Device or an App)

   AND
   : a <i>&lt;Respiration Rate Measurement&gt;</i> that can be produced by <i>&lt;System&gt;</i>

WHEN
: <i>&lt;Respiration Rate Measurement&gt;</i> are examined

THEN
: The precision of <i>&lt;Respiration Rate Measurement&gt;</i> is in at least whole units and not more than tenths of a unit.

