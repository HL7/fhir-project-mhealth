The Physical Activity and Sleep category supports the capture of duration and quality
measurements about physical and sleep activities.

Because there is less experience in the capture and use of data of for physical and sleep
activity, there are fewer guidelines to rely upon in this section.
<span id='physical-activities-including-sleep-is-measured'/>
###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='physical_activity_and_sleep'>Feature: Physical Activities Including Sleep is Measured</a>

The system **SHALL** record the duration and other qualities of physical activities that it can detect.


<span id='physical-activity-is-recorded'/>
####<a name='scenario_1'>Scenario: Physical Activity is Recorded</a>

Physical activity (e.g., sleeping, walking, running, or other measured activity) is recorded, includingessential attributes needed to evaluate the activity (e.g., depth of sleep, incline, level of effort, et cetera).

GIVEN
: a <i>&lt;User&gt;</i>

   AND
   : an <i>&lt;Activity&gt;</i>

WHEN
: the <i>&lt;User&gt;</i> performs that activity

THEN
: at least one <i>&lt;Measurement&gt;</i> is provided describing that activity

   AND
   : other <i>&lt;Qualifiers&gt;</i> of the activity may be present


<span id='snomed-ct-coded-measurement'/>
####<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='scenario_2'>Scenario: SNOMED CT Coded Measurement</a>

The system **SHOULD** provide SNOMED CT or LOINC codes describing the physical activity or sleep and other quality measurements
along with the duration of the activity.

GIVEN
: a <i>&lt;Measurement&gt;</i> of a physical activity, sleep or quality descriptor of such activity

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;SNOMED CT Code&gt;</i> or a <i>&lt;LOINC Code&gt;</i> describing the activity or quality descriptor 

