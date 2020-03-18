The Clinical Temperature Category supports capture of measurement site data.

For device type and characteristics data, see [general_clinical_measurements.html]
<span id='tempurature-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Tempurature Measurement

The system **SHALL** be able to capture and report additional data used for clinical interpretation.


<span id='report-measurement-site'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Report Measurement Site

The measurement site shall be able to be reported with each heart rate measurement

GIVEN
: a <i>&lt;System&gt;</i> that can report temperature

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Measurement Site&gt;</i> can be associated with the <i>&lt;Measurement&gt;</i>

