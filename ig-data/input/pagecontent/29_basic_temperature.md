The Basic Temperature Category addresses features specific to devices, apps and
infrastructure that performs basic body temperature measurements.  Such devices
must be able to measure in either degrees Celsius or Fahrenheit, and may be able to be
dynamically configured for either measurement system.


<span id='tempurature-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Tempurature Measurement

The system **SHALL** be able to capture and report a tempurature measurement from the user.


<span id='capture-and-report-tempurature-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Capture And Report Tempurature Measurement


GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Tempurature&gt;</i> of that <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: the device can capture a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i> that contains that user's <i>&lt;Tempurature&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are degrees Celsius or Fahrenheit

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least whole unit.


<span id='loinc-coded-temperature-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded Temperature Measurement

The system should provide LOINC codes along with measurements.

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

The measurement should use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of temperature

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is 'Cel' or '[degF]'

