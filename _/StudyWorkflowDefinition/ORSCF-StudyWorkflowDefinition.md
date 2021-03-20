# ORSCF-StudyWorkflowDefinition Schema Specification

|          | Info                                    |
|----------|-----------------------------------------|
|author:   |[ORSCF](https://www.orscf.org) ("Open Research Study Communication Formats") / T.Korn|
|license:  |[Apache-2](https://choosealicense.com/licenses/apache-2.0/)|
|version:  |1.3.0|
|timestamp:|2021-03-20 12:23|

### Contents

  > .  [ResearchStudy](#ResearchStudy)
  >        \  [Arm](#Arm)
  >        \  [DataRecordingTask](#DataRecordingTask)
  >        \  [DrugApplymentTask](#DrugApplymentTask)
  >        \  [ProcedureSchedule](#ProcedureSchedule)
  >               \  [InducedSubProcedureSchedule](#InducedSubProcedureSchedule)
  >               \  [InducedVisitProcedure](#InducedVisitProcedure)
  >               \  [ProcedureCycleDefinition](#ProcedureCycleDefinition)
  >        \  [StudyEvent](#StudyEvent)
  >        \  [TaskSchedule](#TaskSchedule)
  >               \  [InducedDataRecordingTask](#InducedDataRecordingTask)
  >               \  [InducedDrugApplymentTask](#InducedDrugApplymentTask)
  >               \  [InducedSubTaskSchedule](#InducedSubTaskSchedule)
  >               \  [InducedTreatmentTask](#InducedTreatmentTask)
  >               \  [TaskCycleDefinition](#TaskCycleDefinition)
  >        \  [TreatmentTask](#TreatmentTask)
  >        \  [VisitProdecureDefinition](#VisitProdecureDefinition)

# Model:

![chart](./chart.png)



## ResearchStudy


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyWorkflowName](#ResearchStudyStudyWorkflowName-Field) **(KEY)** | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ResearchStudyStudyWorkflowVersion-Field) **(KEY)** | *string* (20) | YES | no |
| [OfficialLabel](#ResearchStudyOfficialLabel-Field) | *string* | YES | no |
| [DefinitionOwner](#ResearchStudyDefinitionOwner-Field) | *string* | YES | no |
| [DocumentationUrl](#ResearchStudyDocumentationUrl-Field) | *string* | YES | no |
| [LogoImage](#ResearchStudyLogoImage-Field) | *string* | YES | no |
| [Description](#ResearchStudyDescription-Field) | *string* | YES | no |
| [VersionIdentity](#ResearchStudyVersionIdentity-Field) | *string* | YES | no |
| [LastChangeUtc](#ResearchStudyLastChangeUtc-Field) | *datetime* | YES | no |
| [DraftState](#ResearchStudyDraftState-Field) | *int32* | YES | no |
| [BillingCurrency](#ResearchStudyBillingCurrency-Field) | *string* | no | no |
| [BillablePriceForGeneralPreparation](#ResearchStudyBillablePriceForGeneralPreparation-Field) | *decimal* | no | no |
| [StudyDocumentationUrl](#ResearchStudyStudyDocumentationUrl-Field) | *string* | no | no |
| [CaseReportFormUrl](#ResearchStudyCaseReportFormUrl-Field) | *string* | no | no |
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
| [Arms](#Arms-childs-of-this-ResearchStudy) | Childs | [Arm](#Arm) | * (multiple) |
| [DataRecordingTasks](#DataRecordingTasks-childs-of-this-ResearchStudy) | Childs | [DataRecordingTask](#DataRecordingTask) | * (multiple) |
| [DrugApplymentTasks](#DrugApplymentTasks-childs-of-this-ResearchStudy) | Childs | [DrugApplymentTask](#DrugApplymentTask) | * (multiple) |
| [ProcedureSchedules](#ProcedureSchedules-childs-of-this-ResearchStudy) | Childs | [ProcedureSchedule](#ProcedureSchedule) | * (multiple) |
| [TreatmentTasks](#TreatmentTasks-childs-of-this-ResearchStudy) | Childs | [TreatmentTask](#TreatmentTask) | * (multiple) |
| [TaskSchedules](#TaskSchedules-childs-of-this-ResearchStudy) | Childs | [TaskSchedule](#TaskSchedule) | * (multiple) |
| [VisitProdecureDefinitions](#VisitProdecureDefinitions-childs-of-this-ResearchStudy) | Childs | [VisitProdecureDefinition](#VisitProdecureDefinition) | * (multiple) |
| [Events](#Events-childs-of-this-ResearchStudy) | Childs | [StudyEvent](#StudyEvent) | * (multiple) |

##### **Arms** (childs of this ResearchStudy)
Target: [Arm](#Arm)
```
self describing ...
```
##### **DataRecordingTasks** (childs of this ResearchStudy)
Target: [DataRecordingTask](#DataRecordingTask)
```
self describing ...
```
##### **DrugApplymentTasks** (childs of this ResearchStudy)
Target: [DrugApplymentTask](#DrugApplymentTask)
```
self describing ...
```
##### **ProcedureSchedules** (childs of this ResearchStudy)
Target: [ProcedureSchedule](#ProcedureSchedule)
```
self describing ...
```
##### **TreatmentTasks** (childs of this ResearchStudy)
Target: [TreatmentTask](#TreatmentTask)
```
self describing ...
```
##### **TaskSchedules** (childs of this ResearchStudy)
Target: [TaskSchedule](#TaskSchedule)
```
self describing ...
```
##### **VisitProdecureDefinitions** (childs of this ResearchStudy)
Target: [VisitProdecureDefinition](#VisitProdecureDefinition)
```
self describing ...
```
##### **Events** (childs of this ResearchStudy)
Target: [StudyEvent](#StudyEvent)
```
self describing ...
```




## Arm


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyArmName](#ArmStudyArmName-Field) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#ArmStudyWorkflowName-Field) **(KEY)** (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ArmStudyWorkflowVersion-Field) **(KEY)** (FK) | *string* (20) | YES | no |
| [RootProcedureScheduleId](#ArmRootProcedureScheduleId-Field) (FK) | *guid* | no | no |
| [BillablePriceOnFailedInclusion](#ArmBillablePriceOnFailedInclusion-Field) | *decimal* | no | no |
| [BillablePriceOnSuccessfullInclusion](#ArmBillablePriceOnSuccessfullInclusion-Field) | *decimal* | no | no |
| [BillablePriceOnAbortedParticipation](#ArmBillablePriceOnAbortedParticipation-Field) | *decimal* | no | no |
| [BillablePriceOnCompletedParticipation](#ArmBillablePriceOnCompletedParticipation-Field) | *decimal* | no | no |
| [ArmSpecificDocumentationUrl](#ArmArmSpecificDocumentationUrl-Field) | *string* | no | no |
| [InclusionCriteria](#ArmInclusionCriteria-Field) | *string* | no | no |
| [Substudy](#ArmSubstudy-Field) | *string* | no | no |
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
| [ResearchStudy](#ResearchStudy-parent-of-this-Arm) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |
| [RootProcedureSchedule](#RootProcedureSchedule-lookup-from-this-Arm) | Lookup | [ProcedureSchedule](#ProcedureSchedule) | 1 (required) |

##### **ResearchStudy** (parent of this Arm)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#ArmStudyWorkflowName-Field), [StudyWorkflowVersion](#ArmStudyWorkflowVersion-Field).
```
self describing ...
```
##### **RootProcedureSchedule** (lookup from this Arm)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [RootProcedureScheduleId](#ArmRootProcedureScheduleId-Field).
```
the ProcedureSchedule which is representing the primary-/entry-workflow (estimated visits) for participants of this arm
```




## DataRecordingTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [DataRecordingName](#DataRecordingTaskDataRecordingName-Field) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#DataRecordingTaskStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#DataRecordingTaskStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#DataRecordingTaskBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| [ShortDescription](#DataRecordingTaskShortDescription-Field) | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#DataRecordingTaskTaskSpecificDocumentationUrl-Field) | *string* | no | no |
| [ImportantNotices](#DataRecordingTaskImportantNotices-Field) | *string* | no | no |
| [DataSchemaUrl](#DataRecordingTaskDataSchemaUrl-Field) | *string* | YES | no |
| [DefaultData](#DataRecordingTaskDefaultData-Field) | *string* | no | no |
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
| [Inducements](#Inducements-refering-to-this-DataRecordingTask) | Referers | [InducedDataRecordingTask](#InducedDataRecordingTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-DataRecordingTask) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |

##### **Inducements** (refering to this DataRecordingTask)
Target: [InducedDataRecordingTask](#InducedDataRecordingTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this DataRecordingTask)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#DataRecordingTaskStudyWorkflowName-Field), [StudyWorkflowVersion](#DataRecordingTaskStudyWorkflowVersion-Field).
```
self describing ...
```




## DrugApplymentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [DrugApplymentName](#DrugApplymentTaskDrugApplymentName-Field) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#DrugApplymentTaskStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#DrugApplymentTaskStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#DrugApplymentTaskBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| [ShortDescription](#DrugApplymentTaskShortDescription-Field) | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#DrugApplymentTaskTaskSpecificDocumentationUrl-Field) | *string* | no | no |
| [DrugName](#DrugApplymentTaskDrugName-Field) | *string* | YES | no |
| [DrugDoseMgPerUnitMg](#DrugApplymentTaskDrugDoseMgPerUnitMg-Field) | *decimal* | YES | no |
| [UnitsToApply](#DrugApplymentTaskUnitsToApply-Field) | *decimal* | YES | no |
| [ApplymentRoute](#DrugApplymentTaskApplymentRoute-Field) | *string* | YES | no |
| [ImportantNotices](#DrugApplymentTaskImportantNotices-Field) | *string* | no | no |
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
| [Inducements](#Inducements-refering-to-this-DrugApplymentTask) | Referers | [InducedDrugApplymentTask](#InducedDrugApplymentTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-DrugApplymentTask) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |

##### **Inducements** (refering to this DrugApplymentTask)
Target: [InducedDrugApplymentTask](#InducedDrugApplymentTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this DrugApplymentTask)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#DrugApplymentTaskStudyWorkflowName-Field), [StudyWorkflowVersion](#DrugApplymentTaskStudyWorkflowVersion-Field).
```
self describing ...
```




## ProcedureSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ProcedureScheduleId](#ProcedureScheduleProcedureScheduleId-Field) **(KEY)** | *guid* | YES | no |
| [StudyWorkflowName](#ProcedureScheduleStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ProcedureScheduleStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [Title](#ProcedureScheduleTitle-Field) | *string* | YES | no |
| [MaxSkipsBeforeLost](#ProcedureScheduleMaxSkipsBeforeLost-Field) | *string* | YES | no |
| [MaxSubsequentSkipsBeforeLost](#ProcedureScheduleMaxSubsequentSkipsBeforeLost-Field) | *string* | YES | no |
| [MaxLostsBeforeLtfuAbort](#ProcedureScheduleMaxLostsBeforeLtfuAbort-Field) | *string* | YES | no |
| [MaxSubsequentLostsBeforeLtfuAbort](#ProcedureScheduleMaxSubsequentLostsBeforeLtfuAbort-Field) | *string* | YES | no |
| [EventOnLtfuAbort](#ProcedureScheduleEventOnLtfuAbort-Field) | *string* | YES | no |
| [EventOnCycleEnded](#ProcedureScheduleEventOnCycleEnded-Field) | *string* | YES | no |
| [EventOnAllCyclesEnded](#ProcedureScheduleEventOnAllCyclesEnded-Field) | *string* | YES | no |
| [InducingEvents](#ProcedureScheduleInducingEvents-Field) | *string* | YES | no |
| [AbortCausingEvents](#ProcedureScheduleAbortCausingEvents-Field) | *string* | YES | no |
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
| [EntryArms](#EntryArms-refering-to-this-ProcedureSchedule) | Referers | [Arm](#Arm) | * (multiple) |
| [InducedSubProcedureSchedules](#InducedSubProcedureSchedules-childs-of-this-ProcedureSchedule) | Childs | [InducedSubProcedureSchedule](#InducedSubProcedureSchedule) | * (multiple) |
| [InducingSubProcedureSchedules](#InducingSubProcedureSchedules-refering-to-this-ProcedureSchedule) | Referers | [InducedSubProcedureSchedule](#InducedSubProcedureSchedule) | * (multiple) |
| [InducedProcedures](#InducedProcedures-childs-of-this-ProcedureSchedule) | Childs | [InducedVisitProcedure](#InducedVisitProcedure) | * (multiple) |
| [CycleDefinition](#CycleDefinition-child-of-this-ProcedureSchedule) | Child | [ProcedureCycleDefinition](#ProcedureCycleDefinition) | 0/1 (single) |
| [ResearchStudy](#ResearchStudy-parent-of-this-ProcedureSchedule) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |

##### **EntryArms** (refering to this ProcedureSchedule)
Target: [Arm](#Arm)
```
self describing ...
```
##### **InducedSubProcedureSchedules** (childs of this ProcedureSchedule)
Target: [InducedSubProcedureSchedule](#InducedSubProcedureSchedule)
```
self describing ...
```
##### **InducingSubProcedureSchedules** (refering to this ProcedureSchedule)
Target: [InducedSubProcedureSchedule](#InducedSubProcedureSchedule)
```
self describing ...
```
##### **InducedProcedures** (childs of this ProcedureSchedule)
Target: [InducedVisitProcedure](#InducedVisitProcedure)
```
self describing ...
```
##### **CycleDefinition** (child of this ProcedureSchedule)
Target: [ProcedureCycleDefinition](#ProcedureCycleDefinition)
```
self describing ...
```
##### **ResearchStudy** (parent of this ProcedureSchedule)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#ProcedureScheduleStudyWorkflowName-Field), [StudyWorkflowVersion](#ProcedureScheduleStudyWorkflowVersion-Field).
```
self describing ...
```




## InducedSubProcedureSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedSubProcedureScheduleId-Field) **(KEY)** | *guid* | YES | no |
| [ParentProcedureScheduleId](#InducedSubProcedureScheduleParentProcedureScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedProcedureScheduleId](#InducedSubProcedureScheduleInducedProcedureScheduleId-Field) (FK) | *guid* | YES | no |
| [Offset](#InducedSubProcedureScheduleOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedSubProcedureScheduleOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedSubProcedureScheduleSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedSubProcedureScheduleSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedSubProcedureScheduleSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [SharedSkipCounters](#InducedSubProcedureScheduleSharedSkipCounters-Field) | *boolean* | YES | no |
| [SharedLostCounters](#InducedSubProcedureScheduleSharedLostCounters-Field) | *boolean* | YES | no |
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
| [ParentProcedureSchedule](#ParentProcedureSchedule-parent-of-this-InducedSubProcedureSchedule) | Parent | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |
| [InducedProcedureSchedule](#InducedProcedureSchedule-lookup-from-this-InducedSubProcedureSchedule) | Lookup | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |

##### **ParentProcedureSchedule** (parent of this InducedSubProcedureSchedule)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [ParentProcedureScheduleId](#InducedSubProcedureScheduleParentProcedureScheduleId-Field).
```
self describing ...
```
##### **InducedProcedureSchedule** (lookup from this InducedSubProcedureSchedule)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [InducedProcedureScheduleId](#InducedSubProcedureScheduleInducedProcedureScheduleId-Field).
```
self describing ...
```




## InducedVisitProcedure


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedVisitProcedureId-Field) **(KEY)** | *guid* | YES | no |
| [ProcedureScheduleId](#InducedVisitProcedureProcedureScheduleId-Field) (FK) | *guid* | YES | no |
| [Offset](#InducedVisitProcedureOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedVisitProcedureOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedVisitProcedureSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedVisitProcedureSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedVisitProcedureSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedVisitProdecureName](#InducedVisitProcedureInducedVisitProdecureName-Field) (FK) | *string* (50) | YES | no |
| [InducedVisitExecutionTitle](#InducedVisitProcedureInducedVisitExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedVisitProcedureSkipable-Field) | *boolean* | YES | no |
| [EventOnSkip](#InducedVisitProcedureEventOnSkip-Field) | *string* | YES | no |
| [EventOnLost](#InducedVisitProcedureEventOnLost-Field) | *string* | YES | no |
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
| [ProcedureSchedule](#ProcedureSchedule-parent-of-this-InducedVisitProcedure) | Parent | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |
| [InducedVisitProdecure](#InducedVisitProdecure-lookup-from-this-InducedVisitProcedure) | Lookup | [VisitProdecureDefinition](#VisitProdecureDefinition) | 0/1 (optional) |

##### **ProcedureSchedule** (parent of this InducedVisitProcedure)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [ProcedureScheduleId](#InducedVisitProcedureProcedureScheduleId-Field).
```
self describing ...
```
##### **InducedVisitProdecure** (lookup from this InducedVisitProcedure)
Target Type: [VisitProdecureDefinition](#VisitProdecureDefinition)
Addressed by: [InducedVisitProdecureName](#InducedVisitProcedureInducedVisitProdecureName-Field).
```
self describing ...
```




## ProcedureCycleDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ProcedureScheduleId](#ProcedureCycleDefinitionProcedureScheduleId-Field) **(KEY)** (FK) | *guid* | YES | no |
| [ReschedulingBase](#ProcedureCycleDefinitionReschedulingBase-Field) | *int32* | YES | no |
| [ReschedulingOffset](#ProcedureCycleDefinitionReschedulingOffset-Field) | *string* | YES | no |
| [ReschedulingOffsetUnit](#ProcedureCycleDefinitionReschedulingOffsetUnit-Field) | *string* | YES | no |
| [CycleLimit](#ProcedureCycleDefinitionCycleLimit-Field) | *int32* | no | no |
| [SharedSkipCounters](#ProcedureCycleDefinitionSharedSkipCounters-Field) | *boolean* | YES | no |
| [SharedLostCounters](#ProcedureCycleDefinitionSharedLostCounters-Field) | *boolean* | YES | no |
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
| [ProcedureSchedule](#ProcedureSchedule-parent-of-this-ProcedureCycleDefinition) | Parent | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |

##### **ProcedureSchedule** (parent of this ProcedureCycleDefinition)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [ProcedureScheduleId](#ProcedureCycleDefinitionProcedureScheduleId-Field).
```
self describing ...
```




## StudyEvent


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyEventName](#StudyEventStudyEventName-Field) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#StudyEventStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#StudyEventStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [MaxOccourrencesBeforeExclusion](#StudyEventMaxOccourrencesBeforeExclusion-Field) | *int32* | no | no |
| [AllowManualTrigger](#StudyEventAllowManualTrigger-Field) | *boolean* | YES | no |
| [Description](#StudyEventDescription-Field) | *string* | YES | no |
| [EvenSpecificDocumentationUrl](#StudyEventEvenSpecificDocumentationUrl-Field) | *string* | no | no |
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
| [ResearchStudy](#ResearchStudy-parent-of-this-StudyEvent) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |

##### **ResearchStudy** (parent of this StudyEvent)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#StudyEventStudyWorkflowName-Field), [StudyWorkflowVersion](#StudyEventStudyWorkflowVersion-Field).
```
self describing ...
```




## TaskSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskScheduleId](#TaskScheduleTaskScheduleId-Field) **(KEY)** | *guid* | YES | no |
| [StudyWorkflowName](#TaskScheduleStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#TaskScheduleStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [Title](#TaskScheduleTitle-Field) | *string* | YES | no |
| [MaxSkipsBeforeLost](#TaskScheduleMaxSkipsBeforeLost-Field) | *string* | YES | no |
| [MaxSubsequentSkipsBeforeLost](#TaskScheduleMaxSubsequentSkipsBeforeLost-Field) | *string* | YES | no |
| [MaxLostsBeforeLtfuAbort](#TaskScheduleMaxLostsBeforeLtfuAbort-Field) | *string* | YES | no |
| [MaxSubsequentLostsBeforeLtfuAbort](#TaskScheduleMaxSubsequentLostsBeforeLtfuAbort-Field) | *string* | YES | no |
| [EventOnLtfuAbort](#TaskScheduleEventOnLtfuAbort-Field) | *string* | YES | no |
| [EventOnCycleEnded](#TaskScheduleEventOnCycleEnded-Field) | *string* | YES | no |
| [EventOnAllCyclesEnded](#TaskScheduleEventOnAllCyclesEnded-Field) | *string* | YES | no |
| [InducingEvents](#TaskScheduleInducingEvents-Field) | *string* | YES | no |
| [AbortCausingEvents](#TaskScheduleAbortCausingEvents-Field) | *string* | YES | no |
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
| [InducedDataRecordingTasks](#InducedDataRecordingTasks-childs-of-this-TaskSchedule) | Childs | [InducedDataRecordingTask](#InducedDataRecordingTask) | * (multiple) |
| [InducedDrugApplymentTasks](#InducedDrugApplymentTasks-childs-of-this-TaskSchedule) | Childs | [InducedDrugApplymentTask](#InducedDrugApplymentTask) | * (multiple) |
| [InducedSubTaskSchedules](#InducedSubTaskSchedules-childs-of-this-TaskSchedule) | Childs | [InducedSubTaskSchedule](#InducedSubTaskSchedule) | * (multiple) |
| [InducingTaskSchedules](#InducingTaskSchedules-refering-to-this-TaskSchedule) | Referers | [InducedSubTaskSchedule](#InducedSubTaskSchedule) | * (multiple) |
| [InducedTreatmentTasks](#InducedTreatmentTasks-childs-of-this-TaskSchedule) | Childs | [InducedTreatmentTask](#InducedTreatmentTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-TaskSchedule) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |
| [CycleDefinition](#CycleDefinition-child-of-this-TaskSchedule) | Child | [TaskCycleDefinition](#TaskCycleDefinition) | 0/1 (single) |
| [EntryVisitProdecureDefinitions](#EntryVisitProdecureDefinitions-refering-to-this-TaskSchedule) | Referers | [VisitProdecureDefinition](#VisitProdecureDefinition) | * (multiple) |

##### **InducedDataRecordingTasks** (childs of this TaskSchedule)
Target: [InducedDataRecordingTask](#InducedDataRecordingTask)
```
self describing ...
```
##### **InducedDrugApplymentTasks** (childs of this TaskSchedule)
Target: [InducedDrugApplymentTask](#InducedDrugApplymentTask)
```
self describing ...
```
##### **InducedSubTaskSchedules** (childs of this TaskSchedule)
Target: [InducedSubTaskSchedule](#InducedSubTaskSchedule)
```
self describing ...
```
##### **InducingTaskSchedules** (refering to this TaskSchedule)
Target: [InducedSubTaskSchedule](#InducedSubTaskSchedule)
```
self describing ...
```
##### **InducedTreatmentTasks** (childs of this TaskSchedule)
Target: [InducedTreatmentTask](#InducedTreatmentTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this TaskSchedule)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#TaskScheduleStudyWorkflowName-Field), [StudyWorkflowVersion](#TaskScheduleStudyWorkflowVersion-Field).
```
self describing ...
```
##### **CycleDefinition** (child of this TaskSchedule)
Target: [TaskCycleDefinition](#TaskCycleDefinition)
```
self describing ...
```
##### **EntryVisitProdecureDefinitions** (refering to this TaskSchedule)
Target: [VisitProdecureDefinition](#VisitProdecureDefinition)
```
self describing ...
```




## InducedDataRecordingTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedDataRecordingTaskId-Field) **(KEY)** | *guid* | YES | no |
| [TaskScheduleId](#InducedDataRecordingTaskTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedDataRecordingName](#InducedDataRecordingTaskInducedDataRecordingName-Field) (FK) | *string* (50) | YES | no |
| [Offset](#InducedDataRecordingTaskOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedDataRecordingTaskOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedDataRecordingTaskSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedDataRecordingTaskSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedDataRecordingTaskSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedDataRecordingTaskInducedTaskExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedDataRecordingTaskSkipable-Field) | *boolean* | YES | no |
| [EventOnSkip](#InducedDataRecordingTaskEventOnSkip-Field) | *string* | YES | no |
| [EventOnLost](#InducedDataRecordingTaskEventOnLost-Field) | *string* | YES | no |
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
| [InducedTask](#InducedTask-lookup-from-this-InducedDataRecordingTask) | Lookup | [DataRecordingTask](#DataRecordingTask) | 0/1 (optional) |
| [TaskSchedule](#TaskSchedule-parent-of-this-InducedDataRecordingTask) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **InducedTask** (lookup from this InducedDataRecordingTask)
Target Type: [DataRecordingTask](#DataRecordingTask)
Addressed by: [InducedDataRecordingName](#InducedDataRecordingTaskInducedDataRecordingName-Field).
```
self describing ...
```
##### **TaskSchedule** (parent of this InducedDataRecordingTask)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#InducedDataRecordingTaskTaskScheduleId-Field).
```
self describing ...
```




## InducedDrugApplymentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedDrugApplymentTaskId-Field) **(KEY)** | *guid* | YES | no |
| [TaskScheduleId](#InducedDrugApplymentTaskTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedDrugApplymentName](#InducedDrugApplymentTaskInducedDrugApplymentName-Field) (FK) | *string* (50) | YES | no |
| [Offset](#InducedDrugApplymentTaskOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedDrugApplymentTaskOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedDrugApplymentTaskSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedDrugApplymentTaskSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedDrugApplymentTaskSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedDrugApplymentTaskInducedTaskExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedDrugApplymentTaskSkipable-Field) | *boolean* | YES | no |
| [EventOnSkip](#InducedDrugApplymentTaskEventOnSkip-Field) | *string* | YES | no |
| [EventOnLost](#InducedDrugApplymentTaskEventOnLost-Field) | *string* | YES | no |
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
| [InducedTask](#InducedTask-lookup-from-this-InducedDrugApplymentTask) | Lookup | [DrugApplymentTask](#DrugApplymentTask) | 0/1 (optional) |
| [TaskSchedule](#TaskSchedule-parent-of-this-InducedDrugApplymentTask) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **InducedTask** (lookup from this InducedDrugApplymentTask)
Target Type: [DrugApplymentTask](#DrugApplymentTask)
Addressed by: [InducedDrugApplymentName](#InducedDrugApplymentTaskInducedDrugApplymentName-Field).
```
self describing ...
```
##### **TaskSchedule** (parent of this InducedDrugApplymentTask)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#InducedDrugApplymentTaskTaskScheduleId-Field).
```
self describing ...
```




## InducedSubTaskSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedSubTaskScheduleId-Field) **(KEY)** | *guid* | YES | no |
| [ParentTaskScheduleId](#InducedSubTaskScheduleParentTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedTaskScheduleId](#InducedSubTaskScheduleInducedTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [Offset](#InducedSubTaskScheduleOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedSubTaskScheduleOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedSubTaskScheduleSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedSubTaskScheduleSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedSubTaskScheduleSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [SharedSkipCounters](#InducedSubTaskScheduleSharedSkipCounters-Field) | *boolean* | YES | no |
| [SharedLostCounters](#InducedSubTaskScheduleSharedLostCounters-Field) | *boolean* | YES | no |
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
| [ParentTaskSchedule](#ParentTaskSchedule-parent-of-this-InducedSubTaskSchedule) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |
| [InducedTaskSchedule](#InducedTaskSchedule-lookup-from-this-InducedSubTaskSchedule) | Lookup | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **ParentTaskSchedule** (parent of this InducedSubTaskSchedule)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [ParentTaskScheduleId](#InducedSubTaskScheduleParentTaskScheduleId-Field).
```
self describing ...
```
##### **InducedTaskSchedule** (lookup from this InducedSubTaskSchedule)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [InducedTaskScheduleId](#InducedSubTaskScheduleInducedTaskScheduleId-Field).
```
self describing ...
```




## InducedTreatmentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedTreatmentTaskId-Field) **(KEY)** | *guid* | YES | no |
| [TaskScheduleId](#InducedTreatmentTaskTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedTreatmentName](#InducedTreatmentTaskInducedTreatmentName-Field) (FK) | *string* (50) | YES | no |
| [Offset](#InducedTreatmentTaskOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedTreatmentTaskOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedTreatmentTaskSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedTreatmentTaskSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedTreatmentTaskSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedTreatmentTaskInducedTaskExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedTreatmentTaskSkipable-Field) | *boolean* | YES | no |
| [EventOnSkip](#InducedTreatmentTaskEventOnSkip-Field) | *string* | YES | no |
| [EventOnLost](#InducedTreatmentTaskEventOnLost-Field) | *string* | YES | no |
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
| [TaskSchedule](#TaskSchedule-parent-of-this-InducedTreatmentTask) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |
| [InducedTask](#InducedTask-lookup-from-this-InducedTreatmentTask) | Lookup | [TreatmentTask](#TreatmentTask) | 0/1 (optional) |

##### **TaskSchedule** (parent of this InducedTreatmentTask)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#InducedTreatmentTaskTaskScheduleId-Field).
```
self describing ...
```
##### **InducedTask** (lookup from this InducedTreatmentTask)
Target Type: [TreatmentTask](#TreatmentTask)
Addressed by: [InducedTreatmentName](#InducedTreatmentTaskInducedTreatmentName-Field).
```
self describing ...
```




## TaskCycleDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskScheduleId](#TaskCycleDefinitionTaskScheduleId-Field) **(KEY)** (FK) | *guid* | YES | no |
| [ReschedulingBase](#TaskCycleDefinitionReschedulingBase-Field) | *string* | YES | no |
| [ReschedulingOffset](#TaskCycleDefinitionReschedulingOffset-Field) | *string* | YES | no |
| [ReschedulingOffsetUnit](#TaskCycleDefinitionReschedulingOffsetUnit-Field) | *string* | YES | no |
| [CycleLimit](#TaskCycleDefinitionCycleLimit-Field) | *int32* | no | no |
| [SharedSkipCounters](#TaskCycleDefinitionSharedSkipCounters-Field) | *boolean* | YES | no |
| [SharedLostCounters](#TaskCycleDefinitionSharedLostCounters-Field) | *boolean* | YES | no |
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
| [TaskSchedule](#TaskSchedule-parent-of-this-TaskCycleDefinition) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **TaskSchedule** (parent of this TaskCycleDefinition)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#TaskCycleDefinitionTaskScheduleId-Field).
```
self describing ...
```




## TreatmentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TreatmentName](#TreatmentTaskTreatmentName-Field) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#TreatmentTaskStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#TreatmentTaskStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#TreatmentTaskBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| [ShortDescription](#TreatmentTaskShortDescription-Field) | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#TreatmentTaskTaskSpecificDocumentationUrl-Field) | *string* | no | no |
| [TreatmentDescription](#TreatmentTaskTreatmentDescription-Field) | *string* | YES | no |
| [ImportantNotices](#TreatmentTaskImportantNotices-Field) | *string* | no | no |
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
| [Inducements](#Inducements-refering-to-this-TreatmentTask) | Referers | [InducedTreatmentTask](#InducedTreatmentTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-TreatmentTask) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |

##### **Inducements** (refering to this TreatmentTask)
Target: [InducedTreatmentTask](#InducedTreatmentTask)
```
self describing ...
```
##### **ResearchStudy** (parent of this TreatmentTask)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#TreatmentTaskStudyWorkflowName-Field), [StudyWorkflowVersion](#TreatmentTaskStudyWorkflowVersion-Field).
```
self describing ...
```




## VisitProdecureDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [VisitProdecureName](#VisitProdecureDefinitionVisitProdecureName-Field) **(KEY)** | *string* (50) | YES | no |
| [StudyWorkflowName](#VisitProdecureDefinitionStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#VisitProdecureDefinitionStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [RootTaskScheduleId](#VisitProdecureDefinitionRootTaskScheduleId-Field) (FK) | *guid* | no | no |
| [BillablePriceOnAbortedExecution](#VisitProdecureDefinitionBillablePriceOnAbortedExecution-Field) | *decimal* | no | no |
| [BillablePriceOnCompletedExecution](#VisitProdecureDefinitionBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| [VisitSpecificDocumentationUrl](#VisitProdecureDefinitionVisitSpecificDocumentationUrl-Field) | *string* | no | no |
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
| [Inducements](#Inducements-refering-to-this-VisitProdecureDefinition) | Referers | [InducedVisitProcedure](#InducedVisitProcedure) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-VisitProdecureDefinition) | Parent | [ResearchStudy](#ResearchStudy) | 0/1 (optional) |
| [RootTaskSchedule](#RootTaskSchedule-lookup-from-this-VisitProdecureDefinition) | Lookup | [TaskSchedule](#TaskSchedule) | 1 (required) |

##### **Inducements** (refering to this VisitProdecureDefinition)
Target: [InducedVisitProcedure](#InducedVisitProcedure)
```
self describing ...
```
##### **ResearchStudy** (parent of this VisitProdecureDefinition)
Target Type: [ResearchStudy](#ResearchStudy)
Addressed by: [StudyWorkflowName](#VisitProdecureDefinitionStudyWorkflowName-Field), [StudyWorkflowVersion](#VisitProdecureDefinitionStudyWorkflowVersion-Field).
```
self describing ...
```
##### **RootTaskSchedule** (lookup from this VisitProdecureDefinition)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [RootTaskScheduleId](#VisitProdecureDefinitionRootTaskScheduleId-Field).
```
the TaskSchedule which is representing the primary-/entry-workflow (estimated tasks) when executing this visit
```


