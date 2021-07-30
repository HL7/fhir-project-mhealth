The Clinical Heart Rate Pressure category supports the reporting of additional measurements
supporting clinical interpretation of results.
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> <a name='clinical_heart_rate_measurement'>Feature: Heart Rate Measurement</a>

The system **SHALL** be able to capture and report additional data used for clinical interpretation.


The requirements for this feature when implemented with FHIR can be found in the [ClinicalHeartRateMeasurementRequirements](StructureDefinition-ClinicalHeartRateMeasurementRequirements.html) Profile.

#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='report-measurement-site'>Scenario: Report Measurement Site</a>

The measurement site **SHALL** be able to be reported with each heart rate measurement

GIVEN
: a <i>&lt;System&gt;</i> that can report heart rate

WHEN
: a <i>&lt;Heart Rate&gt;</i> measurement is performed

THEN
: the <i>&lt;Measurement Site&gt;</i> can be associated with the <i>&lt;Heart Rate&gt;</i>  

