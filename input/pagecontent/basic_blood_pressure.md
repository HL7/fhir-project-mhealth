<!-- basic_blood_pressure.md {% comment %}
*****************************************************************************************
*                            WARNING: DO NOT EDIT THIS FILE                             *
*                                                                                       *
* This file is generated by SUSHI. Any edits you make to this file will be overwritten. *
*                                                                                       *
* To change the contents of this file, edit the original source file at:                *
* ig-data\input\pagecontent\25_basic_blood_pressure.md                                  *
*****************************************************************************************
{% endcomment %} -->
The Basic Blood Pressure category supports the measurement of Systolic and Diastolic Blood Pressure.

When this category is evaluated, the [Basic Heart Rate (a.k.a. Pulse)](basic_heart_rate.html)
category must also be evaluated.  This is because blood pressure and pulse are very
closely related measurements, and it's nearly impossible for a system to measure blood
pressure without having some awareness of heart rate.
<span id='blood-pressure-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Blood Pressure Measurement

The system **SHALL** be able to capture and report a blood pressure measurement from the user.


<span id='capture-and-report-blood-pressure-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Capture And Report Blood Pressure Measurement


GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Blood Pressure&gt;</i> of that <i>&lt;User&gt;</i> containing both systolic and diastolic measures

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: the <i>&lt;Device&gt;</i> can capture a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> contains that user's <i>&lt;Blood Pressure&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> captures both systolic and diastolic pressure

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are millimeters of mercury

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least whole millimeters.


<span id='loinc-coded-blood-pressure-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded Blood Pressure Measurement

The measurement should be coded in LOINC.

GIVEN
: a <i>&lt;Measurement&gt;</i> of blood pressure

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> has a component that is associated with a <i>&lt;LOINC Code&gt;</i> for Blood Pressure

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 8480-6 Systolic blood pressure or 8462-4 Diastolic blood pressure


<span id='ucum-coded-blood-pressure-units'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: UCUM Coded Blood Pressure Units

The measurement should use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of blood pressure

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is 'mm[Hg]' (millimeters of mercury).

