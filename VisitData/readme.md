# ORSCF-VisitData Schema Specification
author: ORSCF ("Open Research Study Communication Formats")
license: [Apache-2](https://choosealicense.com/licenses/apache-2.0/)
last update: 13.03.2021
add. info: [orscf.org](https://www.orscf.org)
 
 
# Model:

![chart](./chart.png)



## Type: DataRecording


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskGuid](#DataRecording.**TaskGuid** (Field)) **(KEY)** | *guid* | YES | YES |
| [VisitGuid](#DataRecording.**VisitGuid** (Field)) (FK) | *guid* | YES | no |
| [DataRecordingName](#DataRecording.**DataRecordingName** (Field)) | *string* | YES | no |
| [TaskExecutionTitle](#DataRecording.**TaskExecutionTitle** (Field)) | *string* | YES | no |
| [ScheduledDateTimeUtc](#DataRecording.**ScheduledDateTimeUtc** (Field)) | *datetime* | no | no |
| [ExecutionDateTimeUtc](#DataRecording.**ExecutionDateTimeUtc** (Field)) | *datetime* | no | no |
| [ExecutionState](#DataRecording.**ExecutionState** (Field)) | *int32* | YES | no |
| [DataSchemaUrl](#DataRecording.**DataSchemaUrl** (Field)) | *string* | YES | no |
| [RecordedData](#DataRecording.**RecordedData** (Field)) | *string* | YES | no |
| [NotesRegardingOutcome](#DataRecording.**NotesRegardingOutcome** (Field)) | *string* | no | no |
| [ExtendedMetaData](#DataRecording.**ExtendedMetaData** (Field)) | *string* | YES | no |
| [ExecutingPerson](#DataRecording.**ExecutingPerson** (Field)) | *string* | no | no |
##### DataRecording.**TaskGuid** (Field)
```
a global unique id of a concrete study-task execution which is usually originated at the primary CRF or study management system ('SMS')
```
* this field represents the identity (PK) of the record
* after the record has been created, the value of this field must not be changed any more!
##### DataRecording.**VisitGuid** (Field)
```
the guid of the visit in which this task was executed
```
* this field is used as foreign key to address the related 'Visit'
##### DataRecording.**DataRecordingName** (Field)
```
unique invariant name of ths task-procedure as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### DataRecording.**TaskExecutionTitle** (Field)
```
title of the task execution as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### DataRecording.**ScheduledDateTimeUtc** (Field)
```
the estimated date when the visit is scheduled
```
* this field is optional, so that '*null*' values are supported
##### DataRecording.**ExecutionDateTimeUtc** (Field)
```
the real time, when the data was recorded
```
* this field is optional, so that '*null*' values are supported
##### DataRecording.**ExecutionState** (Field)
```
0=Unscheduled / 1=Sheduled / 2=Executed / 3=AbortDuringExecution / 4=Skipped / 5=Removed
```
##### DataRecording.**DataSchemaUrl** (Field)
```
schema-url of the data which were stored inside of the 'RecordedData' field
```
##### DataRecording.**RecordedData** (Field)
```
RAW data, in the schema as defined at the 'DataSchemaUrl'
```
##### DataRecording.**NotesRegardingOutcome** (Field)
```
additional notes regarding this dedcated execution (supplied by the execution person)
```
* this field is optional, so that '*null*' values are supported
##### DataRecording.**ExtendedMetaData** (Field)
```
optional structure (in JSON-format) containing additional metadata regarding this record, which can be used by 'StudyExecutionSystems' to extend the schema
```
##### DataRecording.**ExecutingPerson** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Visit](#**Visit** (parent of this DataRecording)) | Parent | [Visit](#Type: Visit) | 0/1 (optional) |

##### **Visit** (parent of this DataRecording)
Target Type: [Visit](#Type: Visit)
Addressed by: [VisitGuid](#DataRecording.VisitGuid (Field)).
```
self describing ...
```




## Type: Visit


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [VisitGuid](#Visit.**VisitGuid** (Field)) **(KEY)** | *guid* | YES | YES |
| [ParticipantIdentifier](#Visit.**ParticipantIdentifier** (Field)) | *string* (50) | YES | YES |
| [StudyExecutionIdentifier](#Visit.**StudyExecutionIdentifier** (Field)) (FK) | *guid* | YES | no |
| [VisitProdecureName](#Visit.**VisitProdecureName** (Field)) | *string* | YES | no |
| [VisitExecutionTitle](#Visit.**VisitExecutionTitle** (Field)) | *string* | YES | no |
| [ScheduledDateUtc](#Visit.**ScheduledDateUtc** (Field)) | *datetime* | no | no |
| [ExecutionDateUtc](#Visit.**ExecutionDateUtc** (Field)) | *datetime* | no | no |
| [ExecutionState](#Visit.**ExecutionState** (Field)) | *int32* | YES | no |
| [ExtendedMetaData](#Visit.**ExtendedMetaData** (Field)) | *string* | no | no |
| [ExecutingPerson](#Visit.**ExecutingPerson** (Field)) | *string* | no | no |
##### Visit.**VisitGuid** (Field)
```
a global unique id of a concrete study-visit execution which is usually originated at the primary CRF or study management system ('SMS')
```
* this field represents the identity (PK) of the record
* after the record has been created, the value of this field must not be changed any more!
##### Visit.**ParticipantIdentifier** (Field)
```
identity of the patient which can be a randomization or screening number (the exact semantic is defined per study)
```
* the maximum length of the content within this field is 50 characters.
* after the record has been created, the value of this field must not be changed any more!
##### Visit.**StudyExecutionIdentifier** (Field)
```
a global unique id of a concrete study execution (dedicated to a concrete institute) which is usually originated at the primary CRF or study management system ('SMS')
```
* this field is used as foreign key to address the related 'StudyExecution'
##### Visit.**VisitProdecureName** (Field)
```
unique invariant name of the visit-procedure as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### Visit.**VisitExecutionTitle** (Field)
```
title of the visit execution as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### Visit.**ScheduledDateUtc** (Field)
```
the estimated date when the visit is scheduled for execution
```
* this field is optional, so that '*null*' values are supported
##### Visit.**ExecutionDateUtc** (Field)
```
the real date, when the visits was executed
```
* this field is optional, so that '*null*' values are supported
##### Visit.**ExecutionState** (Field)
```
0=Unscheduled / 1=Sheduled / 2=Executed / 3=AbortDuringExecution / 4=Skipped / 5=Removed
```
##### Visit.**ExtendedMetaData** (Field)
```
optional structure (in JSON-format) containing additional metadata regarding this record, which can be used by 'StudyExecutionSystems' to extend the schema
```
* this field is optional, so that '*null*' values are supported
##### Visit.**ExecutingPerson** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [DataRecordings](#**DataRecordings** (childs of this Visit)) | Childs | [DataRecording](#Type: DataRecording) | * (multiple) |
| [DrugApplyments](#**DrugApplyments** (childs of this Visit)) | Childs | [DrugApplyment](#Type: DrugApplyment) | * (multiple) |
| [StudyExecution](#**StudyExecution** (lookup from this Visit)) | Lookup | [StudyExecutionScope](#Type: StudyExecutionScope) | 0/1 (optional) |
| [Treatments](#**Treatments** (childs of this Visit)) | Childs | [Treatment](#Type: Treatment) | * (multiple) |

##### **DataRecordings** (childs of this Visit)
Target: [DataRecording](#Type: DataRecording)
```
all the data which has been captured for this visit
```
##### **DrugApplyments** (childs of this Visit)
Target: [DrugApplyment](#Type: DrugApplyment)
```
all the drug applyments which have been executed for this visit
```
##### **StudyExecution** (lookup from this Visit)
Target Type: [StudyExecutionScope](#Type: StudyExecutionScope)
Addressed by: [StudyExecutionIdentifier](#Visit.StudyExecutionIdentifier (Field)).
```
self describing ...
```
##### **Treatments** (childs of this Visit)
Target: [Treatment](#Type: Treatment)
```
all the treatments which have been executed for this visit
```




## Type: DrugApplyment


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskGuid](#DrugApplyment.**TaskGuid** (Field)) **(KEY)** | *guid* | YES | YES |
| [VisitGuid](#DrugApplyment.**VisitGuid** (Field)) (FK) | *guid* | YES | no |
| [DrugApplymentName](#DrugApplyment.**DrugApplymentName** (Field)) | *string* | YES | no |
| [TaskExecutionTitle](#DrugApplyment.**TaskExecutionTitle** (Field)) | *string* | YES | no |
| [ScheduledDateTimeUtc](#DrugApplyment.**ScheduledDateTimeUtc** (Field)) | *datetime* | no | no |
| [ExecutionDateTimeUtc](#DrugApplyment.**ExecutionDateTimeUtc** (Field)) | *datetime* | no | no |
| [ExecutionState](#DrugApplyment.**ExecutionState** (Field)) | *int32* | YES | no |
| [DrugName](#DrugApplyment.**DrugName** (Field)) | *string* | YES | no |
| [DrugDoseMgPerUnitMg](#DrugApplyment.**DrugDoseMgPerUnitMg** (Field)) | *decimal* | YES | no |
| [AppliedUnits](#DrugApplyment.**AppliedUnits** (Field)) | *decimal* | YES | no |
| [NotesRegardingOutcome](#DrugApplyment.**NotesRegardingOutcome** (Field)) | *string* | no | no |
| [ExtendedMetaData](#DrugApplyment.**ExtendedMetaData** (Field)) | *string* | YES | no |
| [ExecutingPerson](#DrugApplyment.**ExecutingPerson** (Field)) | *string* | no | no |
##### DrugApplyment.**TaskGuid** (Field)
```
a global unique id of a concrete study-task execution which is usually originated at the primary CRF or study management system ('SMS')
```
* this field represents the identity (PK) of the record
* after the record has been created, the value of this field must not be changed any more!
##### DrugApplyment.**VisitGuid** (Field)
```
the guid of the visit in which this task was executed
```
* this field is used as foreign key to address the related 'Visit'
##### DrugApplyment.**DrugApplymentName** (Field)
```
unique invariant name of the study itself as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### DrugApplyment.**TaskExecutionTitle** (Field)
```
title of the task execution as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### DrugApplyment.**ScheduledDateTimeUtc** (Field)
```
the estimated time when the drug applyment is scheduled
```
* this field is optional, so that '*null*' values are supported
##### DrugApplyment.**ExecutionDateTimeUtc** (Field)
```
the real date, when the visits was executed
```
* this field is optional, so that '*null*' values are supported
##### DrugApplyment.**ExecutionState** (Field)
```
0=Unscheduled / 1=Sheduled / 2=Executed / 3=AbortDuringExecution / 4=Skipped / 5=Removed
```
##### DrugApplyment.**DrugName** (Field)
```
name of the drug
```
##### DrugApplyment.**DrugDoseMgPerUnitMg** (Field)
```
dose (mg) which is inside of one unit
```
##### DrugApplyment.**AppliedUnits** (Field)
```
amount of applied units
```
##### DrugApplyment.**NotesRegardingOutcome** (Field)
```
additional notes regarding this dedcated execution (supplied by the execution person)
```
* this field is optional, so that '*null*' values are supported
##### DrugApplyment.**ExtendedMetaData** (Field)
```
optional structure (in JSON-format) containing additional metadata regarding this record, which can be used by 'StudyExecutionSystems' to extend the schema
```
##### DrugApplyment.**ExecutingPerson** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Visit](#**Visit** (parent of this DrugApplyment)) | Parent | [Visit](#Type: Visit) | 0/1 (optional) |

##### **Visit** (parent of this DrugApplyment)
Target Type: [Visit](#Type: Visit)
Addressed by: [VisitGuid](#DrugApplyment.VisitGuid (Field)).
```
self describing ...
```




## Type: StudyEvent


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [EventGuid](#StudyEvent.**EventGuid** (Field)) **(KEY)** | *guid* | YES | no |
| [ParticipantIdentifier](#StudyEvent.**ParticipantIdentifier** (Field)) | *string* | YES | no |
| [StudyExecutionIdentifier](#StudyEvent.**StudyExecutionIdentifier** (Field)) (FK) | *guid* | YES | no |
| [StudyEventName](#StudyEvent.**StudyEventName** (Field)) | *string* | YES | no |
| [ExtendedMetaData](#StudyEvent.**ExtendedMetaData** (Field)) | *string* | no | no |
| [OccourrenceDateTimeUtc](#StudyEvent.**OccourrenceDateTimeUtc** (Field)) | *datetime* | YES | no |
| [CauseInfo](#StudyEvent.**CauseInfo** (Field)) | *string* | YES | no |
| [AdditionalNotes](#StudyEvent.**AdditionalNotes** (Field)) | *string* | no | no |
##### StudyEvent.**EventGuid** (Field)
```
a global unique id of a concrete study-event occurrence which is usually originated at the primary CRF or study management system ('SMS')
```
* this field represents the identity (PK) of the record
##### StudyEvent.**ParticipantIdentifier** (Field)
```
identity of the patient which can be a randomization or screening number (the exact semantic is defined per study)
```
##### StudyEvent.**StudyExecutionIdentifier** (Field)
```
a global unique id of a concrete study execution (dedicated to a concrete institute) which is usually originated at the primary CRF or study management system ('SMS')
```
* this field is used as foreign key to address the related 'StudyExecution'
##### StudyEvent.**StudyEventName** (Field)
```
unique invariant name of the event as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### StudyEvent.**ExtendedMetaData** (Field)
```
optional structure (in JSON-format) containing additional metadata regarding this record, which can be used by 'StudyExecutionSystems' to extend the schema
```
* this field is optional, so that '*null*' values are supported
##### StudyEvent.**OccourrenceDateTimeUtc** (Field)
```
self describing ...
```
##### StudyEvent.**CauseInfo** (Field)
```
self describing ...
```
##### StudyEvent.**AdditionalNotes** (Field)
```
additional notes (supplied by the execution person)
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [StudyExecution](#**StudyExecution** (lookup from this StudyEvent)) | Lookup | [StudyExecutionScope](#Type: StudyExecutionScope) | 0/1 (optional) |

##### **StudyExecution** (lookup from this StudyEvent)
Target Type: [StudyExecutionScope](#Type: StudyExecutionScope)
Addressed by: [StudyExecutionIdentifier](#StudyEvent.StudyExecutionIdentifier (Field)).
```
self describing ...
```




## Type: StudyExecutionScope


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyExecutionIdentifier](#StudyExecutionScope.**StudyExecutionIdentifier** (Field)) **(KEY)** | *guid* | YES | YES |
| [ExecutingInstituteIdentifier](#StudyExecutionScope.**ExecutingInstituteIdentifier** (Field)) | *string* | YES | YES |
| [StudyWorkflowName](#StudyExecutionScope.**StudyWorkflowName** (Field)) | *string* (100) | YES | YES |
| [StudyWorkflowVersion](#StudyExecutionScope.**StudyWorkflowVersion** (Field)) | *string* (20) | YES | YES |
| [ExtendedMetaData](#StudyExecutionScope.**ExtendedMetaData** (Field)) | *string* | no | no |
##### StudyExecutionScope.**StudyExecutionIdentifier** (Field)
```
a global unique id of a concrete study execution (dedicated to a concrete institute) which is usually originated at the primary CRF or study management system ('SMS')
```
* this field represents the identity (PK) of the record
* after the record has been created, the value of this field must not be changed any more!
##### StudyExecutionScope.**ExecutingInstituteIdentifier** (Field)
```
the institute which is executing the study (this should be an invariant technical representation of the company name or a guid)
```
* after the record has been created, the value of this field must not be changed any more!
##### StudyExecutionScope.**StudyWorkflowName** (Field)
```
the official invariant name of the study as given by the sponsor
```
* the maximum length of the content within this field is 100 characters.
* after the record has been created, the value of this field must not be changed any more!
##### StudyExecutionScope.**StudyWorkflowVersion** (Field)
```
version of the workflow
```
* the maximum length of the content within this field is 20 characters.
* after the record has been created, the value of this field must not be changed any more!
##### StudyExecutionScope.**ExtendedMetaData** (Field)
```
optional structure (in JSON-format) containing additional metadata regarding this record, which can be used by 'StudyExecutionSystems' to extend the schema
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Events](#**Events** (refering to this StudyExecutionScope)) | Referers | [StudyEvent](#Type: StudyEvent) | * (multiple) |
| [Visits](#**Visits** (refering to this StudyExecutionScope)) | Referers | [Visit](#Type: Visit) | * (multiple) |

##### **Events** (refering to this StudyExecutionScope)
Target: [StudyEvent](#Type: StudyEvent)
```
self describing ...
```
##### **Visits** (refering to this StudyExecutionScope)
Target: [Visit](#Type: Visit)
```
self describing ...
```




## Type: Treatment


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskGuid](#Treatment.**TaskGuid** (Field)) **(KEY)** | *guid* | YES | YES |
| [VisitGuid](#Treatment.**VisitGuid** (Field)) (FK) | *guid* | YES | no |
| [TreatmentName](#Treatment.**TreatmentName** (Field)) | *string* | YES | no |
| [TaskExecutionTitle](#Treatment.**TaskExecutionTitle** (Field)) | *string* | YES | no |
| [ScheduledDateTimeUtc](#Treatment.**ScheduledDateTimeUtc** (Field)) | *datetime* | no | no |
| [ExecutionDateTimeUtc](#Treatment.**ExecutionDateTimeUtc** (Field)) | *datetime* | no | no |
| [ExecutionState](#Treatment.**ExecutionState** (Field)) | *int32* | YES | no |
| [NotesRegardingOutcome](#Treatment.**NotesRegardingOutcome** (Field)) | *string* | no | no |
| [ExtendedMetaData](#Treatment.**ExtendedMetaData** (Field)) | *string* | YES | no |
| [ExecutingPerson](#Treatment.**ExecutingPerson** (Field)) | *string* | no | no |
##### Treatment.**TaskGuid** (Field)
```
a global unique id of a concrete study-task execution which is usually originated at the primary CRF or study management system ('SMS')
```
* this field represents the identity (PK) of the record
* after the record has been created, the value of this field must not be changed any more!
##### Treatment.**VisitGuid** (Field)
```
the guid of the visit in which this task was executed
```
* this field is used as foreign key to address the related 'Visit'
##### Treatment.**TreatmentName** (Field)
```
unique invariant name of ths task-procedure as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### Treatment.**TaskExecutionTitle** (Field)
```
title of the task execution as defined in the 'StudyWorkflowDefinition' (originated from the sponsor)
```
##### Treatment.**ScheduledDateTimeUtc** (Field)
```
the estimated time when the treatment is scheduled
```
* this field is optional, so that '*null*' values are supported
##### Treatment.**ExecutionDateTimeUtc** (Field)
```
the real time, when the treatment was executed
```
* this field is optional, so that '*null*' values are supported
##### Treatment.**ExecutionState** (Field)
```
0=Unscheduled / 1=Sheduled / 2=Executed / 3=AbortDuringExecution / 4=Skipped / 5=Removed
```
##### Treatment.**NotesRegardingOutcome** (Field)
```
additional notes regarding this dedcated execution (supplied by the execution person)
```
* this field is optional, so that '*null*' values are supported
##### Treatment.**ExtendedMetaData** (Field)
```
optional structure of additional metadata regarding this record in JSON-format, which can be used by study execution systems to extend the schema
```
##### Treatment.**ExecutingPerson** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Visit](#**Visit** (parent of this Treatment)) | Parent | [Visit](#Type: Visit) | 0/1 (optional) |

##### **Visit** (parent of this Treatment)
Target Type: [Visit](#Type: Visit)
Addressed by: [VisitGuid](#Treatment.VisitGuid (Field)).
```
self describing ...
```


