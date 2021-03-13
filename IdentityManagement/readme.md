# ORSCF-IdentityManagement Schema Specification
author: ORSCF ("Open Research Study Communication Formats")
license: [Apache-2](https://choosealicense.com/licenses/apache-2.0/)
last update: 13.03.2021
add. info: [orscf.org](https://www.orscf.org)
 
 
# Model:

![chart](./chart.png)



## AdditionalSubjectParticipationIdentifier


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ParticipantIdentifier](#AdditionalSubjectParticipationIdentifierParticipantIdentifier-Field) **(KEY)** (FK) | *string* (50) | YES | YES |
| [IdentifierName](#AdditionalSubjectParticipationIdentifierIdentifierName-Field) **(KEY)** | *string* (30) | YES | YES |
| [IdentifierValue](#AdditionalSubjectParticipationIdentifierIdentifierValue-Field) | *string* | YES | no |
##### AdditionalSubjectParticipationIdentifier.**ParticipantIdentifier** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'Participation'
* the maximum length of the content within this field is 50 characters.
* after the record has been created, the value of this field must not be changed any more!
##### AdditionalSubjectParticipationIdentifier.**IdentifierName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 30 characters.
* after the record has been created, the value of this field must not be changed any more!
##### AdditionalSubjectParticipationIdentifier.**IdentifierValue** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Participation](#Participation-parent-of-this-AdditionalSubjectParticipationIdentifier) | Parent | [SubjectParticipation](#SubjectParticipation) | 0/1 (optional) |

##### **Participation** (parent of this AdditionalSubjectParticipationIdentifier)
Target Type: [SubjectParticipation](#SubjectParticipation)
Addressed by: [ParticipantIdentifier](#AdditionalSubjectParticipationIdentifierParticipantIdentifier-Field).
```
self describing ...
```




## SubjectParticipation


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ParticipantIdentifier](#SubjectParticipationParticipantIdentifier-Field) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#SubjectParticipationStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#SubjectParticipationStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [CreationDateUtc](#SubjectParticipationCreationDateUtc-Field) | *datetime* | YES | no |
| [CreatedForStudyExecutionIdentifier](#SubjectParticipationCreatedForStudyExecutionIdentifier-Field) (FK) | *guid* | YES | no |
| [SubjectIdentityRecordId](#SubjectParticipationSubjectIdentityRecordId-Field) (FK) | *guid* | no | no |
##### SubjectParticipation.**ParticipantIdentifier** (Field)
```
identity of the patient which can be a randomization or screening number (the exact semantic is defined per study)
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.
##### SubjectParticipation.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'StudyScope'
* the maximum length of the content within this field is 100 characters.
##### SubjectParticipation.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'StudyScope'
* the maximum length of the content within this field is 20 characters.
##### SubjectParticipation.**CreationDateUtc** (Field)
```
self describing ...
```
##### SubjectParticipation.**CreatedForStudyExecutionIdentifier** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'StudyExecutionScope'
##### SubjectParticipation.**SubjectIdentityRecordId** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
* this field is used as foreign key to address the related 'Identity'


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [AdditionalIdentifiers](#AdditionalIdentifiers-childs-of-this-SubjectParticipation) | Childs | [AdditionalSubjectParticipationIdentifier](#AdditionalSubjectParticipationIdentifier) | * (multiple) |
| [StudyExecutionScope](#StudyExecutionScope-lookup-from-this-SubjectParticipation) | Lookup | [StudyExecutionScope](#StudyExecutionScope) | 0/1 (optional) |
| [StudyScope](#StudyScope-parent-of-this-SubjectParticipation) | Parent | [StudyScope](#StudyScope) | 0/1 (optional) |
| [Identity](#Identity-lookup-from-this-SubjectParticipation) | Lookup | [SubjectIdentity](#SubjectIdentity) | 1 (required) |

##### **AdditionalIdentifiers** (childs of this SubjectParticipation)
Target: [AdditionalSubjectParticipationIdentifier](#AdditionalSubjectParticipationIdentifier)
```
self describing ...
```
##### **StudyExecutionScope** (lookup from this SubjectParticipation)
Target Type: [StudyExecutionScope](#StudyExecutionScope)
Addressed by: [CreatedForStudyExecutionIdentifier](#SubjectParticipationCreatedForStudyExecutionIdentifier-Field).
```
self describing ...
```
##### **StudyScope** (parent of this SubjectParticipation)
Target Type: [StudyScope](#StudyScope)
Addressed by: [StudyWorkflowName](#SubjectParticipationStudyWorkflowName-Field), [StudyWorkflowVersion](#SubjectParticipationStudyWorkflowVersion-Field).
```
self describing ...
```
##### **Identity** (lookup from this SubjectParticipation)
Target Type: [SubjectIdentity](#SubjectIdentity)
Addressed by: [SubjectIdentityRecordId](#SubjectParticipationSubjectIdentityRecordId-Field).
```
self describing ...
```




## StudyExecutionScope


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyExecutionIdentifier](#StudyExecutionScopeStudyExecutionIdentifier-Field) **(KEY)** | *guid* | YES | no |
| [ExecutingInstituteIdentifier](#StudyExecutionScopeExecutingInstituteIdentifier-Field) | *string* | YES | no |
| [StudyWorkflowName](#StudyExecutionScopeStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#StudyExecutionScopeStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
##### StudyExecutionScope.**StudyExecutionIdentifier** (Field)
```
a global unique id of a concrete study execution (dedicated to a concrete institute) which is usually originated at the primary CRF or study management system ('SMS')
```
* this field represents the identity (PK) of the record
##### StudyExecutionScope.**ExecutingInstituteIdentifier** (Field)
```
the institute which is executing the study (this should be an invariant technical representation of the company name or a guid)
```
##### StudyExecutionScope.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'StudyScope'
* the maximum length of the content within this field is 100 characters.
##### StudyExecutionScope.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'StudyScope'
* the maximum length of the content within this field is 20 characters.


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [StudyScope](#StudyScope-parent-of-this-StudyExecutionScope) | Parent | [StudyScope](#StudyScope) | 0/1 (optional) |
| [CreatedParticipations](#CreatedParticipations-refering-to-this-StudyExecutionScope) | Referers | [SubjectParticipation](#SubjectParticipation) | * (multiple) |

##### **StudyScope** (parent of this StudyExecutionScope)
Target Type: [StudyScope](#StudyScope)
Addressed by: [StudyWorkflowName](#StudyExecutionScopeStudyWorkflowName-Field), [StudyWorkflowVersion](#StudyExecutionScopeStudyWorkflowVersion-Field).
```
self describing ...
```
##### **CreatedParticipations** (refering to this StudyExecutionScope)
Target: [SubjectParticipation](#SubjectParticipation)
```
self describing ...
```




## StudyScope


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyWorkflowName](#StudyScopeStudyWorkflowName-Field) **(KEY)** | *string* (100) | YES | YES |
| [StudyWorkflowVersion](#StudyScopeStudyWorkflowVersion-Field) **(KEY)** | *string* (20) | YES | YES |
| [ParticipantIdentifierSemantic](#StudyScopeParticipantIdentifierSemantic-Field) | *string* | YES | no |
##### StudyScope.**StudyWorkflowName** (Field)
```
the official invariant name of the study as given by the sponsor
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 100 characters.
* after the record has been created, the value of this field must not be changed any more!
##### StudyScope.**StudyWorkflowVersion** (Field)
```
version of the workflow
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 20 characters.
* after the record has been created, the value of this field must not be changed any more!
##### StudyScope.**ParticipantIdentifierSemantic** (Field)
```
 for example "Screening-Number" or "Randomization-Number"
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ExecutionScopes](#ExecutionScopes-childs-of-this-StudyScope) | Childs | [StudyExecutionScope](#StudyExecutionScope) | * (multiple) |
| [Participations](#Participations-childs-of-this-StudyScope) | Childs | [SubjectParticipation](#SubjectParticipation) | * (multiple) |

##### **ExecutionScopes** (childs of this StudyScope)
Target: [StudyExecutionScope](#StudyExecutionScope)
```
self describing ...
```
##### **Participations** (childs of this StudyScope)
Target: [SubjectParticipation](#SubjectParticipation)
```
self describing ...
```




## SubjectAddress


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [InternalRecordId](#SubjectAddressInternalRecordId-Field) **(KEY)** | *guid* | YES | no |
| [Street](#SubjectAddressStreet-Field) | *string* | YES | no |
| [HouseNumber](#SubjectAddressHouseNumber-Field) | *string* | YES | no |
| [PostCode](#SubjectAddressPostCode-Field) | *string* | YES | no |
| [City](#SubjectAddressCity-Field) | *string* | YES | no |
| [State](#SubjectAddressState-Field) | *string* | YES | no |
| [Country](#SubjectAddressCountry-Field) | *string* | YES | no |
| [PhoneNumber](#SubjectAddressPhoneNumber-Field) | *string* | no | no |
##### SubjectAddress.**InternalRecordId** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### SubjectAddress.**Street** (Field)
```
self describing ...
```
##### SubjectAddress.**HouseNumber** (Field)
```
self describing ...
```
##### SubjectAddress.**PostCode** (Field)
```
self describing ...
```
##### SubjectAddress.**City** (Field)
```
self describing ...
```
##### SubjectAddress.**State** (Field)
```
self describing ...
```
##### SubjectAddress.**Country** (Field)
```
self describing ...
```
##### SubjectAddress.**PhoneNumber** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [SubjectIdentities](#SubjectIdentities-refering-to-this-SubjectAddress) | Referers | [SubjectIdentity](#SubjectIdentity) | * (multiple) |

##### **SubjectIdentities** (refering to this SubjectAddress)
Target: [SubjectIdentity](#SubjectIdentity)
```
self describing ...
```




## SubjectIdentity


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [RecordId](#SubjectIdentityRecordId-Field) **(KEY)** | *guid* | YES | no |
| [FirstName](#SubjectIdentityFirstName-Field) | *string* | no | no |
| [LastName](#SubjectIdentityLastName-Field) | *string* | no | no |
| [Gender](#SubjectIdentityGender-Field) | *int32* | no | no |
| [DateOfBirth](#SubjectIdentityDateOfBirth-Field) | *datetime* | no | no |
| [DateOfDeath](#SubjectIdentityDateOfDeath-Field) | *datetime* | no | no |
| [FullNamePattern](#SubjectIdentityFullNamePattern-Field) | *string* | no | no |
| [Language](#SubjectIdentityLanguage-Field) | *string* | no | no |
| [Notes](#SubjectIdentityNotes-Field) | *string* | no | no |
| [Email](#SubjectIdentityEmail-Field) | *string* | no | no |
| [MobileNumber](#SubjectIdentityMobileNumber-Field) | *string* | no | no |
| [ResidentAddressId](#SubjectIdentityResidentAddressId-Field) (FK) | *guid* | no | no |
##### SubjectIdentity.**RecordId** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### SubjectIdentity.**FirstName** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**LastName** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**Gender** (Field)
```
0=Male / 1=Female / 2=Other
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**DateOfBirth** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**DateOfDeath** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**FullNamePattern** (Field)
```
can be used to specify the full salutation including all academic grades by a string containing the placeholders: "{G}"=Gender {F}="FirstName" {L}="LastName". If not specified, a generic fallback can be used
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**Language** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**Notes** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**Email** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**MobileNumber** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### SubjectIdentity.**ResidentAddressId** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
* this field is used as foreign key to address the related 'ResidentAddress'


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ResidentAddress](#ResidentAddress-lookup-from-this-SubjectIdentity) | Lookup | [SubjectAddress](#SubjectAddress) | 1 (required) |
| [Participations](#Participations-refering-to-this-SubjectIdentity) | Referers | [SubjectParticipation](#SubjectParticipation) | * (multiple) |

##### **ResidentAddress** (lookup from this SubjectIdentity)
Target Type: [SubjectAddress](#SubjectAddress)
Addressed by: [ResidentAddressId](#SubjectIdentityResidentAddressId-Field).
```
self describing ...
```
##### **Participations** (refering to this SubjectIdentity)
Target: [SubjectParticipation](#SubjectParticipation)
```
self describing ...
```


