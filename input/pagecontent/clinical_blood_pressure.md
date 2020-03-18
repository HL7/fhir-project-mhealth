The Clinical Blood Pressure category supports the reporting of additional measurements
supporting clinical interpretation of results.

For device type and characteristics data, see [general_clinical_measurements.html]
<span id='clinical-blood-pressure-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Clinical Blood Pressure Measurement

The system **SHALL** be able to capture and report additional data used for clinical interpretation.

To supplement this blood pressure observation, the mean blood pressure **SHOULD** be computed, and the measurement site and
cuff size (where applicable) **SHALL** be reported.


<span id='report-mean-blood-pressure'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: Report Mean Blood Pressure

The system should be able to report mean blood pressure as computed from systolic and dyastolic measures
or through other means.

GIVEN
: a <i>&lt;System&gt;</i> that can report blood pressure

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Mean Blood Pressure&gt;</i> is also reported


<span id='report-measurement-site'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Report Measurement Site

The measurement site shall be able to be reported with each blood pressure measurement

GIVEN
: a <i>&lt;System&gt;</i> that can report blood pressure

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Measurement Site&gt;</i> can be associated with the <i>&lt;Measurement&gt;</i>


<span id='report-cuff-size'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Report Cuff Size

If a cuff is used to measure blood pressure, the cuff size shall be able to be reported with each blood pressure measurement.

GIVEN
: a <i>&lt;System&gt;</i> that can report blood pressure

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Cuff Size&gt;</i> can be associated with the <i>&lt;Measurement&gt;</i>

