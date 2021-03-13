# ORSCF-StudyWorkflowDefinition Schema Specification
author: ORSCF ("Open Research Study Communication Formats")
license: [Apache-2](https://choosealicense.com/licenses/apache-2.0/)
last update: 13.03.2021
add. info: [orscf.org](https://www.orscf.org)
 
 
# Model:

![chart](./chart.png)



## Type: Arm


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyArmName](#Arm.**StudyArmName** (Field)) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#Arm.**StudyWorkflowName** (Field)) **(KEY)** (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#Arm.**StudyWorkflowVersion** (Field)) **(KEY)** (FK) | *string* (20) | YES | no |
| [RootProcedureScheduleId](#Arm.**RootProcedureScheduleId** (Field)) (FK) | *guid* | no | no |
| [BillablePriceOnFailedInclusion](#Arm.**BillablePriceOnFailedInclusion** (Field)) | *decimal* | no | no |
| [BillablePriceOnSuccessfullInclusion](#Arm.**BillablePriceOnSuccessfullInclusion** (Field)) | *decimal* | no | no |
| [BillablePriceOnAbortedParticipation](#Arm.**BillablePriceOnAbortedParticipation** (Field)) | *decimal* | no | no |
| [BillablePriceOnCompletedParticipation](#Arm.**BillablePriceOnCompletedParticipation** (Field)) | *decimal* | no | no |
| [ArmSpecificDocumentationUrl](#Arm.**ArmSpecificDocumentationUrl** (Field)) | *string* | no | no |
| [InclusionCriteria](#Arm.**InclusionCriteria** (Field)) | *string* | no | no |
| [Substudy](#Arm.**Substudy** (Field)) | *string* | no | no |
##### Arm.**StudyArmName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.
##### Arm.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### Arm.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### Arm.**RootProcedureScheduleId** (Field)
```
the ProcedureSchedule which is representing the primary-/entry-workflow (estimated visits) for participants of this arm
```
* this field is optional, so that '*null*' values are supported
* this field is used as foreign key to address the related 'RootProcedureSchedule'
##### Arm.**BillablePriceOnFailedInclusion** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### Arm.**BillablePriceOnSuccessfullInclusion** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### Arm.**BillablePriceOnAbortedParticipation** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### Arm.**BillablePriceOnCompletedParticipation** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### Arm.**ArmSpecificDocumentationUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### Arm.**InclusionCriteria** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### Arm.**Substudy** (Field)
```
defines, that the arm is part of a SubStudy which is addressed by a UniqueName or a path expressen
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ResearchStudy](#**ResearchStudy** (parent of this Arm)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |
| [RootProcedureSchedule](#**RootProcedureSchedule** (lookup from this Arm)) | Lookup | [ProcedureSchedule](#Type: ProcedureSchedule) | 1 (required) |

##### **ResearchStudy** (parent of this Arm)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#Arm.StudyWorkflowName (Field)), [StudyWorkflowVersion](#Arm.StudyWorkflowVersion (Field)).
```
self describing ...
```
##### **RootProcedureSchedule** (lookup from this Arm)
Target Type: [ProcedureSchedule](#Type: ProcedureSchedule)
Addressed by: [RootProcedureScheduleId](#Arm.RootProcedureScheduleId (Field)).
```
the ProcedureSchedule which is representing the primary-/entry-workflow (estimated visits) for participants of this arm
```




## Type: ResearchStudy


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyWorkflowName](#ResearchStudy.**StudyWorkflowName** (Field)) **(KEY)** | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ResearchStudy.**StudyWorkflowVersion** (Field)) **(KEY)** | *string* (20) | YES | no |
| [OfficialLabel](#ResearchStudy.**OfficialLabel** (Field)) | *string* | YES | no |
| [DefinitionOwner](#ResearchStudy.**DefinitionOwner** (Field)) | *string* | YES | no |
| [DocumentationUrl](#ResearchStudy.**DocumentationUrl** (Field)) | *string* | YES | no |
| [LogoImage](#ResearchStudy.**LogoImage** (Field)) | *string* | YES | no |
| [Description](#ResearchStudy.**Description** (Field)) | *string* | YES | no |
| [VersionIdentity](#ResearchStudy.**VersionIdentity** (Field)) | *string* | YES | no |
| [LastChangeUtc](#ResearchStudy.**LastChangeUtc** (Field)) | *datetime* | YES | no |
| [DraftState](#ResearchStudy.**DraftState** (Field)) | *int32* | YES | no |
| [BillingCurrency](#ResearchStudy.**BillingCurrency** (Field)) | *string* | no | no |
| [BillablePriceForGeneralPreparation](#ResearchStudy.**BillablePriceForGeneralPreparation** (Field)) | *decimal* | no | no |
| [StudyDocumentationUrl](#ResearchStudy.**StudyDocumentationUrl** (Field)) | *string* | no | no |
| [CaseReportFormUrl](#ResearchStudy.**CaseReportFormUrl** (Field)) | *string* | no | no |
##### ResearchStudy.**StudyWorkflowName** (Field)
```
the official invariant name of the study as given by the sponsor
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 100 characters.
##### ResearchStudy.**StudyWorkflowVersion** (Field)
```
This value follows the rules of 'Semantic Versioning' (https://semver.org) and needs to be updated exactly and only on transition to DraftState.Released! If the previously DraftState was 'DraftNewFix', then the 3. number must be increased at this time! If the previously DraftState was 'DraftNewMinor', then the 2. number must be increased, and the 3. number must be set to 0 at this time! If the previously DraftState was 'DraftNewMajor', then the 1. number must be increased, and the 2.+3. number must be set to 0 at this time!
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 20 characters.
##### ResearchStudy.**OfficialLabel** (Field)
```
self describing ...
```
##### ResearchStudy.**DefinitionOwner** (Field)
```
self describing ...
```
##### ResearchStudy.**DocumentationUrl** (Field)
```
self describing ...
```
##### ResearchStudy.**LogoImage** (Field)
```
self describing ...
```
##### ResearchStudy.**Description** (Field)
```
self describing ...
```
##### ResearchStudy.**VersionIdentity** (Field)
```
IT MUST NOT be updated on every change during Draft! Format: the Author, which is starting the new Draft (Alphanumeric, in PascalCase without blanks or other Symbols) + the current UTC-Time when setting the value (in ISO8601 format) separated by a Pipe "|" Sample: "MaxMustermann|2020-06-15T13:45:30.0000000Z".
```
##### ResearchStudy.**LastChangeUtc** (Field)
```
self describing ...
```
##### ResearchStudy.**DraftState** (Field)
```
0=Released / 1=DraftNewFix / 2=DraftNewMinor / 3=DraftNewMajor
```
##### ResearchStudy.**BillingCurrency** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### ResearchStudy.**BillablePriceForGeneralPreparation** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### ResearchStudy.**StudyDocumentationUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### ResearchStudy.**CaseReportFormUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Arms](#**Arms** (childs of this ResearchStudy)) | Childs | [Arm](#Type: Arm) | * (multiple) |
| [DataRecordingTasks](#**DataRecordingTasks** (childs of this ResearchStudy)) | Childs | [DataRecordingTask](#Type: DataRecordingTask) | * (multiple) |
| [DrugApplymentTasks](#**DrugApplymentTasks** (childs of this ResearchStudy)) | Childs | [DrugApplymentTask](#Type: DrugApplymentTask) | * (multiple) |
| [ProcedureSchedules](#**ProcedureSchedules** (childs of this ResearchStudy)) | Childs | [ProcedureSchedule](#Type: ProcedureSchedule) | * (multiple) |
| [TreatmentTasks](#**TreatmentTasks** (childs of this ResearchStudy)) | Childs | [TreatmentTask](#Type: TreatmentTask) | * (multiple) |
| [TaskSchedules](#**TaskSchedules** (childs of this ResearchStudy)) | Childs | [TaskSchedule](#Type: TaskSchedule) | * (multiple) |
| [VisitProdecureDefinitions](#**VisitProdecureDefinitions** (childs of this ResearchStudy)) | Childs | [VisitProdecureDefinition](#Type: VisitProdecureDefinition) | * (multiple) |
| [Events](#**Events** (childs of this ResearchStudy)) | Childs | [StudyEvent](#Type: StudyEvent) | * (multiple) |

##### **Arms** (childs of this ResearchStudy)
Target: [Arm](#Type: Arm)
```
self describing ...
```
##### **DataRecordingTasks** (childs of this ResearchStudy)
Target: [DataRecordingTask](#Type: DataRecordingTask)
```
self describing ...
```
##### **DrugApplymentTasks** (childs of this ResearchStudy)
Target: [DrugApplymentTask](#Type: DrugApplymentTask)
```
self describing ...
```
##### **ProcedureSchedules** (childs of this ResearchStudy)
Target: [ProcedureSchedule](#Type: ProcedureSchedule)
```
self describing ...
```
##### **TreatmentTasks** (childs of this ResearchStudy)
Target: [TreatmentTask](#Type: TreatmentTask)
```
self describing ...
```
##### **TaskSchedules** (childs of this ResearchStudy)
Target: [TaskSchedule](#Type: TaskSchedule)
```
self describing ...
```
##### **VisitProdecureDefinitions** (childs of this ResearchStudy)
Target: [VisitProdecureDefinition](#Type: VisitProdecureDefinition)
```
self describing ...
```
##### **Events** (childs of this ResearchStudy)
Target: [StudyEvent](#Type: StudyEvent)
```
self describing ...
```




## Type: ProcedureSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ProcedureScheduleId](#ProcedureSchedule.**ProcedureScheduleId** (Field)) **(KEY)** | *guid* | YES | no |
| [StudyWorkflowName](#ProcedureSchedule.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ProcedureSchedule.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [Title](#ProcedureSchedule.**Title** (Field)) | *string* | YES | no |
| [MaxSkipsBeforeLost](#ProcedureSchedule.**MaxSkipsBeforeLost** (Field)) | *string* | YES | no |
| [MaxSubsequentSkipsBeforeLost](#ProcedureSchedule.**MaxSubsequentSkipsBeforeLost** (Field)) | *string* | YES | no |
| [MaxLostsBeforeLtfuAbort](#ProcedureSchedule.**MaxLostsBeforeLtfuAbort** (Field)) | *string* | YES | no |
| [MaxSubsequentLostsBeforeLtfuAbort](#ProcedureSchedule.**MaxSubsequentLostsBeforeLtfuAbort** (Field)) | *string* | YES | no |
| [EventOnLtfuAbort](#ProcedureSchedule.**EventOnLtfuAbort** (Field)) | *string* | YES | no |
| [EventOnCycleEnded](#ProcedureSchedule.**EventOnCycleEnded** (Field)) | *string* | YES | no |
| [EventOnAllCyclesEnded](#ProcedureSchedule.**EventOnAllCyclesEnded** (Field)) | *string* | YES | no |
| [InducingEvents](#ProcedureSchedule.**InducingEvents** (Field)) | *string* | YES | no |
| [AbortCausingEvents](#ProcedureSchedule.**AbortCausingEvents** (Field)) | *string* | YES | no |
##### ProcedureSchedule.**ProcedureScheduleId** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### ProcedureSchedule.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### ProcedureSchedule.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### ProcedureSchedule.**Title** (Field)
```
self describing ...
```
##### ProcedureSchedule.**MaxSkipsBeforeLost** (Field)
```
self describing ...
```
##### ProcedureSchedule.**MaxSubsequentSkipsBeforeLost** (Field)
```
self describing ...
```
##### ProcedureSchedule.**MaxLostsBeforeLtfuAbort** (Field)
```
self describing ...
```
##### ProcedureSchedule.**MaxSubsequentLostsBeforeLtfuAbort** (Field)
```
self describing ...
```
##### ProcedureSchedule.**EventOnLtfuAbort** (Field)
```
self describing ...
```
##### ProcedureSchedule.**EventOnCycleEnded** (Field)
```
self describing ...
```
##### ProcedureSchedule.**EventOnAllCyclesEnded** (Field)
```
self describing ...
```
##### ProcedureSchedule.**InducingEvents** (Field)
```
self describing ...
```
##### ProcedureSchedule.**AbortCausingEvents** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [EntryArms](#**EntryArms** (refering to this ProcedureSchedule)) | Referers | [Arm](#Type: Arm) | * (multiple) |
| [InducedSubProcedureSchedules](#**InducedSubProcedureSchedules** (childs of this ProcedureSchedule)) | Childs | [InducedSubProcedureSchedule](#Type: InducedSubProcedureSchedule) | * (multiple) |
| [InducingSubProcedureSchedules](#**InducingSubProcedureSchedules** (refering to this ProcedureSchedule)) | Referers | [InducedSubProcedureSchedule](#Type: InducedSubProcedureSchedule) | * (multiple) |
| [InducedProcedures](#**InducedProcedures** (childs of this ProcedureSchedule)) | Childs | [InducedVisitProcedure](#Type: InducedVisitProcedure) | * (multiple) |
| [CycleDefinition](#**CycleDefinition** (child of this ProcedureSchedule)) | Child | [ProcedureCycleDefinition](#Type: ProcedureCycleDefinition) | 0/1 (single) |
| [ResearchStudy](#**ResearchStudy** (parent of this ProcedureSchedule)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |

##### **EntryArms** (refering to this ProcedureSchedule)
Target: [Arm](#Type: Arm)
```
self describing ...
```
##### **InducedSubProcedureSchedules** (childs of this ProcedureSchedule)
Target: [InducedSubProcedureSchedule](#Type: InducedSubProcedureSchedule)
```
self describing ...
```
##### **InducingSubProcedureSchedules** (refering to this ProcedureSchedule)
Target: [InducedSubProcedureSchedule](#Type: InducedSubProcedureSchedule)
```
self describing ...
```
##### **InducedProcedures** (childs of this ProcedureSchedule)
Target: [InducedVisitProcedure](#Type: InducedVisitProcedure)
```
self describing ...
```
##### **CycleDefinition** (child of this ProcedureSchedule)
Target: [ProcedureCycleDefinition](#Type: ProcedureCycleDefinition)
```
self describing ...
```
##### **ResearchStudy** (parent of this ProcedureSchedule)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#ProcedureSchedule.StudyWorkflowName (Field)), [StudyWorkflowVersion](#ProcedureSchedule.StudyWorkflowVersion (Field)).
```
self describing ...
```




## Type: DataRecordingTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [DataRecordingName](#DataRecordingTask.**DataRecordingName** (Field)) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#DataRecordingTask.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#DataRecordingTask.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#DataRecordingTask.**BillablePriceOnCompletedExecution** (Field)) | *decimal* | no | no |
| [ShortDescription](#DataRecordingTask.**ShortDescription** (Field)) | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#DataRecordingTask.**TaskSpecificDocumentationUrl** (Field)) | *string* | no | no |
| [ImportantNotices](#DataRecordingTask.**ImportantNotices** (Field)) | *string* | no | no |
| [DataSchemaUrl](#DataRecordingTask.**DataSchemaUrl** (Field)) | *string* | YES | no |
| [DefaultData](#DataRecordingTask.**DefaultData** (Field)) | *string* | no | no |
##### DataRecordingTask.**DataRecordingName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.
##### DataRecordingTask.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### DataRecordingTask.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### DataRecordingTask.**BillablePriceOnCompletedExecution** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### DataRecordingTask.**ShortDescription** (Field)
```
self describing ...
```
##### DataRecordingTask.**TaskSpecificDocumentationUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### DataRecordingTask.**ImportantNotices** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### DataRecordingTask.**DataSchemaUrl** (Field)
```
schema-url of the data which have to be recorded
```
##### DataRecordingTask.**DefaultData** (Field)
```
RAW data, in the schema as defined at the 'DataSchemaUrl'
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Inducements](#**Inducements** (refering to this DataRecordingTask)) | Referers | [InducedDataRecordingTask](#Type: InducedDataRecordingTask) | * (multiple) |
| [ResearchStudy](#**ResearchStudy** (parent of this DataRecordingTask)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |

##### **Inducements** (refering to this DataRecordingTask)
Target: [InducedDataRecordingTask](#Type: InducedDataRecordingTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this DataRecordingTask)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#DataRecordingTask.StudyWorkflowName (Field)), [StudyWorkflowVersion](#DataRecordingTask.StudyWorkflowVersion (Field)).
```
self describing ...
```




## Type: InducedDataRecordingTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedDataRecordingTask.**Id** (Field)) **(KEY)** | *guid* | YES | no |
| [TaskScheduleId](#InducedDataRecordingTask.**TaskScheduleId** (Field)) (FK) | *guid* | YES | no |
| [InducedDataRecordingName](#InducedDataRecordingTask.**InducedDataRecordingName** (Field)) (FK) | *string* (50) | YES | no |
| [Offset](#InducedDataRecordingTask.**Offset** (Field)) | *int32* | YES | no |
| [OffsetUnit](#InducedDataRecordingTask.**OffsetUnit** (Field)) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedDataRecordingTask.**SchedulingVariabilityBefore** (Field)) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedDataRecordingTask.**SchedulingVariabilityAfter** (Field)) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedDataRecordingTask.**SchedulingVariabilityUnit** (Field)) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedDataRecordingTask.**InducedTaskExecutionTitle** (Field)) | *string* | YES | no |
| [Skipable](#InducedDataRecordingTask.**Skipable** (Field)) | *boolean* | YES | no |
| [EventOnSkip](#InducedDataRecordingTask.**EventOnSkip** (Field)) | *string* | YES | no |
| [EventOnLost](#InducedDataRecordingTask.**EventOnLost** (Field)) | *string* | YES | no |
##### InducedDataRecordingTask.**Id** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### InducedDataRecordingTask.**TaskScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'TaskSchedule'
##### InducedDataRecordingTask.**InducedDataRecordingName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'InducedTask'
* the maximum length of the content within this field is 50 characters.
##### InducedDataRecordingTask.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent TaskSchedule
```
##### InducedDataRecordingTask.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedDataRecordingTask.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```
##### InducedDataRecordingTask.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.
```
##### InducedDataRecordingTask.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedDataRecordingTask.**InducedTaskExecutionTitle** (Field)
```
the title for the induced execution, like 'Measurement X', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: '{vt} - Measurement X') to prevent from duplicate execution titles.
```
##### InducedDataRecordingTask.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```
##### InducedDataRecordingTask.**EventOnSkip** (Field)
```
self describing ...
```
##### InducedDataRecordingTask.**EventOnLost** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [InducedTask](#**InducedTask** (lookup from this InducedDataRecordingTask)) | Lookup | [DataRecordingTask](#Type: DataRecordingTask) | 0/1 (optional) |
| [TaskSchedule](#**TaskSchedule** (parent of this InducedDataRecordingTask)) | Parent | [TaskSchedule](#Type: TaskSchedule) | 0/1 (optional) |

##### **InducedTask** (lookup from this InducedDataRecordingTask)
Target Type: [DataRecordingTask](#Type: DataRecordingTask)
Addressed by: [InducedDataRecordingName](#InducedDataRecordingTask.InducedDataRecordingName (Field)).
```
self describing ...
```
##### **TaskSchedule** (parent of this InducedDataRecordingTask)
Target Type: [TaskSchedule](#Type: TaskSchedule)
Addressed by: [TaskScheduleId](#InducedDataRecordingTask.TaskScheduleId (Field)).
```
self describing ...
```




## Type: DrugApplymentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [DrugApplymentName](#DrugApplymentTask.**DrugApplymentName** (Field)) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#DrugApplymentTask.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#DrugApplymentTask.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#DrugApplymentTask.**BillablePriceOnCompletedExecution** (Field)) | *decimal* | no | no |
| [ShortDescription](#DrugApplymentTask.**ShortDescription** (Field)) | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#DrugApplymentTask.**TaskSpecificDocumentationUrl** (Field)) | *string* | no | no |
| [DrugName](#DrugApplymentTask.**DrugName** (Field)) | *string* | YES | no |
| [DrugDoseMgPerUnitMg](#DrugApplymentTask.**DrugDoseMgPerUnitMg** (Field)) | *decimal* | YES | no |
| [UnitsToApply](#DrugApplymentTask.**UnitsToApply** (Field)) | *decimal* | YES | no |
| [ApplymentRoute](#DrugApplymentTask.**ApplymentRoute** (Field)) | *string* | YES | no |
| [ImportantNotices](#DrugApplymentTask.**ImportantNotices** (Field)) | *string* | no | no |
##### DrugApplymentTask.**DrugApplymentName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.
##### DrugApplymentTask.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### DrugApplymentTask.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### DrugApplymentTask.**BillablePriceOnCompletedExecution** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### DrugApplymentTask.**ShortDescription** (Field)
```
self describing ...
```
##### DrugApplymentTask.**TaskSpecificDocumentationUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### DrugApplymentTask.**DrugName** (Field)
```
self describing ...
```
##### DrugApplymentTask.**DrugDoseMgPerUnitMg** (Field)
```
self describing ...
```
##### DrugApplymentTask.**UnitsToApply** (Field)
```
self describing ...
```
##### DrugApplymentTask.**ApplymentRoute** (Field)
```
self describing ...
```
##### DrugApplymentTask.**ImportantNotices** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Inducements](#**Inducements** (refering to this DrugApplymentTask)) | Referers | [InducedDrugApplymentTask](#Type: InducedDrugApplymentTask) | * (multiple) |
| [ResearchStudy](#**ResearchStudy** (parent of this DrugApplymentTask)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |

##### **Inducements** (refering to this DrugApplymentTask)
Target: [InducedDrugApplymentTask](#Type: InducedDrugApplymentTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this DrugApplymentTask)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#DrugApplymentTask.StudyWorkflowName (Field)), [StudyWorkflowVersion](#DrugApplymentTask.StudyWorkflowVersion (Field)).
```
self describing ...
```




## Type: InducedDrugApplymentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedDrugApplymentTask.**Id** (Field)) **(KEY)** | *guid* | YES | no |
| [TaskScheduleId](#InducedDrugApplymentTask.**TaskScheduleId** (Field)) (FK) | *guid* | YES | no |
| [InducedDrugApplymentName](#InducedDrugApplymentTask.**InducedDrugApplymentName** (Field)) (FK) | *string* (50) | YES | no |
| [Offset](#InducedDrugApplymentTask.**Offset** (Field)) | *int32* | YES | no |
| [OffsetUnit](#InducedDrugApplymentTask.**OffsetUnit** (Field)) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedDrugApplymentTask.**SchedulingVariabilityBefore** (Field)) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedDrugApplymentTask.**SchedulingVariabilityAfter** (Field)) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedDrugApplymentTask.**SchedulingVariabilityUnit** (Field)) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedDrugApplymentTask.**InducedTaskExecutionTitle** (Field)) | *string* | YES | no |
| [Skipable](#InducedDrugApplymentTask.**Skipable** (Field)) | *boolean* | YES | no |
| [EventOnSkip](#InducedDrugApplymentTask.**EventOnSkip** (Field)) | *string* | YES | no |
| [EventOnLost](#InducedDrugApplymentTask.**EventOnLost** (Field)) | *string* | YES | no |
##### InducedDrugApplymentTask.**Id** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### InducedDrugApplymentTask.**TaskScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'TaskSchedule'
##### InducedDrugApplymentTask.**InducedDrugApplymentName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'InducedTask'
* the maximum length of the content within this field is 50 characters.
##### InducedDrugApplymentTask.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent TaskSchedule
```
##### InducedDrugApplymentTask.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedDrugApplymentTask.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```
##### InducedDrugApplymentTask.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.
```
##### InducedDrugApplymentTask.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedDrugApplymentTask.**InducedTaskExecutionTitle** (Field)
```
the title for the induced execution, like 'Measurement X', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: '{vt} - Measurement X') to prevent from duplicate execution titles.
```
##### InducedDrugApplymentTask.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```
##### InducedDrugApplymentTask.**EventOnSkip** (Field)
```
self describing ...
```
##### InducedDrugApplymentTask.**EventOnLost** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [InducedTask](#**InducedTask** (lookup from this InducedDrugApplymentTask)) | Lookup | [DrugApplymentTask](#Type: DrugApplymentTask) | 0/1 (optional) |
| [TaskSchedule](#**TaskSchedule** (parent of this InducedDrugApplymentTask)) | Parent | [TaskSchedule](#Type: TaskSchedule) | 0/1 (optional) |

##### **InducedTask** (lookup from this InducedDrugApplymentTask)
Target Type: [DrugApplymentTask](#Type: DrugApplymentTask)
Addressed by: [InducedDrugApplymentName](#InducedDrugApplymentTask.InducedDrugApplymentName (Field)).
```
self describing ...
```
##### **TaskSchedule** (parent of this InducedDrugApplymentTask)
Target Type: [TaskSchedule](#Type: TaskSchedule)
Addressed by: [TaskScheduleId](#InducedDrugApplymentTask.TaskScheduleId (Field)).
```
self describing ...
```




## Type: TaskSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskScheduleId](#TaskSchedule.**TaskScheduleId** (Field)) **(KEY)** | *guid* | YES | no |
| [StudyWorkflowName](#TaskSchedule.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#TaskSchedule.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [Title](#TaskSchedule.**Title** (Field)) | *string* | YES | no |
| [MaxSkipsBeforeLost](#TaskSchedule.**MaxSkipsBeforeLost** (Field)) | *string* | YES | no |
| [MaxSubsequentSkipsBeforeLost](#TaskSchedule.**MaxSubsequentSkipsBeforeLost** (Field)) | *string* | YES | no |
| [MaxLostsBeforeLtfuAbort](#TaskSchedule.**MaxLostsBeforeLtfuAbort** (Field)) | *string* | YES | no |
| [MaxSubsequentLostsBeforeLtfuAbort](#TaskSchedule.**MaxSubsequentLostsBeforeLtfuAbort** (Field)) | *string* | YES | no |
| [EventOnLtfuAbort](#TaskSchedule.**EventOnLtfuAbort** (Field)) | *string* | YES | no |
| [EventOnCycleEnded](#TaskSchedule.**EventOnCycleEnded** (Field)) | *string* | YES | no |
| [EventOnAllCyclesEnded](#TaskSchedule.**EventOnAllCyclesEnded** (Field)) | *string* | YES | no |
| [InducingEvents](#TaskSchedule.**InducingEvents** (Field)) | *string* | YES | no |
| [AbortCausingEvents](#TaskSchedule.**AbortCausingEvents** (Field)) | *string* | YES | no |
##### TaskSchedule.**TaskScheduleId** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### TaskSchedule.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### TaskSchedule.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### TaskSchedule.**Title** (Field)
```
self describing ...
```
##### TaskSchedule.**MaxSkipsBeforeLost** (Field)
```
self describing ...
```
##### TaskSchedule.**MaxSubsequentSkipsBeforeLost** (Field)
```
self describing ...
```
##### TaskSchedule.**MaxLostsBeforeLtfuAbort** (Field)
```
self describing ...
```
##### TaskSchedule.**MaxSubsequentLostsBeforeLtfuAbort** (Field)
```
self describing ...
```
##### TaskSchedule.**EventOnLtfuAbort** (Field)
```
self describing ...
```
##### TaskSchedule.**EventOnCycleEnded** (Field)
```
self describing ...
```
##### TaskSchedule.**EventOnAllCyclesEnded** (Field)
```
self describing ...
```
##### TaskSchedule.**InducingEvents** (Field)
```
self describing ...
```
##### TaskSchedule.**AbortCausingEvents** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [InducedDataRecordingTasks](#**InducedDataRecordingTasks** (childs of this TaskSchedule)) | Childs | [InducedDataRecordingTask](#Type: InducedDataRecordingTask) | * (multiple) |
| [InducedDrugApplymentTasks](#**InducedDrugApplymentTasks** (childs of this TaskSchedule)) | Childs | [InducedDrugApplymentTask](#Type: InducedDrugApplymentTask) | * (multiple) |
| [InducedSubTaskSchedules](#**InducedSubTaskSchedules** (childs of this TaskSchedule)) | Childs | [InducedSubTaskSchedule](#Type: InducedSubTaskSchedule) | * (multiple) |
| [InducingTaskSchedules](#**InducingTaskSchedules** (refering to this TaskSchedule)) | Referers | [InducedSubTaskSchedule](#Type: InducedSubTaskSchedule) | * (multiple) |
| [InducedTreatmentTasks](#**InducedTreatmentTasks** (childs of this TaskSchedule)) | Childs | [InducedTreatmentTask](#Type: InducedTreatmentTask) | * (multiple) |
| [ResearchStudy](#**ResearchStudy** (parent of this TaskSchedule)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |
| [CycleDefinition](#**CycleDefinition** (child of this TaskSchedule)) | Child | [TaskCycleDefinition](#Type: TaskCycleDefinition) | 0/1 (single) |
| [EntryVisitProdecureDefinitions](#**EntryVisitProdecureDefinitions** (refering to this TaskSchedule)) | Referers | [VisitProdecureDefinition](#Type: VisitProdecureDefinition) | * (multiple) |

##### **InducedDataRecordingTasks** (childs of this TaskSchedule)
Target: [InducedDataRecordingTask](#Type: InducedDataRecordingTask)
```
self describing ...
```
##### **InducedDrugApplymentTasks** (childs of this TaskSchedule)
Target: [InducedDrugApplymentTask](#Type: InducedDrugApplymentTask)
```
self describing ...
```
##### **InducedSubTaskSchedules** (childs of this TaskSchedule)
Target: [InducedSubTaskSchedule](#Type: InducedSubTaskSchedule)
```
self describing ...
```
##### **InducingTaskSchedules** (refering to this TaskSchedule)
Target: [InducedSubTaskSchedule](#Type: InducedSubTaskSchedule)
```
self describing ...
```
##### **InducedTreatmentTasks** (childs of this TaskSchedule)
Target: [InducedTreatmentTask](#Type: InducedTreatmentTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this TaskSchedule)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#TaskSchedule.StudyWorkflowName (Field)), [StudyWorkflowVersion](#TaskSchedule.StudyWorkflowVersion (Field)).
```
self describing ...
```
##### **CycleDefinition** (child of this TaskSchedule)
Target: [TaskCycleDefinition](#Type: TaskCycleDefinition)
```
self describing ...
```
##### **EntryVisitProdecureDefinitions** (refering to this TaskSchedule)
Target: [VisitProdecureDefinition](#Type: VisitProdecureDefinition)
```
self describing ...
```




## Type: InducedSubProcedureSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedSubProcedureSchedule.**Id** (Field)) **(KEY)** | *guid* | YES | no |
| [ParentProcedureScheduleId](#InducedSubProcedureSchedule.**ParentProcedureScheduleId** (Field)) (FK) | *guid* | YES | no |
| [InducedProcedureScheduleId](#InducedSubProcedureSchedule.**InducedProcedureScheduleId** (Field)) (FK) | *guid* | YES | no |
| [Offset](#InducedSubProcedureSchedule.**Offset** (Field)) | *int32* | YES | no |
| [OffsetUnit](#InducedSubProcedureSchedule.**OffsetUnit** (Field)) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedSubProcedureSchedule.**SchedulingVariabilityBefore** (Field)) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedSubProcedureSchedule.**SchedulingVariabilityAfter** (Field)) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedSubProcedureSchedule.**SchedulingVariabilityUnit** (Field)) | *string* | YES | no |
| [SharedSkipCounters](#InducedSubProcedureSchedule.**SharedSkipCounters** (Field)) | *boolean* | YES | no |
| [SharedLostCounters](#InducedSubProcedureSchedule.**SharedLostCounters** (Field)) | *boolean* | YES | no |
##### InducedSubProcedureSchedule.**Id** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### InducedSubProcedureSchedule.**ParentProcedureScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ParentProcedureSchedule'
##### InducedSubProcedureSchedule.**InducedProcedureScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'InducedProcedureSchedule'
##### InducedSubProcedureSchedule.**Offset** (Field)
```
estimated scheduling date relative to the scheduling date of the parent ProcedureSchedule
```
##### InducedSubProcedureSchedule.**OffsetUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```
##### InducedSubProcedureSchedule.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the EARLIEST possible date.
```
##### InducedSubProcedureSchedule.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the LATEST possible date.
```
##### InducedSubProcedureSchedule.**SchedulingVariabilityUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```
##### InducedSubProcedureSchedule.**SharedSkipCounters** (Field)
```
self describing ...
```
##### InducedSubProcedureSchedule.**SharedLostCounters** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ParentProcedureSchedule](#**ParentProcedureSchedule** (parent of this InducedSubProcedureSchedule)) | Parent | [ProcedureSchedule](#Type: ProcedureSchedule) | 0/1 (optional) |
| [InducedProcedureSchedule](#**InducedProcedureSchedule** (lookup from this InducedSubProcedureSchedule)) | Lookup | [ProcedureSchedule](#Type: ProcedureSchedule) | 0/1 (optional) |

##### **ParentProcedureSchedule** (parent of this InducedSubProcedureSchedule)
Target Type: [ProcedureSchedule](#Type: ProcedureSchedule)
Addressed by: [ParentProcedureScheduleId](#InducedSubProcedureSchedule.ParentProcedureScheduleId (Field)).
```
self describing ...
```
##### **InducedProcedureSchedule** (lookup from this InducedSubProcedureSchedule)
Target Type: [ProcedureSchedule](#Type: ProcedureSchedule)
Addressed by: [InducedProcedureScheduleId](#InducedSubProcedureSchedule.InducedProcedureScheduleId (Field)).
```
self describing ...
```




## Type: InducedSubTaskSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedSubTaskSchedule.**Id** (Field)) **(KEY)** | *guid* | YES | no |
| [ParentTaskScheduleId](#InducedSubTaskSchedule.**ParentTaskScheduleId** (Field)) (FK) | *guid* | YES | no |
| [InducedTaskScheduleId](#InducedSubTaskSchedule.**InducedTaskScheduleId** (Field)) (FK) | *guid* | YES | no |
| [Offset](#InducedSubTaskSchedule.**Offset** (Field)) | *int32* | YES | no |
| [OffsetUnit](#InducedSubTaskSchedule.**OffsetUnit** (Field)) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedSubTaskSchedule.**SchedulingVariabilityBefore** (Field)) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedSubTaskSchedule.**SchedulingVariabilityAfter** (Field)) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedSubTaskSchedule.**SchedulingVariabilityUnit** (Field)) | *string* | YES | no |
| [SharedSkipCounters](#InducedSubTaskSchedule.**SharedSkipCounters** (Field)) | *boolean* | YES | no |
| [SharedLostCounters](#InducedSubTaskSchedule.**SharedLostCounters** (Field)) | *boolean* | YES | no |
##### InducedSubTaskSchedule.**Id** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### InducedSubTaskSchedule.**ParentTaskScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ParentTaskSchedule'
##### InducedSubTaskSchedule.**InducedTaskScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'InducedTaskSchedule'
##### InducedSubTaskSchedule.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent ProcedureSchedule
```
##### InducedSubTaskSchedule.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedSubTaskSchedule.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```
##### InducedSubTaskSchedule.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.

```
##### InducedSubTaskSchedule.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedSubTaskSchedule.**SharedSkipCounters** (Field)
```
self describing ...
```
##### InducedSubTaskSchedule.**SharedLostCounters** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ParentTaskSchedule](#**ParentTaskSchedule** (parent of this InducedSubTaskSchedule)) | Parent | [TaskSchedule](#Type: TaskSchedule) | 0/1 (optional) |
| [InducedTaskSchedule](#**InducedTaskSchedule** (lookup from this InducedSubTaskSchedule)) | Lookup | [TaskSchedule](#Type: TaskSchedule) | 0/1 (optional) |

##### **ParentTaskSchedule** (parent of this InducedSubTaskSchedule)
Target Type: [TaskSchedule](#Type: TaskSchedule)
Addressed by: [ParentTaskScheduleId](#InducedSubTaskSchedule.ParentTaskScheduleId (Field)).
```
self describing ...
```
##### **InducedTaskSchedule** (lookup from this InducedSubTaskSchedule)
Target Type: [TaskSchedule](#Type: TaskSchedule)
Addressed by: [InducedTaskScheduleId](#InducedSubTaskSchedule.InducedTaskScheduleId (Field)).
```
self describing ...
```




## Type: InducedTreatmentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedTreatmentTask.**Id** (Field)) **(KEY)** | *guid* | YES | no |
| [TaskScheduleId](#InducedTreatmentTask.**TaskScheduleId** (Field)) (FK) | *guid* | YES | no |
| [InducedTreatmentName](#InducedTreatmentTask.**InducedTreatmentName** (Field)) (FK) | *string* (50) | YES | no |
| [Offset](#InducedTreatmentTask.**Offset** (Field)) | *int32* | YES | no |
| [OffsetUnit](#InducedTreatmentTask.**OffsetUnit** (Field)) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedTreatmentTask.**SchedulingVariabilityBefore** (Field)) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedTreatmentTask.**SchedulingVariabilityAfter** (Field)) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedTreatmentTask.**SchedulingVariabilityUnit** (Field)) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedTreatmentTask.**InducedTaskExecutionTitle** (Field)) | *string* | YES | no |
| [Skipable](#InducedTreatmentTask.**Skipable** (Field)) | *boolean* | YES | no |
| [EventOnSkip](#InducedTreatmentTask.**EventOnSkip** (Field)) | *string* | YES | no |
| [EventOnLost](#InducedTreatmentTask.**EventOnLost** (Field)) | *string* | YES | no |
##### InducedTreatmentTask.**Id** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### InducedTreatmentTask.**TaskScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'TaskSchedule'
##### InducedTreatmentTask.**InducedTreatmentName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'InducedTask'
* the maximum length of the content within this field is 50 characters.
##### InducedTreatmentTask.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent TaskSchedule
```
##### InducedTreatmentTask.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedTreatmentTask.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```
##### InducedTreatmentTask.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.
```
##### InducedTreatmentTask.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### InducedTreatmentTask.**InducedTaskExecutionTitle** (Field)
```
the title for the induced execution, like 'Measurement X', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: '{vt} - Measurement X') to prevent from duplicate execution titles.
```
##### InducedTreatmentTask.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```
##### InducedTreatmentTask.**EventOnSkip** (Field)
```
self describing ...
```
##### InducedTreatmentTask.**EventOnLost** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [TaskSchedule](#**TaskSchedule** (parent of this InducedTreatmentTask)) | Parent | [TaskSchedule](#Type: TaskSchedule) | 0/1 (optional) |
| [InducedTask](#**InducedTask** (lookup from this InducedTreatmentTask)) | Lookup | [TreatmentTask](#Type: TreatmentTask) | 0/1 (optional) |

##### **TaskSchedule** (parent of this InducedTreatmentTask)
Target Type: [TaskSchedule](#Type: TaskSchedule)
Addressed by: [TaskScheduleId](#InducedTreatmentTask.TaskScheduleId (Field)).
```
self describing ...
```
##### **InducedTask** (lookup from this InducedTreatmentTask)
Target Type: [TreatmentTask](#Type: TreatmentTask)
Addressed by: [InducedTreatmentName](#InducedTreatmentTask.InducedTreatmentName (Field)).
```
self describing ...
```




## Type: TreatmentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TreatmentName](#TreatmentTask.**TreatmentName** (Field)) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#TreatmentTask.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#TreatmentTask.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#TreatmentTask.**BillablePriceOnCompletedExecution** (Field)) | *decimal* | no | no |
| [ShortDescription](#TreatmentTask.**ShortDescription** (Field)) | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#TreatmentTask.**TaskSpecificDocumentationUrl** (Field)) | *string* | no | no |
| [TreatmentDescription](#TreatmentTask.**TreatmentDescription** (Field)) | *string* | YES | no |
| [ImportantNotices](#TreatmentTask.**ImportantNotices** (Field)) | *string* | no | no |
##### TreatmentTask.**TreatmentName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.
##### TreatmentTask.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### TreatmentTask.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### TreatmentTask.**BillablePriceOnCompletedExecution** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### TreatmentTask.**ShortDescription** (Field)
```
self describing ...
```
##### TreatmentTask.**TaskSpecificDocumentationUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### TreatmentTask.**TreatmentDescription** (Field)
```
self describing ...
```
##### TreatmentTask.**ImportantNotices** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Inducements](#**Inducements** (refering to this TreatmentTask)) | Referers | [InducedTreatmentTask](#Type: InducedTreatmentTask) | * (multiple) |
| [ResearchStudy](#**ResearchStudy** (parent of this TreatmentTask)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |

##### **Inducements** (refering to this TreatmentTask)
Target: [InducedTreatmentTask](#Type: InducedTreatmentTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this TreatmentTask)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#TreatmentTask.StudyWorkflowName (Field)), [StudyWorkflowVersion](#TreatmentTask.StudyWorkflowVersion (Field)).
```
self describing ...
```




## Type: InducedVisitProcedure


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedVisitProcedure.**Id** (Field)) **(KEY)** | *guid* | YES | no |
| [ProcedureScheduleId](#InducedVisitProcedure.**ProcedureScheduleId** (Field)) (FK) | *guid* | YES | no |
| [Offset](#InducedVisitProcedure.**Offset** (Field)) | *int32* | YES | no |
| [OffsetUnit](#InducedVisitProcedure.**OffsetUnit** (Field)) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedVisitProcedure.**SchedulingVariabilityBefore** (Field)) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedVisitProcedure.**SchedulingVariabilityAfter** (Field)) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedVisitProcedure.**SchedulingVariabilityUnit** (Field)) | *string* | YES | no |
| [InducedVisitProdecureName](#InducedVisitProcedure.**InducedVisitProdecureName** (Field)) (FK) | *string* (50) | YES | no |
| [InducedVisitExecutionTitle](#InducedVisitProcedure.**InducedVisitExecutionTitle** (Field)) | *string* | YES | no |
| [Skipable](#InducedVisitProcedure.**Skipable** (Field)) | *boolean* | YES | no |
| [EventOnSkip](#InducedVisitProcedure.**EventOnSkip** (Field)) | *string* | YES | no |
| [EventOnLost](#InducedVisitProcedure.**EventOnLost** (Field)) | *string* | YES | no |
##### InducedVisitProcedure.**Id** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
##### InducedVisitProcedure.**ProcedureScheduleId** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ProcedureSchedule'
##### InducedVisitProcedure.**Offset** (Field)
```
estimated scheduling date relative to the scheduling date of the parent ProcedureSchedule
```
##### InducedVisitProcedure.**OffsetUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```
##### InducedVisitProcedure.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the EARLIEST possible date.
```
##### InducedVisitProcedure.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the LATEST possible date.
```
##### InducedVisitProcedure.**SchedulingVariabilityUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```
##### InducedVisitProcedure.**InducedVisitProdecureName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'InducedVisitProdecure'
* the maximum length of the content within this field is 50 characters.
##### InducedVisitProcedure.**InducedVisitExecutionTitle** (Field)
```
the title for the induced execution, like 'V0', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: 'C{cs}-V0') to prevent from duplicate execution titles.
```
##### InducedVisitProcedure.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```
##### InducedVisitProcedure.**EventOnSkip** (Field)
```
self describing ...
```
##### InducedVisitProcedure.**EventOnLost** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ProcedureSchedule](#**ProcedureSchedule** (parent of this InducedVisitProcedure)) | Parent | [ProcedureSchedule](#Type: ProcedureSchedule) | 0/1 (optional) |
| [InducedVisitProdecure](#**InducedVisitProdecure** (lookup from this InducedVisitProcedure)) | Lookup | [VisitProdecureDefinition](#Type: VisitProdecureDefinition) | 0/1 (optional) |

##### **ProcedureSchedule** (parent of this InducedVisitProcedure)
Target Type: [ProcedureSchedule](#Type: ProcedureSchedule)
Addressed by: [ProcedureScheduleId](#InducedVisitProcedure.ProcedureScheduleId (Field)).
```
self describing ...
```
##### **InducedVisitProdecure** (lookup from this InducedVisitProcedure)
Target Type: [VisitProdecureDefinition](#Type: VisitProdecureDefinition)
Addressed by: [InducedVisitProdecureName](#InducedVisitProcedure.InducedVisitProdecureName (Field)).
```
self describing ...
```




## Type: VisitProdecureDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [VisitProdecureName](#VisitProdecureDefinition.**VisitProdecureName** (Field)) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#VisitProdecureDefinition.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#VisitProdecureDefinition.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [RootTaskScheduleId](#VisitProdecureDefinition.**RootTaskScheduleId** (Field)) (FK) | *guid* | no | no |
| [BillablePriceOnAbortedExecution](#VisitProdecureDefinition.**BillablePriceOnAbortedExecution** (Field)) | *decimal* | no | no |
| [BillablePriceOnCompletedExecution](#VisitProdecureDefinition.**BillablePriceOnCompletedExecution** (Field)) | *decimal* | no | no |
| [VisitSpecificDocumentationUrl](#VisitProdecureDefinition.**VisitSpecificDocumentationUrl** (Field)) | *string* | no | no |
##### VisitProdecureDefinition.**VisitProdecureName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.
##### VisitProdecureDefinition.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### VisitProdecureDefinition.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### VisitProdecureDefinition.**RootTaskScheduleId** (Field)
```
the TaskSchedule which is representing the primary-/entry-workflow (estimated tasks) when executing this visit
```
* this field is optional, so that '*null*' values are supported
* this field is used as foreign key to address the related 'RootTaskSchedule'
##### VisitProdecureDefinition.**BillablePriceOnAbortedExecution** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### VisitProdecureDefinition.**BillablePriceOnCompletedExecution** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### VisitProdecureDefinition.**VisitSpecificDocumentationUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [Inducements](#**Inducements** (refering to this VisitProdecureDefinition)) | Referers | [InducedVisitProcedure](#Type: InducedVisitProcedure) | * (multiple) |
| [ResearchStudy](#**ResearchStudy** (parent of this VisitProdecureDefinition)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |
| [RootTaskSchedule](#**RootTaskSchedule** (lookup from this VisitProdecureDefinition)) | Lookup | [TaskSchedule](#Type: TaskSchedule) | 1 (required) |

##### **Inducements** (refering to this VisitProdecureDefinition)
Target: [InducedVisitProcedure](#Type: InducedVisitProcedure)
```
self describing ...
```
##### **ResearchStudy** (parent of this VisitProdecureDefinition)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#VisitProdecureDefinition.StudyWorkflowName (Field)), [StudyWorkflowVersion](#VisitProdecureDefinition.StudyWorkflowVersion (Field)).
```
self describing ...
```
##### **RootTaskSchedule** (lookup from this VisitProdecureDefinition)
Target Type: [TaskSchedule](#Type: TaskSchedule)
Addressed by: [RootTaskScheduleId](#VisitProdecureDefinition.RootTaskScheduleId (Field)).
```
the TaskSchedule which is representing the primary-/entry-workflow (estimated tasks) when executing this visit
```




## Type: ProcedureCycleDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ProcedureScheduleId](#ProcedureCycleDefinition.**ProcedureScheduleId** (Field)) **(KEY)** (FK) | *guid* | YES | no |
| [ReschedulingBase](#ProcedureCycleDefinition.**ReschedulingBase** (Field)) | *int32* | YES | no |
| [ReschedulingOffset](#ProcedureCycleDefinition.**ReschedulingOffset** (Field)) | *string* | YES | no |
| [ReschedulingOffsetUnit](#ProcedureCycleDefinition.**ReschedulingOffsetUnit** (Field)) | *string* | YES | no |
| [CycleLimit](#ProcedureCycleDefinition.**CycleLimit** (Field)) | *int32* | no | no |
| [SharedSkipCounters](#ProcedureCycleDefinition.**SharedSkipCounters** (Field)) | *boolean* | YES | no |
| [SharedLostCounters](#ProcedureCycleDefinition.**SharedLostCounters** (Field)) | *boolean* | YES | no |
##### ProcedureCycleDefinition.**ProcedureScheduleId** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'ProcedureSchedule'
##### ProcedureCycleDefinition.**ReschedulingBase** (Field)
```
1=EstimatedParent (related to the inducing date of the parent ProcedureSchedule) / 2=LastEstimatedInducement (related to the ESTIMATED scheduling date of the last inducement within the parent ProcedureSchedule) / 3=LastExecutedInducement  (related to the REAL EXECUTION date of the last inducement within the parent ProcedureSchedule) 
```
##### ProcedureCycleDefinition.**ReschedulingOffset** (Field)
```
estimated scheduling date relative to the ReschedulingBase
```
##### ProcedureCycleDefinition.**ReschedulingOffsetUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```
##### ProcedureCycleDefinition.**CycleLimit** (Field)
```
number of cycles (of null for a infinite number of cycles)
```
* this field is optional, so that '*null*' values are supported
##### ProcedureCycleDefinition.**SharedSkipCounters** (Field)
```
self describing ...
```
##### ProcedureCycleDefinition.**SharedLostCounters** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ProcedureSchedule](#**ProcedureSchedule** (parent of this ProcedureCycleDefinition)) | Parent | [ProcedureSchedule](#Type: ProcedureSchedule) | 0/1 (optional) |

##### **ProcedureSchedule** (parent of this ProcedureCycleDefinition)
Target Type: [ProcedureSchedule](#Type: ProcedureSchedule)
Addressed by: [ProcedureScheduleId](#ProcedureCycleDefinition.ProcedureScheduleId (Field)).
```
self describing ...
```




## Type: StudyEvent


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyEventName](#StudyEvent.**StudyEventName** (Field)) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#StudyEvent.**StudyWorkflowName** (Field)) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#StudyEvent.**StudyWorkflowVersion** (Field)) (FK) | *string* (20) | YES | no |
| [MaxOccourrencesBeforeExclusion](#StudyEvent.**MaxOccourrencesBeforeExclusion** (Field)) | *int32* | no | no |
| [AllowManualTrigger](#StudyEvent.**AllowManualTrigger** (Field)) | *boolean* | YES | no |
| [Description](#StudyEvent.**Description** (Field)) | *string* | YES | no |
| [EvenSpecificDocumentationUrl](#StudyEvent.**EvenSpecificDocumentationUrl** (Field)) | *string* | no | no |
##### StudyEvent.**StudyEventName** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.
##### StudyEvent.**StudyWorkflowName** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.
##### StudyEvent.**StudyWorkflowVersion** (Field)
```
self describing ...
```
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.
##### StudyEvent.**MaxOccourrencesBeforeExclusion** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported
##### StudyEvent.**AllowManualTrigger** (Field)
```
self describing ...
```
##### StudyEvent.**Description** (Field)
```
self describing ...
```
##### StudyEvent.**EvenSpecificDocumentationUrl** (Field)
```
self describing ...
```
* this field is optional, so that '*null*' values are supported


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [ResearchStudy](#**ResearchStudy** (parent of this StudyEvent)) | Parent | [ResearchStudy](#Type: ResearchStudy) | 0/1 (optional) |

##### **ResearchStudy** (parent of this StudyEvent)
Target Type: [ResearchStudy](#Type: ResearchStudy)
Addressed by: [StudyWorkflowName](#StudyEvent.StudyWorkflowName (Field)), [StudyWorkflowVersion](#StudyEvent.StudyWorkflowVersion (Field)).
```
self describing ...
```




## Type: TaskCycleDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskScheduleId](#TaskCycleDefinition.**TaskScheduleId** (Field)) **(KEY)** (FK) | *guid* | YES | no |
| [ReschedulingBase](#TaskCycleDefinition.**ReschedulingBase** (Field)) | *string* | YES | no |
| [ReschedulingOffset](#TaskCycleDefinition.**ReschedulingOffset** (Field)) | *string* | YES | no |
| [ReschedulingOffsetUnit](#TaskCycleDefinition.**ReschedulingOffsetUnit** (Field)) | *string* | YES | no |
| [CycleLimit](#TaskCycleDefinition.**CycleLimit** (Field)) | *int32* | no | no |
| [SharedSkipCounters](#TaskCycleDefinition.**SharedSkipCounters** (Field)) | *boolean* | YES | no |
| [SharedLostCounters](#TaskCycleDefinition.**SharedLostCounters** (Field)) | *boolean* | YES | no |
##### TaskCycleDefinition.**TaskScheduleId** (Field)
```
self describing ...
```
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'TaskSchedule'
##### TaskCycleDefinition.**ReschedulingBase** (Field)
```
1=EstimatedParent (related to the inducing time of the parent TaskSchedule) / 2=LastEstimatedInducement (related to the ESTIMATED scheduling time of the last inducement within the parent TaskSchedule) / 3=LastExecutedInducement  (related to the REAL EXECUTION time of the last inducement within the parent TaskSchedule)
```
##### TaskCycleDefinition.**ReschedulingOffset** (Field)
```
estimated scheduling time relative to the ReschedulingBase
```
##### TaskCycleDefinition.**ReschedulingOffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```
##### TaskCycleDefinition.**CycleLimit** (Field)
```
number of cycles (of null for a infinite number of cycles)
```
* this field is optional, so that '*null*' values are supported
##### TaskCycleDefinition.**SharedSkipCounters** (Field)
```
self describing ...
```
##### TaskCycleDefinition.**SharedLostCounters** (Field)
```
self describing ...
```


### Relations

| Name | Role | Target-Type | Target-Multiplicity |
| ---- | ---- | ----------- | ------------------- |
| [TaskSchedule](#**TaskSchedule** (parent of this TaskCycleDefinition)) | Parent | [TaskSchedule](#Type: TaskSchedule) | 0/1 (optional) |

##### **TaskSchedule** (parent of this TaskCycleDefinition)
Target Type: [TaskSchedule](#Type: TaskSchedule)
Addressed by: [TaskScheduleId](#TaskCycleDefinition.TaskScheduleId (Field)).
```
self describing ...
```


