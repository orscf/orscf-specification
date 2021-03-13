# ORSCF-IdentityManagement Schema Specification
author: ORSCF ("Open Research Study Communication Formats")
license: [Apache-2](https://choosealicense.com/licenses/apache-2.0/)
last update: 13.03.2021
add. info: [orscf.org](https://www.orscf.org)
 
 
# Model:

![chart](./chart.png)



## Type: AdditionalSubjectParticipationIdentifier


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ParticipantIdentifier](#AdditionalSubjectParticipationIdentifier.**ParticipantIdentifier** (Field)) **(KEY)** (FK) | *string* (50) | YES | YES |
| [IdentifierName](#AdditionalSubjectParticipationIdentifier.**IdentifierName** (Field)) **(KEY)** | *string* (30) | YES | YES |
| [IdentifierValue](#AdditionalSubjectParticipationIdentifier.**IdentifierValue** (Field)) | *string* | YES | no |
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
| [Participation](#**Participation** (parent of this AdditionalSubjectParticipationIdentifier)) | Parent | [SubjectParticipation](#Type: SubjectParticipation) | 0/1 (optional) |

##### **Participation** (parent of this AdditionalSubjectParticipationIdentifier)
Target Type: [SubjectParticipation](#Type: SubjectParticipation)
Addressed by: [ParticipantIdentifier](#AdditionalSubjectParticipationIdentifier.ParticipantIdentifier (Field)).
```
self describing ...
```




## Type: SubjectParticipation


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ParticipantIdentifier](#SubjectParticipation.**ParticipantIdentifier** (Field)) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#SubjectParticipation.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#SubjectParticipation.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [CreationDateUtc](#SubjectParticipation.**CreationDateUtc** (Field)) | *datetime* | YES | no |
| [CreatedForStudyExecutionIdentifier](#SubjectParticipation.**CreatedForStudyExecutionIdentifier** (Field)) (FK) | *guid* | YES | no |
| [SubjectIdentityRecordId](#SubjectParticipation.**SubjectIdentityRecordId** (Field)) (FK) | *guid* | no | no |
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
| [AdditionalIdentifiers](#**AdditionalIdentifiers** (childs of this SubjectParticipation)) | Childs | [AdditionalSubjectParticipationIdentifier](#Type: AdditionalSubjectParticipationIdentifier) | * (multiple) |
| [StudyExecutionScope](#**StudyExecutionScope** (lookup from this SubjectParticipation)) | Lookup | [StudyExecutionScope](#Type: StudyExecutionScope) | 0/1 (optional) |
| [StudyScope](#**StudyScope** (parent of this SubjectParticipation)) | Parent | [StudyScope](#Type: StudyScope) | 0/1 (optional) |
| [Identity](#**Identity** (lookup from this SubjectParticipation)) | Lookup | [SubjectIdentity](#Type: SubjectIdentity) | 1 (required) |

##### **AdditionalIdentifiers** (childs of this SubjectParticipation)
Target: [AdditionalSubjectParticipationIdentifier](#Type: AdditionalSubjectParticipationIdentifier)
```
self describing ...
```
##### **StudyExecutionScope** (lookup from this SubjectParticipation)
Target Type: [StudyExecutionScope](#Type: StudyExecutionScope)
Addressed by: [CreatedForStudyExecutionIdentifier](#SubjectParticipation.CreatedForStudyExecutionIdentifier (Field)).
```
self describing ...
```
##### **StudyScope** (parent of this SubjectParticipation)
Target Type: [StudyScope](#Type: StudyScope)
Addressed by: [StudyWorkflowName](#SubjectParticipation.StudyWorkflowName (Field)), [StudyWorkflowVersion](#SubjectParticipation.StudyWorkflowVersion (Field)).
```
self describing ...
```
##### **Identity** (lookup from this SubjectParticipation)
Target Type: [SubjectIdentity](#Type: SubjectIdentity)
Addressed by: [SubjectIdentityRecordId](#SubjectParticipation.SubjectIdentityRecordId (Field)).
```
self describing ...
```




## Type: StudyExecutionScope


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyExecutionIdentifier](#StudyExecutionScope.**StudyExecutionIdentifier** (Field)) **(KEY)** | *guid* | YES | no |
| [ExecutingInstituteIdentifier](#StudyExecutionScope.**ExecutingInstituteIdentifier** (Field)) | *string* | YES | no |
| [StudyWorkflowName](#StudyExecutionScope.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#StudyExecutionScope.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
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
| [StudyScope](#**StudyScope** (parent of this StudyExecutionScope)) | Parent | [StudyScope](#Type: StudyScope) | 0/1 (optional) |
| [CreatedParticipations](#**CreatedParticipations** (refering to this StudyExecutionScope)) | Referers | [SubjectParticipation](#Type: SubjectParticipation) | * (multiple) |

##### **StudyScope** (parent of this StudyExecutionScope)
Target Type: [StudyScope](#Type: StudyScope)
Addressed by: [StudyWorkflowName](#StudyExecutionScope.StudyWorkflowName (Field)), [StudyWorkflowVersion](#StudyExecutionScope.StudyWorkflowVersion (Field)).
```
self describing ...
```
##### **CreatedParticipations** (refering to this StudyExecutionScope)
Target: [SubjectParticipation](#Type: SubjectParticipation)
```
self describing ...
```




## Type: StudyScope


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyWorkflowName](#StudyScope.**StudyWorkflowName** (Field)) **(KEY)** | *string* (100) | YES | YES |
| [StudyWorkflowVersion](#StudyScope.**StudyWorkflowVersion** (Field)) **(KEY)** | *string* (20) | YES | YES |
| [ParticipantIdentifierSemantic](#StudyScope.**ParticipantIdentifierSemantic** (Field)) | *string* | YES | no |
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
| [ExecutionScopes](#**ExecutionScopes** (childs of this StudyScope)) | Childs | [StudyExecutionScope](#Type: StudyExecutionScope) | * (multiple) |
| [Participations](#**Participations** (childs of this StudyScope)) | Childs | [SubjectParticipation](#Type: SubjectParticipation) | * (multiple) |

##### **ExecutionScopes** (childs of this StudyScope)
Target: [StudyExecutionScope](#Type: StudyExecutionScope)
```
self describing ...
```
##### **Participations** (childs of this StudyScope)
Target: [SubjectParticipation](#Type: SubjectParticipation)
```
self describing ...
```




## Type: SubjectAddress


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [InternalRecordId](#SubjectAddress.**InternalRecordId** (Field)) **(KEY)** | *guid* | YES | no |
| [Street](#SubjectAddress.**Street** (Field)) | *string* | YES | no |
| [HouseNumber](#SubjectAddress.**HouseNumber** (Field)) | *string* | YES | no |
| [PostCode](#SubjectAddress.**PostCode** (Field)) | *string* | YES | no |
| [City](#SubjectAddress.**City** (Field)) | *string* | YES | no |
| [State](#SubjectAddress.**State** (Field)) | *string* | YES | no |
| [Country](#SubjectAddress.**Country** (Field)) | *string* | YES | no |
| [PhoneNumber](#SubjectAddress.**PhoneNumber** (Field)) | *string* | no | no |
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
| [SubjectIdentities](#**SubjectIdentities** (refering to this SubjectAddress)) | Referers | [SubjectIdentity](#Type: SubjectIdentity) | * (multiple) |

##### **SubjectIdentities** (refering to this SubjectAddress)
Target: [SubjectIdentity](#Type: SubjectIdentity)
```
self describing ...
```




## Type: SubjectIdentity


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [RecordId](#SubjectIdentity.**RecordId** (Field)) **(KEY)** | *guid* | YES | no |
| [FirstName](#SubjectIdentity.**FirstName** (Field)) | *string* | no | no |
| [LastName](#SubjectIdentity.**LastName** (Field)) | *string* | no | no |
| [Gender](#SubjectIdentity.**Gender** (Field)) | *int32* | no | no |
| [DateOfBirth](#SubjectIdentity.**DateOfBirth** (Field)) | *datetime* | no | no |
| [DateOfDeath](#SubjectIdentity.**DateOfDeath** (Field)) | *datetime* | no | no |
| [FullNamePattern](#SubjectIdentity.**FullNamePattern** (Field)) | *string* | no | no |
| [Language](#SubjectIdentity.**Language** (Field)) | *string* | no | no |
| [Notes](#SubjectIdentity.**Notes** (Field)) | *string* | no | no |
| [Email](#SubjectIdentity.**Email** (Field)) | *string* | no | no |
| [MobileNumber](#SubjectIdentity.**MobileNumber** (Field)) | *string* | no | no |
| [ResidentAddressId](#SubjectIdentity.**ResidentAddressId** (Field)) (FK) | *guid* | no | no |
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
| [ResidentAddress](#**ResidentAddress** (lookup from this SubjectIdentity)) | Lookup | [SubjectAddress](#Type: SubjectAddress) | 1 (required) |
| [Participations](#**Participations** (refering to this SubjectIdentity)) | Referers | [SubjectParticipation](#Type: SubjectParticipation) | * (multiple) |

##### **ResidentAddress** (lookup from this SubjectIdentity)
Target Type: [SubjectAddress](#Type: SubjectAddress)
Addressed by: [ResidentAddressId](#SubjectIdentity.ResidentAddressId (Field)).
```
self describing ...
```
##### **Participations** (refering to this SubjectIdentity)
Target: [SubjectParticipation](#Type: SubjectParticipation)
```
self describing ...
```


