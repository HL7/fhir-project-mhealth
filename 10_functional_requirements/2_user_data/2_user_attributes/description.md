User attributes provides additional information about the user of a device. This information may be
used to augment the measurement capabilities of the device.  Information such as user
height and weight might need to be provided to allow an app or device to compute from
the number of steps taken as measured by an accelerometer, into an estimate of distance
traveled (computed as a function of user height) or calories burned (computed as a function
of user weight).

Attribute values about the user may be dynamically configured, or even determined by
the device (e.g., current user state, such as sedentary, active, sleeping) which might
enable an application to compute other functions.  This data may be user entered, or
determined through other means.

Some configuration data may also come from [User Demographics](user_demographics.html)
such as age and gender.  Note though, care must be taken to avoid confusing physical
attributes (such as birth sex) which may be necessary to properly configure a device
and gender identity, which should be a user preference.