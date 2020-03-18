@App-Shall @Infra-Shall
Feature: A system must support either push or pull sharing.

NOTE: Reference to third party components can be made in evaluation of this requirement.
In cases when a system supports storage in a third party component that enables push or pull
sharing, and that third party component supports push or pull sharing, the system also supports it.  The
system documentation must reference the third party component (e.g., by product name) and
then the documentation for that third party component can be evaluted.  Apple HealthKit and
Google Health are examples of such third party (mobile operating system) components that
provide such capabilities.

Scenario: Sharing
Given a <System>
 When when the <Documentation> for <System> is reviewed
 Then there is a documented method for push or pull sharing in <Documentation>