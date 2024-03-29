User demographics identifies the user of a device (i.e., the subject of the the measurements made by
the device). It includes critical information that can be used for matching a device user to patient
records in an EHR, such as name, address, birthdate, user identifiers, and user contact information
(which can also be used to improve user matching to patient records.
### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='unique_user_identity'>Feature: User Unique Identity</a>

An app/infrastructure **SHALL** be able to generate/report the unique identifier for a given user association with a measurement.

This scenario demonstrates the ability of an App to associate a user with an identifier, and in the
process of storing the measurement has associated the measurement with the user's identity.

NOTE: Different kinds of Unique identifiers may be used


The requirements for this feature when implemented with FHIR can be found in the [UniqueUserIdentityRequirements](StructureDefinition-UniqueUserIdentityRequirements.html) Profile.

#### <a name='identifier-exists'>Scenario: Identifier Exists</a>

Each User is uniquely identified

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : an <i>&lt;Identifier&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Identifier&gt;</i> 

   AND
   : <i>&lt;Identifier&gt;</i> is one of the following:

  * <i>&lt;Identifier&gt;</i> is the user's e-mail address or

  * <i>&lt;Identifier&gt;</i> is the user's login identifier for another system (e.g., Google, Facebook, Twitter, et cetera) or

  * <i>&lt;Identifier&gt;</i> is the user's selected login name for <i>&lt;App&gt;</i> or

  * <i>&lt;Identifier&gt;</i> is a unique string (e.g., UUID or string) assigned by <i>&lt;App&gt;</i>

BUT
: <i>&lt;Identifier&gt;</i> is not something else


### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='user_name'>Feature: User Name</a>

The App or Infrastructure **SHALL** be able to associate the user's name with the user.


The requirements for this feature when implemented with FHIR can be found in the [UserNameRequirements](StructureDefinition-UserNameRequirements.html) Profile.

#### <a name='identifier-exists'>Scenario: Identifier Exists</a>

Each User is uniquely identified

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : an <i>&lt;Identifier&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Identifier&gt;</i> 

   AND
   : <i>&lt;Identifier&gt;</i> is one of the following:

  * <i>&lt;Identifier&gt;</i> is the user's e-mail address or

  * <i>&lt;Identifier&gt;</i> is the user's login identifier for another system (e.g., Google, Facebook, Twitter, et cetera) or

  * <i>&lt;Identifier&gt;</i> is the user's selected login name for <i>&lt;App&gt;</i> or

  * <i>&lt;Identifier&gt;</i> is a unique string (e.g., UUID or string) assigned by <i>&lt;App&gt;</i>

BUT
: <i>&lt;Identifier&gt;</i> is not something else


#### <a name='name-exists'>Scenario: Name Exists</a>

The user has a name.

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : a user <i>&lt;Name&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Name&gt;</i> 


### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='user_contact_information'>Feature: User Contact Information</a>

The App or Infrastructure **SHALL** be able to associate the user's contact
information (e.g., e-mail, address, phone number) with the user.


The requirements for this feature when implemented with FHIR can be found in the [UserContactInformationRequirements](StructureDefinition-UserContactInformationRequirements.html) Profile.

#### <a name='identifier-exists'>Scenario: Identifier Exists</a>

Each User is uniquely identified

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : an <i>&lt;Identifier&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Identifier&gt;</i> 

   AND
   : <i>&lt;Identifier&gt;</i> is one of the following:

  * <i>&lt;Identifier&gt;</i> is the user's e-mail address or

  * <i>&lt;Identifier&gt;</i> is the user's login identifier for another system (e.g., Google, Facebook, Twitter, et cetera) or

  * <i>&lt;Identifier&gt;</i> is the user's selected login name for <i>&lt;App&gt;</i> or

  * <i>&lt;Identifier&gt;</i> is a unique string (e.g., UUID or string) assigned by <i>&lt;App&gt;</i>

BUT
: <i>&lt;Identifier&gt;</i> is not something else


#### <a name='name-exists'>Scenario: Name Exists</a>

The user has a name.

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : a user <i>&lt;Name&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Name&gt;</i> 


#### <a name='contact-information-exists'>Scenario: Contact Information Exists</a>

The user has contact information.

GIVEN
: a <i>&lt;User&gt;</i>Record

   AND
   : a <i>&lt;Contact&gt;</i> information item

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains one or more <i>&lt;Contact&gt;</i> 

   AND
   : <i>&lt;Contact&gt;</i> is one of the following:

  * <i>&lt;Contact&gt;</i> is the user's postal address, or

  * <i>&lt;Contact&gt;</i> is the user's e-mail address, or

  * <i>&lt;Contact&gt;</i> is the user's telephone number

BUT
: <i>&lt;Contact&gt;</i> is not something else


### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='user_date_of_birth'>Feature: Date of Birth</a>

The App and Infrastructure **SHALL** be able to associate a birth date with the patient.


The requirements for this feature when implemented with FHIR can be found in the [UserDateOfBirthRequirements](StructureDefinition-UserDateOfBirthRequirements.html) Profile.

#### <a name='identifier-exists'>Scenario: Identifier Exists</a>

Each User is uniquely identified

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : an <i>&lt;Identifier&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Identifier&gt;</i> 

   AND
   : <i>&lt;Identifier&gt;</i> is one of the following:

  * <i>&lt;Identifier&gt;</i> is the user's e-mail address or

  * <i>&lt;Identifier&gt;</i> is the user's login identifier for another system (e.g., Google, Facebook, Twitter, et cetera) or

  * <i>&lt;Identifier&gt;</i> is the user's selected login name for <i>&lt;App&gt;</i> or

  * <i>&lt;Identifier&gt;</i> is a unique string (e.g., UUID or string) assigned by <i>&lt;App&gt;</i>

BUT
: <i>&lt;Identifier&gt;</i> is not something else


#### <a name='name-exists'>Scenario: Name Exists</a>

The user has a name.

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : a user <i>&lt;Name&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Name&gt;</i> 


#### <a name='contact-information-exists'>Scenario: Contact Information Exists</a>

The user has contact information.

GIVEN
: a <i>&lt;User&gt;</i>Record

   AND
   : a <i>&lt;Contact&gt;</i> information item

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains one or more <i>&lt;Contact&gt;</i> 

   AND
   : <i>&lt;Contact&gt;</i> is one of the following:

  * <i>&lt;Contact&gt;</i> is the user's postal address, or

  * <i>&lt;Contact&gt;</i> is the user's e-mail address, or

  * <i>&lt;Contact&gt;</i> is the user's telephone number

BUT
: <i>&lt;Contact&gt;</i> is not something else


#### <a name='birth-date-exists'>Scenario: Birth Date Exists</a>

The user has a date of birth.

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : a <i>&lt;Birthdate&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Birthdate&gt;</i> 


### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-cloud'/> <a name='user_birth_sex'>Feature: Birth Sex</a>

If the user's birth sex is essential to compute a measurement, the App/Infrastructure **SHALL** be able to associate/report the birth sex of the user.


The requirements for this feature when implemented with FHIR can be found in the [UserBirthSexRequirements](StructureDefinition-UserBirthSexRequirements.html) Profile.

#### <a name='identifier-exists'>Scenario: Identifier Exists</a>

Each User is uniquely identified

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : an <i>&lt;Identifier&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Identifier&gt;</i> 

   AND
   : <i>&lt;Identifier&gt;</i> is one of the following:

  * <i>&lt;Identifier&gt;</i> is the user's e-mail address or

  * <i>&lt;Identifier&gt;</i> is the user's login identifier for another system (e.g., Google, Facebook, Twitter, et cetera) or

  * <i>&lt;Identifier&gt;</i> is the user's selected login name for <i>&lt;App&gt;</i> or

  * <i>&lt;Identifier&gt;</i> is a unique string (e.g., UUID or string) assigned by <i>&lt;App&gt;</i>

BUT
: <i>&lt;Identifier&gt;</i> is not something else


#### <a name='name-exists'>Scenario: Name Exists</a>

The user has a name.

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : a user <i>&lt;Name&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Name&gt;</i> 


#### <a name='contact-information-exists'>Scenario: Contact Information Exists</a>

The user has contact information.

GIVEN
: a <i>&lt;User&gt;</i>Record

   AND
   : a <i>&lt;Contact&gt;</i> information item

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains one or more <i>&lt;Contact&gt;</i> 

   AND
   : <i>&lt;Contact&gt;</i> is one of the following:

  * <i>&lt;Contact&gt;</i> is the user's postal address, or

  * <i>&lt;Contact&gt;</i> is the user's e-mail address, or

  * <i>&lt;Contact&gt;</i> is the user's telephone number

BUT
: <i>&lt;Contact&gt;</i> is not something else


#### <a name='birth-date-exists'>Scenario: Birth Date Exists</a>

The user has a date of birth.

GIVEN
: a <i>&lt;User&gt;</i> Record

   AND
   : a <i>&lt;Birthdate&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Birthdate&gt;</i> 


#### <a name='birth-sex-exists'>Scenario: Birth Sex Exists</a>

The user has a birth sex.

GIVEN
: Birth Sex is essential to device configuration

   AND
   : a <i>&lt;User&gt;</i> Record

   AND
   : a <i>&lt;Birth Sex&gt;</i>

WHEN
: <i>&lt;User&gt;</i> is retrieved

THEN
: <i>&lt;User&gt;</i> contains <i>&lt;Birth Sex&gt;</i> 

