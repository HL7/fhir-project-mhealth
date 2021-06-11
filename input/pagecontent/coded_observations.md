This section describes requirements of observations which reflect coded values. It
applies to observations from a device, app or infrastructure that provide coded
results.
<span id='value-sets-for-coded-measurements-are-documented-and-can-be-mapped-to-standards'/>
###<span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <a name='value_sets_documented'>Feature: Value Sets for Coded Measurements Are Documented and Can be Mapped to Standards</a>

Fixed values in a list returned by the device or communicated by the App **SHALL** be documented.


<span id='value-sets-are-documented'/>
####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='scenario_1'>Scenario: Value Sets Are Documented</a>


GIVEN
: a <i>&lt;Device&gt;</i>

   AND
   : an <i>&lt;App&gt;</i>

   AND
   : <i>&lt;Documentation&gt;</i> for them

WHEN
: a <i>&lt;Data Record&gt;</i> is obtained

THEN
: the coded values that can found in <i>&lt;Data Record&gt;</i> are described in <i>&lt;Documentation&gt;</i>


<span id='value-sets-should-be-mappable-to-standard-terminologies'/>
####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-dashboard'/> <a name='scenario_2'>Scenario: Value Sets Should be Mappable to Standard Terminologies</a>


GIVEN
: a <i>&lt;Value Set&gt;</i> used for a Device or App

WHEN
: the <i>&lt;Value Set&gt;</i> is compared to standard terminologies (e.g., SNOMED CT&reg;, LOINC&reg;, UCUM, et cetera)

THEN
: the values can be readily mapped.


<span id='standards-terminology-is-used-for-measurements'/>
###<span class='glyphicon text-info glyphicon-phone'/> <a name='standard_terminology_used'>Feature: Standards Terminology is Used for Measurements</a>

If codes are present in measurements, standard terminology **SHOULD** be used for observation codes, values and units.


<span id='codes-describing-observations-use-loinc-or-snomed-ct'/>
####<a name='scenario_1'>Scenario: Codes Describing Observations Use LOINC or SNOMED CT</a>

Measurements **SHOULD** be described using LOINC and/or SNOMED CT

GIVEN
: a <i>&lt;Measurement&gt;</i>

WHEN
: the <i>&lt;Code&gt;</i> describing it is reviewed

THEN
: it comes from SNOMED CT or LOINC 


<span id='units-are-coded-using-the-ucum-unit-terminology-system'/>
####<a name='scenario_2'>Scenario: Units Are Coded Using the UCUM Unit Terminology System</a>

Units **SHOULD** be coded using UCUM

GIVEN
: a <i>&lt;Measurement&gt;</i>

WHEN
: the <i>&lt;Value&gt;</i> describing it is reviewed

THEN
: the units are recorded using UCUM 


<span id='coded-values-use-snomed-ct-or-icd-10'/>
####<a name='scenario_3'>Scenario: Coded Values Use SNOMED CT or ICD-10</a>

Result values in a measurement **SHOULD** use SNOMED CT or ICD-10
NOTE: ICD-10 may include national variants (e.g., ICD-10-CM in the US)

GIVEN
: a <i>&lt;Measurement&gt;</i>

WHEN
: the <i>&lt;Value&gt;</i> describing it is reviewed

THEN
: it comes from SNOMED CT or ICD-10 

