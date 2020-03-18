The Clinical Heart Rate Pressure category supports the reporting of additional measurements
supporting clinical interpretation of results.
<span id='heart-rate-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Heart Rate Measurement

The system **SHALL** be able to capture and report additional data used for clinical interpretation.


<span id='report-measurement-site'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Report Measurement Site

The measurement site **SHALL** be able to be reported with each heart rate measurement

GIVEN
: a <i>&lt;System&gt;</i> that can report heart rate

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Measurement Site&gt;</i> can be associated with the <i>&lt;Measurement&gt;</i>

