This section describes the different actors in the [Use Cases](usecases.html) and their
roles in implementing the requirements in this guide.

### Implementers
#### Device
Mobile Health Devices (or simply Devices) include blood pressure cuffs, weight scales, mobile phones,
fitness trackers, smart watches, gps trackers, medical devices (e.g., a C-PAP machine),
thermometers, SPO2 monitors, respiration devices, and clothing with embedded smart
devices.  These devices are often accompanied by applications (see below) and may
be designed to work with specific data repositories. Devices may be regulated health
devices, but need not be.

Requirements, Rules and test Scenarios applicable to Device actors will be marked with
the @Device tag.

#### App
Mobile Health Applications (a.k.a. Mobile Health Apps or simply Apps) include integrated
smart-phone Apps such as Google Health, Apple Health, and Samsung Health,
activity and fitness tracking Apps such as Runkeeper, weight and diet monitoring
applications, and other physical fitness and health monitoring Apps.

Mobile Health Applications can also be web-based applications, so long as they are designed
to be accessible via a mobile health device.

Requirements, Rules and test Scenarios applicable to App actors will be marked with
the @App tag.

#### Data Repository
Mobile Health Data Repositories collect mobile health data from multiple devices
and make it possible for users to access, analyze and aggregate data across devices.
These applications may also enable population analysis for select populations.

Requirements, Rules and test Scenarios applicable to Data Repository actors will be marked with
the @Repository tag.

#### Data Consumer
Mobile Health Data Consumers can access one or more Mobile Health Data Repositories
and potentially other sources.  These components provide additional tools enabling users
to analyze mobile health data.
[_Do we need this category?  It seems like it my be useful. --KWB_]

Requirements, Rules and test Scenarios applicable to Data Consumer actors will be marked with
the @Consumer tag.

#### Implementation Guide or Specification

### Users
#### Device User
#### Healthcare Provider or Caregiver
