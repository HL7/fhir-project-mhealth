@App-Shall @Infra-Shall

Feature:  Identify author of manually entered data

An app that enables recording of outside measurements shall identify
those measures as having been manually entered by the user of the app, and the user
shall be identified also.

Scenario: Manually entered data can be identified

Given An app that enables user entry of data manually, a user {U} and a manually entered measurement {M}

When {M} is accessed by another system or transmitted to infrastructure

Then The {M} can be identified as having been manually entered.

Scenario: The user who entered the data can be identified.

Given An app {A} that enables user manual entry of data
And a user {U}
And a manually entered measurement {M}

When {M} is accessed by another system or transmitted to infrastructure

Then The {M} can be identified as having been manually entered by {U}.


