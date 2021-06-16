The Clinical Blood Pressure category supports the reporting of additional measurements
supporting clinical interpretation of results.

For device type and characteristics data, see [general_clinical_measurements.html]
###<span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> <a name='clinical_bp_measurement'>Feature: Clinical Blood Pressure Measurement</a>

The system **SHALL** be able to capture and report additional data used for clinical interpretation.

To supplement this blood pressure observation, the mean arterial blood pressure **SHOULD** be computed, and the measurement site and
cuff size (where applicable) **SHALL** be reported.


####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='report-mean-arterial-blood-pressure'>Scenario: Report Mean Arterial Blood Pressure</a>

The system **SHOULD** be able to report mean arterial blood pressure as computed from systolic and diastolic measures
or through other means.

GIVEN
: a <i>&lt;System&gt;</i> that can report blood pressure

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Mean Arterial Blood Pressure&gt;</i> is also reported 


####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='report-measurement-site'>Scenario: Report Measurement Site</a>

The measurement site **SHALL** be able to be reported with each blood pressure measurement

GIVEN
: a <i>&lt;System&gt;</i> that can report blood pressure

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Measurement Site&gt;</i> can be associated with the <i>&lt;Measurement&gt;</i> 


####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='report-cuff-size'>Scenario: Report Cuff Size</a>

If a cuff is used to measure blood pressure, the cuff size **SHALL** be able to be reported with each blood pressure measurement.

GIVEN
: a <i>&lt;System&gt;</i> that can report blood pressure

   AND
   : a cuff is used to take the measurement

WHEN
: a <i>&lt;Blood Pressure&gt;</i> measurement is performed

THEN
: the <i>&lt;Cuff Size&gt;</i> can be associated with the <i>&lt;Blood Pressure&gt;</i> 

