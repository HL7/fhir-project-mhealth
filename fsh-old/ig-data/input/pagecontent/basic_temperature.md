The Basic Temperature Category addresses features specific to devices, apps and
infrastructure that performs basic body temperature measurements.  Such devices
must be able to measure in either degrees Celsius or Fahrenheit, and may be able to be
dynamically configured for either measurement system.


<span id='temperature-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Temperature Measurement

The system **SHALL** be able to capture and report a Temperature measurement from the user.


<span id='capture-and-report-temperature-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Capture and Report Temperature Measurement


GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Temperature&gt;</i> of that <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: the device can capture a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i> that contains that user's <i>&lt;Temperature&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are degrees Celsius or Fahrenheit

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least whole unit.


<span id='loinc-coded-temperature-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded Temperature Measurement

The system **SHOULD** provide LOINC codes along with measurements.

GIVEN
: a <i>&lt;Measurement&gt;</i> of temperature

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;LOINC Code&gt;</i> for Temperature

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 8310-5 Body temperature


<span id='ucum-coded-temperature-units'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: UCUM Coded Temperature Units

The measurement **SHOULD** use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of temperature

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is 'Cel' or '[degF]'


<span id='precision-and-units-are-appropriate-for-temperature'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> Scenario: Precision and Units Are Appropriate for Temperature

The precision and units of an temperature measurement **SHALL** be appropriate to the measurement.

GIVEN
: A <i>&lt;System&gt;</i> (either a Device or an App)

   AND
   : a <i>&lt;Temperature Measurement&gt;</i> that can be produced by <i>&lt;System&gt;</i>

WHEN
: <i>&lt;Temperature Measurement&gt;</i> are examined

THEN
: The precision of <i>&lt;Temperature Measurement&gt;</i> is in at least whole units and not more than tenths of a unit.

