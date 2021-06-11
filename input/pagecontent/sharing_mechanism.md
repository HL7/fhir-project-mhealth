The Sharing Mechanism category ensures that sharing is possible and that the mechanism is described.
<span id='a-system-shall-support-either-push-or-pull-sharing.'/>
###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='sharing_supported'>Feature: A System Shall Support Either Push or Pull Sharing.</a>

NOTE: Reference to third party components can be made in evaluation of this requirement.
In cases when a system supports storage in a third party component that enables push or pull
sharing, and that third party component supports push or pull sharing, the system also supports
it.  The system documentation must reference the third-party component (e.g., by product name)
and then the documentation for that third-party component can be evaluated. Apple HealthKit and
Google Health are examples of such third party (mobile operating system) components that
provide such capabilities.


<span id='sharing'/>
####<a name='scenario_1'>Scenario: Sharing</a>

Sharing of information with other parties is supported by the system.

GIVEN
: a <i>&lt;System&gt;</i>

WHEN
: when the <i>&lt;Documentation&gt;</i> for <i>&lt;System&gt;</i> is reviewed

THEN
: there is a documented method for push or pull sharing in <i>&lt;Documentation&gt;</i>


<span id='the-system-should-be-able-to-push-new-data-to-another-party-that-the-user-has-shared-with.'/>
###<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='push_sharing'>Feature: The System Should be Able to Push New Data to Another Party That the User Has Shared With.</a>


<span id='push-sharing'/>
####<a name='scenario_1'>Scenario: Push Sharing</a>

The system can send (push) data to other parties in electronic form.

GIVEN
: a <i>&lt;System&gt;</i> supporting push sharing

   AND
   : a <i>&lt;User&gt;</i>

   AND
   : a <i>&lt;Party&gt;</i> the user has shared with

WHEN
: new <i>&lt;Data&gt;</i> for <i>&lt;User&gt;</i> has been collected

THEN
: it is sent to <i>&lt;Party&gt;</i>


<span id='other-parties-that-the-user-has-shared-with-should-be-able-to-pull-data-from-the-system.'/>
###<span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> <a name='pull_sharing'>Feature: Other Parties That the User Has Shared With Should be Able to Pull Data From the System.</a>


<span id='pull-sharing'/>
####<a name='scenario_1'>Scenario: Pull Sharing</a>

A third party can query for and recieve (pull) new data after being authorized by a user.

GIVEN
: a <i>&lt;System&gt;</i> supporting pull sharing

   AND
   : a <i>&lt;User&gt;</i>

   AND
   : a <i>&lt;Party&gt;</i> the user has authorized and shared with

WHEN
: new <i>&lt;Data&gt;</i> for <i>&lt;User&gt;</i> has been collected

THEN
: it can be retrieved by <i>&lt;Party&gt;</i>

