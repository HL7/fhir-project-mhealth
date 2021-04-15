The Clinical Height and Weight category supports additional requirements used in clinical
settings for the interpretation of height and weight measures.


<span id='capture-of-clinical-data-with-weight-measurement.'/>
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Feature: Capture of Clinical Data With Weight Measurement.

The system **SHALL** be able to capture and record other data to facilitate interpretation ofheight and weight measurements.


<span id='compute-or-report-body-mass-index'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Compute or Report Body Mass Index

This requirement allows BMI to be detected by a device, or reported based on the
reported height and sensed weight.  The method of computing the BMI value is not defined
by this requirement and may be implementation specific.

GIVEN
: a <i>&lt;System&gt;</i> (App and/or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

WHEN
: there are <i>&lt;Height&gt;</i> and <i>&lt;Weight&gt;</i> measurements for a <i>&lt;User&gt;</i>

THEN
: there is a <i>&lt;Measurement&gt;</i> of <i>&lt;Body Mass Index&gt;</i> for the <i>&lt;User&gt;</i>


<span id='clothing-worn-during-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: Clothing Worn During Measurement

The system **SHALL** be able to capture a coded value describing the clothing worn during weight measurement.

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : a <i>&lt;System&gt;</i>

WHEN
: a <i>&lt;Measurement&gt;</i> of weight is performed by the <i>&lt;System&gt;</i>

THEN
: there is an opportunity for <i>&lt;User&gt;</i> to describe the clothing worn during the measurement


<span id='loinc-coded-bmi-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded BMI Measurement

The system **SHOULD** provide LOINC codes along with measurements.

GIVEN
: a <i>&lt;Measurement&gt;</i> of BMI

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;LOINC Code&gt;</i> for BMI,

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 39156-5 Body mass index (BMI) [Ratio]


<span id='ucum-coded-bmi-units'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: UCUM Coded BMI Units

The measurement **SHOULD** use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of BMI

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is 'kg/m2'.

