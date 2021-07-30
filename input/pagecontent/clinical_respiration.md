The Clinical Respiration Category supports the reporting of additional measurements
supporting clinical interpretation of results.

For device type and characteristics data, see [general_clinical_measurements.html]
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> <a name='clinical_respiration_rate'>Feature: Clinical Respiration Rate Measurement</a>

The system **SHALL** be able to capture and report additional data used for clinical interpretation.


The requirements for this feature when implemented with FHIR can be found in the [ClinicalRespirationRateRequirements](StructureDefinition-ClinicalRespirationRateRequirements.html) Profile.

#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='report-measurement-site'>Scenario: Report Measurement Site</a>

The measurement site **SHALL** be able to be reported with each respiration rate measurement.

GIVEN
: a <i>&lt;System&gt;</i> that can report respiration rate

WHEN
: a <i>&lt;Respiration Rate&gt;</i> measurement is performed

THEN
: the <i>&lt;Measurement Site&gt;</i> can be associated with the <i>&lt;Respiration Rate&gt;</i> 

