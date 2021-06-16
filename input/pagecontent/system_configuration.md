System configuration includes the data that is used to configure a device,
application or infrastructure.  This may include both user and supplier
selected configuration details (e.g., MAC address).

These values are generally considered to be dynamic, but change infrequently,
and might be configured at the time of system setup.
###<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='system_configuration'>Feature: The Mechanism to Configure a System to Use Different Units is Documented.</a>

The means by which a system is configured to report or use different units is documented.


####<span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <a name='unit-configuration-is-documented'>Scenario: Unit Configuration is Documented</a>

Device and application settings affecting reported units is documented.

GIVEN
: a <i>&lt;Device or App&gt;</i>

   AND
   : <i>&lt;Documentation&gt;</i> for it

WHEN
: the <i>&lt;Documentation&gt;</i> is examined

THEN
: the means by which the <i>&lt;Device or App&gt;</i> can be configured to use different units is documented.

