# ORSCF-StudyWorkflowDefinition Schema Specification

|          | Info                                    |
|----------|-----------------------------------------|
|author:   |[ORSCF](https://www.orscf.org) ("Open Research Study Communication Formats") / T.Korn|
|license:  |[Apache-2](https://choosealicense.com/licenses/apache-2.0/)|
|version:  |1.3.0|
|timestamp:|2021-05-18 09:07|

### Contents

  * .  [ResearchStudyDefinition](#ResearchStudyDefinition)
  * ........\  [Arm](#Arm)
  * ........\  [DataRecordingTask](#DataRecordingTask)
  * ........\  [DrugApplymentTask](#DrugApplymentTask)
  * ........\  [ProcedureSchedule](#ProcedureSchedule)
  * ................\  [InducedSubProcedureSchedule](#InducedSubProcedureSchedule)
  * ................\  [InducedVisitProcedure](#InducedVisitProcedure)
  * ................\  [ProcedureCycleDefinition](#ProcedureCycleDefinition)
  * ........\  [StudyEvent](#StudyEvent)
  * ........\  [TaskSchedule](#TaskSchedule)
  * ................\  [InducedDataRecordingTask](#InducedDataRecordingTask)
  * ................\  [InducedDrugApplymentTask](#InducedDrugApplymentTask)
  * ................\  [InducedSubTaskSchedule](#InducedSubTaskSchedule)
  * ................\  [InducedTreatmentTask](#InducedTreatmentTask)
  * ................\  [TaskCycleDefinition](#TaskCycleDefinition)
  * ........\  [TreatmentTask](#TreatmentTask)
  * ........\  [VisitProdecureDefinition](#VisitProdecureDefinition)

# Model:

![chart](./chart.png)



## ResearchStudyDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyWorkflowName](#ResearchStudyDefinitionStudyWorkflowName-Field) **(PK)** | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ResearchStudyDefinitionStudyWorkflowVersion-Field) **(PK)** | *string* (20) | YES | no |
| OfficialLabel | *string* | YES | no |
| DefinitionOwner | *string* | YES | no |
| DocumentationUrl | *string* | YES | no |
| [LogoImage](#ResearchStudyDefinitionLogoImage-Field) | *string* | no | no |
| Description | *string* | YES | no |
| [VersionIdentity](#ResearchStudyDefinitionVersionIdentity-Field) | *string* | YES | no |
| LastChangeUtc | *datetime* | YES | no |
| [DraftState](#ResearchStudyDefinitionDraftState-Field) | *int32* | YES | no |
| [BillingCurrency](#ResearchStudyDefinitionBillingCurrency-Field) | *string* | no | no |
| [BillablePriceForGeneralPreparation](#ResearchStudyDefinitionBillablePriceForGeneralPreparation-Field) | *decimal* | no | no |
| [StudyDocumentationUrl](#ResearchStudyDefinitionStudyDocumentationUrl-Field) | *string* | no | no |
| [CaseReportFormUrl](#ResearchStudyDefinitionCaseReportFormUrl-Field) | *string* | no | no |
#### Unique Keys
* StudyWorkflowName + StudyWorkflowVersion **(primary)**

#### ResearchStudyDefinition.**StudyWorkflowName** (Field)
```
the official invariant name of the study as given by the sponsor
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 100 characters.

#### ResearchStudyDefinition.**StudyWorkflowVersion** (Field)
```
This value follows the rules of 'Semantic Versioning' (https://semver.org) and needs to be updated exactly and only on transition to DraftState.Released! If the previously DraftState was 'DraftNewFix', then the 3. number must be increased at this time! If the previously DraftState was 'DraftNewMinor', then the 2. number must be increased, and the 3. number must be set to 0 at this time! If the previously DraftState was 'DraftNewMajor', then the 1. number must be increased, and the 2.+3. number must be set to 0 at this time!
```
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 20 characters.

#### ResearchStudyDefinition.**LogoImage** (Field)
```
Logo in base64
```
* this field is optional, so that '*null*' values are supported

#### ResearchStudyDefinition.**VersionIdentity** (Field)
```
IT MUST NOT be updated on every change during Draft! Format: the Author, which is starting the new Draft (Alphanumeric, in PascalCase without blanks or other Symbols) + the current UTC-Time when setting the value (in ISO8601 format) separated by a Pipe "|" Sample: "MaxMustermann|2020-06-15T13:45:30.0000000Z".
```

#### ResearchStudyDefinition.**DraftState** (Field)
```
0=Released / 1=DraftNewFix / 2=DraftNewMinor / 3=DraftNewMajor
```

#### ResearchStudyDefinition.**BillingCurrency** (Field)
* this field is optional, so that '*null*' values are supported

#### ResearchStudyDefinition.**BillablePriceForGeneralPreparation** (Field)
* this field is optional, so that '*null*' values are supported

#### ResearchStudyDefinition.**StudyDocumentationUrl** (Field)
* this field is optional, so that '*null*' values are supported

#### ResearchStudyDefinition.**CaseReportFormUrl** (Field)
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [Arms](#Arms-childs-of-this-ResearchStudyDefinition) | Childs | [Arm](#Arm) | * (multiple) |
| [DataRecordingTasks](#DataRecordingTasks-childs-of-this-ResearchStudyDefinition) | Childs | [DataRecordingTask](#DataRecordingTask) | * (multiple) |
| [DrugApplymentTasks](#DrugApplymentTasks-childs-of-this-ResearchStudyDefinition) | Childs | [DrugApplymentTask](#DrugApplymentTask) | * (multiple) |
| [ProcedureSchedules](#ProcedureSchedules-childs-of-this-ResearchStudyDefinition) | Childs | [ProcedureSchedule](#ProcedureSchedule) | * (multiple) |
| [TreatmentTasks](#TreatmentTasks-childs-of-this-ResearchStudyDefinition) | Childs | [TreatmentTask](#TreatmentTask) | * (multiple) |
| [TaskSchedules](#TaskSchedules-childs-of-this-ResearchStudyDefinition) | Childs | [TaskSchedule](#TaskSchedule) | * (multiple) |
| [VisitProdecureDefinitions](#VisitProdecureDefinitions-childs-of-this-ResearchStudyDefinition) | Childs | [VisitProdecureDefinition](#VisitProdecureDefinition) | * (multiple) |
| [Events](#Events-childs-of-this-ResearchStudyDefinition) | Childs | [StudyEvent](#StudyEvent) | * (multiple) |

##### **Arms** (childs of this ResearchStudyDefinition)
Target: [Arm](#Arm)
##### **DataRecordingTasks** (childs of this ResearchStudyDefinition)
Target: [DataRecordingTask](#DataRecordingTask)
##### **DrugApplymentTasks** (childs of this ResearchStudyDefinition)
Target: [DrugApplymentTask](#DrugApplymentTask)
##### **ProcedureSchedules** (childs of this ResearchStudyDefinition)
Target: [ProcedureSchedule](#ProcedureSchedule)
##### **TreatmentTasks** (childs of this ResearchStudyDefinition)
Target: [TreatmentTask](#TreatmentTask)
##### **TaskSchedules** (childs of this ResearchStudyDefinition)
Target: [TaskSchedule](#TaskSchedule)
##### **VisitProdecureDefinitions** (childs of this ResearchStudyDefinition)
Target: [VisitProdecureDefinition](#VisitProdecureDefinition)
##### **Events** (childs of this ResearchStudyDefinition)
Target: [StudyEvent](#StudyEvent)




## Arm


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyArmName](#ArmStudyArmName-Field) **(PK)** | *string* (50) | YES | no |
| [StudyWorkflowName](#ArmStudyWorkflowName-Field) **(PK)** (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ArmStudyWorkflowVersion-Field) **(PK)** (FK) | *string* (20) | YES | no |
| [RootProcedureScheduleId](#ArmRootProcedureScheduleId-Field) (FK) | *guid* | no | no |
| [BillablePriceOnFailedInclusion](#ArmBillablePriceOnFailedInclusion-Field) | *decimal* | no | no |
| [BillablePriceOnSuccessfullInclusion](#ArmBillablePriceOnSuccessfullInclusion-Field) | *decimal* | no | no |
| [BillablePriceOnAbortedParticipation](#ArmBillablePriceOnAbortedParticipation-Field) | *decimal* | no | no |
| [BillablePriceOnCompletedParticipation](#ArmBillablePriceOnCompletedParticipation-Field) | *decimal* | no | no |
| [ArmSpecificDocumentationUrl](#ArmArmSpecificDocumentationUrl-Field) | *string* | no | no |
| [InclusionCriteria](#ArmInclusionCriteria-Field) | *string* | no | no |
| [Substudy](#ArmSubstudy-Field) | *string* | no | no |
#### Unique Keys
* StudyArmName + StudyWorkflowName + StudyWorkflowVersion **(primary)**

#### Arm.**StudyArmName** (Field)
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.

#### Arm.**StudyWorkflowName** (Field)
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### Arm.**StudyWorkflowVersion** (Field)
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.

#### Arm.**RootProcedureScheduleId** (Field)
```
the ProcedureSchedule which is representing the primary-/entry-workflow (estimated visits) for participants of this arm
```
* this field is optional, so that '*null*' values are supported
* this field is used as foreign key to address the related 'RootProcedureSchedule'

#### Arm.**BillablePriceOnFailedInclusion** (Field)
* this field is optional, so that '*null*' values are supported

#### Arm.**BillablePriceOnSuccessfullInclusion** (Field)
* this field is optional, so that '*null*' values are supported

#### Arm.**BillablePriceOnAbortedParticipation** (Field)
* this field is optional, so that '*null*' values are supported

#### Arm.**BillablePriceOnCompletedParticipation** (Field)
* this field is optional, so that '*null*' values are supported

#### Arm.**ArmSpecificDocumentationUrl** (Field)
* this field is optional, so that '*null*' values are supported

#### Arm.**InclusionCriteria** (Field)
* this field is optional, so that '*null*' values are supported

#### Arm.**Substudy** (Field)
```
defines, that the arm is part of a SubStudy which is addressed by a UniqueName or a path expressen
```
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [ResearchStudy](#ResearchStudy-parent-of-this-Arm) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |
| [RootProcedureSchedule](#RootProcedureSchedule-lookup-from-this-Arm) | Lookup | [ProcedureSchedule](#ProcedureSchedule) | 1 (required) |

##### **ResearchStudy** (parent of this Arm)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#ArmStudyWorkflowName-Field), [StudyWorkflowVersion](#ArmStudyWorkflowVersion-Field).
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
| [DataRecordingName](#DataRecordingTaskDataRecordingName-Field) **(PK)** | *string* (50) | YES | no |
| [StudyWorkflowName](#DataRecordingTaskStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#DataRecordingTaskStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#DataRecordingTaskBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| ShortDescription | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#DataRecordingTaskTaskSpecificDocumentationUrl-Field) | *string* | no | no |
| [ImportantNotices](#DataRecordingTaskImportantNotices-Field) | *string* | no | no |
| [DataSchemaUrl](#DataRecordingTaskDataSchemaUrl-Field) | *string* | YES | no |
| [DefaultData](#DataRecordingTaskDefaultData-Field) | *string* | no | no |
#### Unique Keys
* DataRecordingName **(primary)**

#### DataRecordingTask.**DataRecordingName** (Field)
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.

#### DataRecordingTask.**StudyWorkflowName** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### DataRecordingTask.**StudyWorkflowVersion** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.

#### DataRecordingTask.**BillablePriceOnCompletedExecution** (Field)
* this field is optional, so that '*null*' values are supported

#### DataRecordingTask.**TaskSpecificDocumentationUrl** (Field)
* this field is optional, so that '*null*' values are supported

#### DataRecordingTask.**ImportantNotices** (Field)
* this field is optional, so that '*null*' values are supported

#### DataRecordingTask.**DataSchemaUrl** (Field)
```
schema-url of the data which have to be recorded
```

#### DataRecordingTask.**DefaultData** (Field)
```
RAW data, in the schema as defined at the 'DataSchemaUrl'
```
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [Inducements](#Inducements-refering-to-this-DataRecordingTask) | Referers | [InducedDataRecordingTask](#InducedDataRecordingTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-DataRecordingTask) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |

##### **Inducements** (refering to this DataRecordingTask)
Target: [InducedDataRecordingTask](#InducedDataRecordingTask)
##### **ResearchStudy** (parent of this DataRecordingTask)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#DataRecordingTaskStudyWorkflowName-Field), [StudyWorkflowVersion](#DataRecordingTaskStudyWorkflowVersion-Field).




## DrugApplymentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [DrugApplymentName](#DrugApplymentTaskDrugApplymentName-Field) **(PK)** | *string* (50) | YES | no |
| [StudyWorkflowName](#DrugApplymentTaskStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#DrugApplymentTaskStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#DrugApplymentTaskBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| ShortDescription | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#DrugApplymentTaskTaskSpecificDocumentationUrl-Field) | *string* | no | no |
| DrugName | *string* | YES | no |
| DrugDoseMgPerUnitMg | *decimal* | YES | no |
| UnitsToApply | *decimal* | YES | no |
| ApplymentRoute | *string* | YES | no |
| [ImportantNotices](#DrugApplymentTaskImportantNotices-Field) | *string* | no | no |
#### Unique Keys
* DrugApplymentName **(primary)**

#### DrugApplymentTask.**DrugApplymentName** (Field)
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.

#### DrugApplymentTask.**StudyWorkflowName** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### DrugApplymentTask.**StudyWorkflowVersion** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.

#### DrugApplymentTask.**BillablePriceOnCompletedExecution** (Field)
* this field is optional, so that '*null*' values are supported

#### DrugApplymentTask.**TaskSpecificDocumentationUrl** (Field)
* this field is optional, so that '*null*' values are supported

#### DrugApplymentTask.**ImportantNotices** (Field)
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [Inducements](#Inducements-refering-to-this-DrugApplymentTask) | Referers | [InducedDrugApplymentTask](#InducedDrugApplymentTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-DrugApplymentTask) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |

##### **Inducements** (refering to this DrugApplymentTask)
Target: [InducedDrugApplymentTask](#InducedDrugApplymentTask)
##### **ResearchStudy** (parent of this DrugApplymentTask)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#DrugApplymentTaskStudyWorkflowName-Field), [StudyWorkflowVersion](#DrugApplymentTaskStudyWorkflowVersion-Field).




## ProcedureSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ProcedureScheduleId](#ProcedureScheduleProcedureScheduleId-Field) **(PK)** | *guid* | YES | no |
| [StudyWorkflowName](#ProcedureScheduleStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#ProcedureScheduleStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| Title | *string* | YES | no |
| MaxSkipsBeforeLost | *string* | YES | no |
| MaxSubsequentSkipsBeforeLost | *string* | YES | no |
| MaxLostsBeforeLtfuAbort | *string* | YES | no |
| MaxSubsequentLostsBeforeLtfuAbort | *string* | YES | no |
| EventOnLtfuAbort | *string* | YES | no |
| EventOnCycleEnded | *string* | YES | no |
| EventOnAllCyclesEnded | *string* | YES | no |
| InducingEvents | *string* | YES | no |
| AbortCausingEvents | *string* | YES | no |
#### Unique Keys
* ProcedureScheduleId **(primary)**

#### ProcedureSchedule.**ProcedureScheduleId** (Field)
* this field represents the identity (PK) of the record

#### ProcedureSchedule.**StudyWorkflowName** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### ProcedureSchedule.**StudyWorkflowVersion** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [EntryArms](#EntryArms-refering-to-this-ProcedureSchedule) | Referers | [Arm](#Arm) | * (multiple) |
| [InducedSubProcedureSchedules](#InducedSubProcedureSchedules-childs-of-this-ProcedureSchedule) | Childs | [InducedSubProcedureSchedule](#InducedSubProcedureSchedule) | * (multiple) |
| [InducingSubProcedureSchedules](#InducingSubProcedureSchedules-refering-to-this-ProcedureSchedule) | Referers | [InducedSubProcedureSchedule](#InducedSubProcedureSchedule) | * (multiple) |
| [InducedProcedures](#InducedProcedures-childs-of-this-ProcedureSchedule) | Childs | [InducedVisitProcedure](#InducedVisitProcedure) | * (multiple) |
| [CycleDefinition](#CycleDefinition-child-of-this-ProcedureSchedule) | Child | [ProcedureCycleDefinition](#ProcedureCycleDefinition) | 0/1 (single) |
| [ResearchStudy](#ResearchStudy-parent-of-this-ProcedureSchedule) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |

##### **EntryArms** (refering to this ProcedureSchedule)
Target: [Arm](#Arm)
##### **InducedSubProcedureSchedules** (childs of this ProcedureSchedule)
Target: [InducedSubProcedureSchedule](#InducedSubProcedureSchedule)
##### **InducingSubProcedureSchedules** (refering to this ProcedureSchedule)
Target: [InducedSubProcedureSchedule](#InducedSubProcedureSchedule)
##### **InducedProcedures** (childs of this ProcedureSchedule)
Target: [InducedVisitProcedure](#InducedVisitProcedure)
##### **CycleDefinition** (child of this ProcedureSchedule)
Target: [ProcedureCycleDefinition](#ProcedureCycleDefinition)
##### **ResearchStudy** (parent of this ProcedureSchedule)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#ProcedureScheduleStudyWorkflowName-Field), [StudyWorkflowVersion](#ProcedureScheduleStudyWorkflowVersion-Field).




## InducedSubProcedureSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedSubProcedureScheduleId-Field) **(PK)** | *guid* | YES | no |
| [ParentProcedureScheduleId](#InducedSubProcedureScheduleParentProcedureScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedProcedureScheduleId](#InducedSubProcedureScheduleInducedProcedureScheduleId-Field) (FK) | *guid* | YES | no |
| [Offset](#InducedSubProcedureScheduleOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedSubProcedureScheduleOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedSubProcedureScheduleSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedSubProcedureScheduleSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedSubProcedureScheduleSchedulingVariabilityUnit-Field) | *string* | YES | no |
| SharedSkipCounters | *boolean* | YES | no |
| SharedLostCounters | *boolean* | YES | no |
#### Unique Keys
* Id **(primary)**

#### InducedSubProcedureSchedule.**Id** (Field)
* this field represents the identity (PK) of the record

#### InducedSubProcedureSchedule.**ParentProcedureScheduleId** (Field)
* this field is used as foreign key to address the related 'ParentProcedureSchedule'

#### InducedSubProcedureSchedule.**InducedProcedureScheduleId** (Field)
* this field is used as foreign key to address the related 'InducedProcedureSchedule'

#### InducedSubProcedureSchedule.**Offset** (Field)
```
estimated scheduling date relative to the scheduling date of the parent ProcedureSchedule
```

#### InducedSubProcedureSchedule.**OffsetUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```

#### InducedSubProcedureSchedule.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the EARLIEST possible date.
```

#### InducedSubProcedureSchedule.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the LATEST possible date.
```

#### InducedSubProcedureSchedule.**SchedulingVariabilityUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [ParentProcedureSchedule](#ParentProcedureSchedule-parent-of-this-InducedSubProcedureSchedule) | Parent | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |
| [InducedProcedureSchedule](#InducedProcedureSchedule-lookup-from-this-InducedSubProcedureSchedule) | Lookup | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |

##### **ParentProcedureSchedule** (parent of this InducedSubProcedureSchedule)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [ParentProcedureScheduleId](#InducedSubProcedureScheduleParentProcedureScheduleId-Field).
##### **InducedProcedureSchedule** (lookup from this InducedSubProcedureSchedule)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [InducedProcedureScheduleId](#InducedSubProcedureScheduleInducedProcedureScheduleId-Field).




## InducedVisitProcedure


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedVisitProcedureId-Field) **(PK)** | *guid* | YES | no |
| [ProcedureScheduleId](#InducedVisitProcedureProcedureScheduleId-Field) (FK) | *guid* | YES | no |
| [Offset](#InducedVisitProcedureOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedVisitProcedureOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedVisitProcedureSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedVisitProcedureSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedVisitProcedureSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedVisitProdecureName](#InducedVisitProcedureInducedVisitProdecureName-Field) (FK) | *string* (50) | YES | no |
| [InducedVisitExecutionTitle](#InducedVisitProcedureInducedVisitExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedVisitProcedureSkipable-Field) | *boolean* | YES | no |
| EventOnSkip | *string* | YES | no |
| EventOnLost | *string* | YES | no |
#### Unique Keys
* Id **(primary)**

#### InducedVisitProcedure.**Id** (Field)
* this field represents the identity (PK) of the record

#### InducedVisitProcedure.**ProcedureScheduleId** (Field)
* this field is used as foreign key to address the related 'ProcedureSchedule'

#### InducedVisitProcedure.**Offset** (Field)
```
estimated scheduling date relative to the scheduling date of the parent ProcedureSchedule
```

#### InducedVisitProcedure.**OffsetUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```

#### InducedVisitProcedure.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the EARLIEST possible date.
```

#### InducedVisitProcedure.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling date (which is calculated from the offset), in this case the LATEST possible date.
```

#### InducedVisitProcedure.**SchedulingVariabilityUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```

#### InducedVisitProcedure.**InducedVisitProdecureName** (Field)
* this field is used as foreign key to address the related 'InducedVisitProdecure'
* the maximum length of the content within this field is 50 characters.

#### InducedVisitProcedure.**InducedVisitExecutionTitle** (Field)
```
the title for the induced execution, like 'V0', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: 'C{cs}-V0') to prevent from duplicate execution titles.
```

#### InducedVisitProcedure.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [ProcedureSchedule](#ProcedureSchedule-parent-of-this-InducedVisitProcedure) | Parent | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |
| [InducedVisitProdecure](#InducedVisitProdecure-lookup-from-this-InducedVisitProcedure) | Lookup | [VisitProdecureDefinition](#VisitProdecureDefinition) | 0/1 (optional) |

##### **ProcedureSchedule** (parent of this InducedVisitProcedure)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [ProcedureScheduleId](#InducedVisitProcedureProcedureScheduleId-Field).
##### **InducedVisitProdecure** (lookup from this InducedVisitProcedure)
Target Type: [VisitProdecureDefinition](#VisitProdecureDefinition)
Addressed by: [InducedVisitProdecureName](#InducedVisitProcedureInducedVisitProdecureName-Field).




## ProcedureCycleDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [ProcedureScheduleId](#ProcedureCycleDefinitionProcedureScheduleId-Field) **(PK)** (FK) | *guid* | YES | no |
| [ReschedulingBase](#ProcedureCycleDefinitionReschedulingBase-Field) | *int32* | YES | no |
| [ReschedulingOffset](#ProcedureCycleDefinitionReschedulingOffset-Field) | *string* | YES | no |
| [ReschedulingOffsetUnit](#ProcedureCycleDefinitionReschedulingOffsetUnit-Field) | *string* | YES | no |
| [CycleLimit](#ProcedureCycleDefinitionCycleLimit-Field) | *int32* | no | no |
| SharedSkipCounters | *boolean* | YES | no |
| SharedLostCounters | *boolean* | YES | no |
#### Unique Keys
* ProcedureScheduleId **(primary)**

#### ProcedureCycleDefinition.**ProcedureScheduleId** (Field)
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'ProcedureSchedule'

#### ProcedureCycleDefinition.**ReschedulingBase** (Field)
```
1=EstimatedParent (related to the inducing date of the parent ProcedureSchedule) / 2=LastEstimatedInducement (related to the ESTIMATED scheduling date of the last inducement within the parent ProcedureSchedule) / 3=LastExecutedInducement  (related to the REAL EXECUTION date of the last inducement within the parent ProcedureSchedule) 
```

#### ProcedureCycleDefinition.**ReschedulingOffset** (Field)
```
estimated scheduling date relative to the ReschedulingBase
```

#### ProcedureCycleDefinition.**ReschedulingOffsetUnit** (Field)
```
'M'=Months / 'W'=Weeks / 'D'=Days
```

#### ProcedureCycleDefinition.**CycleLimit** (Field)
```
number of cycles (of null for a infinite number of cycles)
```
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [ProcedureSchedule](#ProcedureSchedule-parent-of-this-ProcedureCycleDefinition) | Parent | [ProcedureSchedule](#ProcedureSchedule) | 0/1 (optional) |

##### **ProcedureSchedule** (parent of this ProcedureCycleDefinition)
Target Type: [ProcedureSchedule](#ProcedureSchedule)
Addressed by: [ProcedureScheduleId](#ProcedureCycleDefinitionProcedureScheduleId-Field).




## StudyEvent


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [StudyEventName](#StudyEventStudyEventName-Field) **(PK)** | *string* (50) | YES | no |
| [StudyWorkflowName](#StudyEventStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#StudyEventStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [MaxOccourrencesBeforeExclusion](#StudyEventMaxOccourrencesBeforeExclusion-Field) | *int32* | no | no |
| AllowManualTrigger | *boolean* | YES | no |
| Description | *string* | YES | no |
| [EvenSpecificDocumentationUrl](#StudyEventEvenSpecificDocumentationUrl-Field) | *string* | no | no |
#### Unique Keys
* StudyEventName **(primary)**

#### StudyEvent.**StudyEventName** (Field)
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.

#### StudyEvent.**StudyWorkflowName** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### StudyEvent.**StudyWorkflowVersion** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.

#### StudyEvent.**MaxOccourrencesBeforeExclusion** (Field)
* this field is optional, so that '*null*' values are supported

#### StudyEvent.**EvenSpecificDocumentationUrl** (Field)
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [ResearchStudy](#ResearchStudy-parent-of-this-StudyEvent) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |

##### **ResearchStudy** (parent of this StudyEvent)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#StudyEventStudyWorkflowName-Field), [StudyWorkflowVersion](#StudyEventStudyWorkflowVersion-Field).




## TaskSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskScheduleId](#TaskScheduleTaskScheduleId-Field) **(PK)** | *guid* | YES | no |
| [StudyWorkflowName](#TaskScheduleStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#TaskScheduleStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| Title | *string* | YES | no |
| MaxSkipsBeforeLost | *string* | YES | no |
| MaxSubsequentSkipsBeforeLost | *string* | YES | no |
| MaxLostsBeforeLtfuAbort | *string* | YES | no |
| MaxSubsequentLostsBeforeLtfuAbort | *string* | YES | no |
| EventOnLtfuAbort | *string* | YES | no |
| EventOnCycleEnded | *string* | YES | no |
| EventOnAllCyclesEnded | *string* | YES | no |
| InducingEvents | *string* | YES | no |
| AbortCausingEvents | *string* | YES | no |
#### Unique Keys
* TaskScheduleId **(primary)**

#### TaskSchedule.**TaskScheduleId** (Field)
* this field represents the identity (PK) of the record

#### TaskSchedule.**StudyWorkflowName** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### TaskSchedule.**StudyWorkflowVersion** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [InducedDataRecordingTasks](#InducedDataRecordingTasks-childs-of-this-TaskSchedule) | Childs | [InducedDataRecordingTask](#InducedDataRecordingTask) | * (multiple) |
| [InducedDrugApplymentTasks](#InducedDrugApplymentTasks-childs-of-this-TaskSchedule) | Childs | [InducedDrugApplymentTask](#InducedDrugApplymentTask) | * (multiple) |
| [InducedSubTaskSchedules](#InducedSubTaskSchedules-childs-of-this-TaskSchedule) | Childs | [InducedSubTaskSchedule](#InducedSubTaskSchedule) | * (multiple) |
| [InducingTaskSchedules](#InducingTaskSchedules-refering-to-this-TaskSchedule) | Referers | [InducedSubTaskSchedule](#InducedSubTaskSchedule) | * (multiple) |
| [InducedTreatmentTasks](#InducedTreatmentTasks-childs-of-this-TaskSchedule) | Childs | [InducedTreatmentTask](#InducedTreatmentTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-TaskSchedule) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |
| [CycleDefinition](#CycleDefinition-child-of-this-TaskSchedule) | Child | [TaskCycleDefinition](#TaskCycleDefinition) | 0/1 (single) |
| [EntryVisitProdecureDefinitions](#EntryVisitProdecureDefinitions-refering-to-this-TaskSchedule) | Referers | [VisitProdecureDefinition](#VisitProdecureDefinition) | * (multiple) |

##### **InducedDataRecordingTasks** (childs of this TaskSchedule)
Target: [InducedDataRecordingTask](#InducedDataRecordingTask)
##### **InducedDrugApplymentTasks** (childs of this TaskSchedule)
Target: [InducedDrugApplymentTask](#InducedDrugApplymentTask)
##### **InducedSubTaskSchedules** (childs of this TaskSchedule)
Target: [InducedSubTaskSchedule](#InducedSubTaskSchedule)
##### **InducingTaskSchedules** (refering to this TaskSchedule)
Target: [InducedSubTaskSchedule](#InducedSubTaskSchedule)
##### **InducedTreatmentTasks** (childs of this TaskSchedule)
Target: [InducedTreatmentTask](#InducedTreatmentTask)
##### **ResearchStudy** (parent of this TaskSchedule)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#TaskScheduleStudyWorkflowName-Field), [StudyWorkflowVersion](#TaskScheduleStudyWorkflowVersion-Field).
##### **CycleDefinition** (child of this TaskSchedule)
Target: [TaskCycleDefinition](#TaskCycleDefinition)
##### **EntryVisitProdecureDefinitions** (refering to this TaskSchedule)
Target: [VisitProdecureDefinition](#VisitProdecureDefinition)




## InducedDataRecordingTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedDataRecordingTaskId-Field) **(PK)** | *guid* | YES | no |
| [TaskScheduleId](#InducedDataRecordingTaskTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedDataRecordingName](#InducedDataRecordingTaskInducedDataRecordingName-Field) (FK) | *string* (50) | YES | no |
| [Offset](#InducedDataRecordingTaskOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedDataRecordingTaskOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedDataRecordingTaskSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedDataRecordingTaskSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedDataRecordingTaskSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedDataRecordingTaskInducedTaskExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedDataRecordingTaskSkipable-Field) | *boolean* | YES | no |
| EventOnSkip | *string* | YES | no |
| EventOnLost | *string* | YES | no |
#### Unique Keys
* Id **(primary)**

#### InducedDataRecordingTask.**Id** (Field)
* this field represents the identity (PK) of the record

#### InducedDataRecordingTask.**TaskScheduleId** (Field)
* this field is used as foreign key to address the related 'TaskSchedule'

#### InducedDataRecordingTask.**InducedDataRecordingName** (Field)
* this field is used as foreign key to address the related 'InducedTask'
* the maximum length of the content within this field is 50 characters.

#### InducedDataRecordingTask.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent TaskSchedule
```

#### InducedDataRecordingTask.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### InducedDataRecordingTask.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```

#### InducedDataRecordingTask.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.
```

#### InducedDataRecordingTask.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### InducedDataRecordingTask.**InducedTaskExecutionTitle** (Field)
```
the title for the induced execution, like 'Measurement X', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: '{vt} - Measurement X') to prevent from duplicate execution titles.
```

#### InducedDataRecordingTask.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [InducedTask](#InducedTask-lookup-from-this-InducedDataRecordingTask) | Lookup | [DataRecordingTask](#DataRecordingTask) | 0/1 (optional) |
| [TaskSchedule](#TaskSchedule-parent-of-this-InducedDataRecordingTask) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **InducedTask** (lookup from this InducedDataRecordingTask)
Target Type: [DataRecordingTask](#DataRecordingTask)
Addressed by: [InducedDataRecordingName](#InducedDataRecordingTaskInducedDataRecordingName-Field).
##### **TaskSchedule** (parent of this InducedDataRecordingTask)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#InducedDataRecordingTaskTaskScheduleId-Field).




## InducedDrugApplymentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedDrugApplymentTaskId-Field) **(PK)** | *guid* | YES | no |
| [TaskScheduleId](#InducedDrugApplymentTaskTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedDrugApplymentName](#InducedDrugApplymentTaskInducedDrugApplymentName-Field) (FK) | *string* (50) | YES | no |
| [Offset](#InducedDrugApplymentTaskOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedDrugApplymentTaskOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedDrugApplymentTaskSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedDrugApplymentTaskSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedDrugApplymentTaskSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedDrugApplymentTaskInducedTaskExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedDrugApplymentTaskSkipable-Field) | *boolean* | YES | no |
| EventOnSkip | *string* | YES | no |
| EventOnLost | *string* | YES | no |
#### Unique Keys
* Id **(primary)**

#### InducedDrugApplymentTask.**Id** (Field)
* this field represents the identity (PK) of the record

#### InducedDrugApplymentTask.**TaskScheduleId** (Field)
* this field is used as foreign key to address the related 'TaskSchedule'

#### InducedDrugApplymentTask.**InducedDrugApplymentName** (Field)
* this field is used as foreign key to address the related 'InducedTask'
* the maximum length of the content within this field is 50 characters.

#### InducedDrugApplymentTask.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent TaskSchedule
```

#### InducedDrugApplymentTask.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### InducedDrugApplymentTask.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```

#### InducedDrugApplymentTask.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.
```

#### InducedDrugApplymentTask.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### InducedDrugApplymentTask.**InducedTaskExecutionTitle** (Field)
```
the title for the induced execution, like 'Measurement X', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: '{vt} - Measurement X') to prevent from duplicate execution titles.
```

#### InducedDrugApplymentTask.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [InducedTask](#InducedTask-lookup-from-this-InducedDrugApplymentTask) | Lookup | [DrugApplymentTask](#DrugApplymentTask) | 0/1 (optional) |
| [TaskSchedule](#TaskSchedule-parent-of-this-InducedDrugApplymentTask) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **InducedTask** (lookup from this InducedDrugApplymentTask)
Target Type: [DrugApplymentTask](#DrugApplymentTask)
Addressed by: [InducedDrugApplymentName](#InducedDrugApplymentTaskInducedDrugApplymentName-Field).
##### **TaskSchedule** (parent of this InducedDrugApplymentTask)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#InducedDrugApplymentTaskTaskScheduleId-Field).




## InducedSubTaskSchedule


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedSubTaskScheduleId-Field) **(PK)** | *guid* | YES | no |
| [ParentTaskScheduleId](#InducedSubTaskScheduleParentTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedTaskScheduleId](#InducedSubTaskScheduleInducedTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [Offset](#InducedSubTaskScheduleOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedSubTaskScheduleOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedSubTaskScheduleSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedSubTaskScheduleSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedSubTaskScheduleSchedulingVariabilityUnit-Field) | *string* | YES | no |
| SharedSkipCounters | *boolean* | YES | no |
| SharedLostCounters | *boolean* | YES | no |
#### Unique Keys
* Id **(primary)**

#### InducedSubTaskSchedule.**Id** (Field)
* this field represents the identity (PK) of the record

#### InducedSubTaskSchedule.**ParentTaskScheduleId** (Field)
* this field is used as foreign key to address the related 'ParentTaskSchedule'

#### InducedSubTaskSchedule.**InducedTaskScheduleId** (Field)
* this field is used as foreign key to address the related 'InducedTaskSchedule'

#### InducedSubTaskSchedule.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent ProcedureSchedule
```

#### InducedSubTaskSchedule.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### InducedSubTaskSchedule.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```

#### InducedSubTaskSchedule.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.

```

#### InducedSubTaskSchedule.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [ParentTaskSchedule](#ParentTaskSchedule-parent-of-this-InducedSubTaskSchedule) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |
| [InducedTaskSchedule](#InducedTaskSchedule-lookup-from-this-InducedSubTaskSchedule) | Lookup | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **ParentTaskSchedule** (parent of this InducedSubTaskSchedule)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [ParentTaskScheduleId](#InducedSubTaskScheduleParentTaskScheduleId-Field).
##### **InducedTaskSchedule** (lookup from this InducedSubTaskSchedule)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [InducedTaskScheduleId](#InducedSubTaskScheduleInducedTaskScheduleId-Field).




## InducedTreatmentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [Id](#InducedTreatmentTaskId-Field) **(PK)** | *guid* | YES | no |
| [TaskScheduleId](#InducedTreatmentTaskTaskScheduleId-Field) (FK) | *guid* | YES | no |
| [InducedTreatmentName](#InducedTreatmentTaskInducedTreatmentName-Field) (FK) | *string* (50) | YES | no |
| [Offset](#InducedTreatmentTaskOffset-Field) | *int32* | YES | no |
| [OffsetUnit](#InducedTreatmentTaskOffsetUnit-Field) | *string* | YES | no |
| [SchedulingVariabilityBefore](#InducedTreatmentTaskSchedulingVariabilityBefore-Field) | *string* | YES | no |
| [SchedulingVariabilityAfter](#InducedTreatmentTaskSchedulingVariabilityAfter-Field) | *string* | YES | no |
| [SchedulingVariabilityUnit](#InducedTreatmentTaskSchedulingVariabilityUnit-Field) | *string* | YES | no |
| [InducedTaskExecutionTitle](#InducedTreatmentTaskInducedTaskExecutionTitle-Field) | *string* | YES | no |
| [Skipable](#InducedTreatmentTaskSkipable-Field) | *boolean* | YES | no |
| EventOnSkip | *string* | YES | no |
| EventOnLost | *string* | YES | no |
#### Unique Keys
* Id **(primary)**

#### InducedTreatmentTask.**Id** (Field)
* this field represents the identity (PK) of the record

#### InducedTreatmentTask.**TaskScheduleId** (Field)
* this field is used as foreign key to address the related 'TaskSchedule'

#### InducedTreatmentTask.**InducedTreatmentName** (Field)
* this field is used as foreign key to address the related 'InducedTask'
* the maximum length of the content within this field is 50 characters.

#### InducedTreatmentTask.**Offset** (Field)
```
estimated scheduling time relative to the scheduling date of the parent TaskSchedule
```

#### InducedTreatmentTask.**OffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### InducedTreatmentTask.**SchedulingVariabilityBefore** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the EARLIEST possible time.
```

#### InducedTreatmentTask.**SchedulingVariabilityAfter** (Field)
```
defines an additional variability RELATIVE to the estimated scheduling time (which is calculated from the offset), in this case the LATEST possible time.
```

#### InducedTreatmentTask.**SchedulingVariabilityUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### InducedTreatmentTask.**InducedTaskExecutionTitle** (Field)
```
the title for the induced execution, like 'Measurement X', which is usually defined by the study protocol. if multiple inducements are possible (for example when using cycles), the title should to contain a placeholder (example: '{vt} - Measurement X') to prevent from duplicate execution titles.
```

#### InducedTreatmentTask.**Skipable** (Field)
```
defines, if the study protocol tolerates this execution to be 'skipped' (if not, a missed execution is treated as 'lost' and can cause the exclusion of the participant)
```


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [TaskSchedule](#TaskSchedule-parent-of-this-InducedTreatmentTask) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |
| [InducedTask](#InducedTask-lookup-from-this-InducedTreatmentTask) | Lookup | [TreatmentTask](#TreatmentTask) | 0/1 (optional) |

##### **TaskSchedule** (parent of this InducedTreatmentTask)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#InducedTreatmentTaskTaskScheduleId-Field).
##### **InducedTask** (lookup from this InducedTreatmentTask)
Target Type: [TreatmentTask](#TreatmentTask)
Addressed by: [InducedTreatmentName](#InducedTreatmentTaskInducedTreatmentName-Field).




## TaskCycleDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TaskScheduleId](#TaskCycleDefinitionTaskScheduleId-Field) **(PK)** (FK) | *guid* | YES | no |
| [ReschedulingBase](#TaskCycleDefinitionReschedulingBase-Field) | *string* | YES | no |
| [ReschedulingOffset](#TaskCycleDefinitionReschedulingOffset-Field) | *string* | YES | no |
| [ReschedulingOffsetUnit](#TaskCycleDefinitionReschedulingOffsetUnit-Field) | *string* | YES | no |
| [CycleLimit](#TaskCycleDefinitionCycleLimit-Field) | *int32* | no | no |
| SharedSkipCounters | *boolean* | YES | no |
| SharedLostCounters | *boolean* | YES | no |
#### Unique Keys
* TaskScheduleId **(primary)**

#### TaskCycleDefinition.**TaskScheduleId** (Field)
* this field represents the identity (PK) of the record
* this field is used as foreign key to address the related 'TaskSchedule'

#### TaskCycleDefinition.**ReschedulingBase** (Field)
```
1=EstimatedParent (related to the inducing time of the parent TaskSchedule) / 2=LastEstimatedInducement (related to the ESTIMATED scheduling time of the last inducement within the parent TaskSchedule) / 3=LastExecutedInducement  (related to the REAL EXECUTION time of the last inducement within the parent TaskSchedule)
```

#### TaskCycleDefinition.**ReschedulingOffset** (Field)
```
estimated scheduling time relative to the ReschedulingBase
```

#### TaskCycleDefinition.**ReschedulingOffsetUnit** (Field)
```
'h'=Hours / 'm'=Minutes / 's'=Seconds
```

#### TaskCycleDefinition.**CycleLimit** (Field)
```
number of cycles (of null for a infinite number of cycles)
```
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [TaskSchedule](#TaskSchedule-parent-of-this-TaskCycleDefinition) | Parent | [TaskSchedule](#TaskSchedule) | 0/1 (optional) |

##### **TaskSchedule** (parent of this TaskCycleDefinition)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [TaskScheduleId](#TaskCycleDefinitionTaskScheduleId-Field).




## TreatmentTask


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [TreatmentName](#TreatmentTaskTreatmentName-Field) **(PK)** | *string* (50) | YES | no |
| [StudyWorkflowName](#TreatmentTaskStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#TreatmentTaskStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [BillablePriceOnCompletedExecution](#TreatmentTaskBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| ShortDescription | *string* | YES | no |
| [TaskSpecificDocumentationUrl](#TreatmentTaskTaskSpecificDocumentationUrl-Field) | *string* | no | no |
| TreatmentDescription | *string* | YES | no |
| [ImportantNotices](#TreatmentTaskImportantNotices-Field) | *string* | no | no |
#### Unique Keys
* TreatmentName **(primary)**

#### TreatmentTask.**TreatmentName** (Field)
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.

#### TreatmentTask.**StudyWorkflowName** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### TreatmentTask.**StudyWorkflowVersion** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.

#### TreatmentTask.**BillablePriceOnCompletedExecution** (Field)
* this field is optional, so that '*null*' values are supported

#### TreatmentTask.**TaskSpecificDocumentationUrl** (Field)
* this field is optional, so that '*null*' values are supported

#### TreatmentTask.**ImportantNotices** (Field)
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [Inducements](#Inducements-refering-to-this-TreatmentTask) | Referers | [InducedTreatmentTask](#InducedTreatmentTask) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-TreatmentTask) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |

##### **Inducements** (refering to this TreatmentTask)
Target: [InducedTreatmentTask](#InducedTreatmentTask)
##### **ResearchStudy** (parent of this TreatmentTask)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#TreatmentTaskStudyWorkflowName-Field), [StudyWorkflowVersion](#TreatmentTaskStudyWorkflowVersion-Field).




## VisitProdecureDefinition


### Fields

| Name | Type | Required | Fix |
| ---- | ---- | -------- | --- |
| [VisitProdecureName](#VisitProdecureDefinitionVisitProdecureName-Field) **(PK)** | *string* (50) | YES | no |
| [StudyWorkflowName](#VisitProdecureDefinitionStudyWorkflowName-Field) (FK) | *string* (100) | YES | no |
| [StudyWorkflowVersion](#VisitProdecureDefinitionStudyWorkflowVersion-Field) (FK) | *string* (20) | YES | no |
| [RootTaskScheduleId](#VisitProdecureDefinitionRootTaskScheduleId-Field) (FK) | *guid* | no | no |
| [BillablePriceOnAbortedExecution](#VisitProdecureDefinitionBillablePriceOnAbortedExecution-Field) | *decimal* | no | no |
| [BillablePriceOnCompletedExecution](#VisitProdecureDefinitionBillablePriceOnCompletedExecution-Field) | *decimal* | no | no |
| [VisitSpecificDocumentationUrl](#VisitProdecureDefinitionVisitSpecificDocumentationUrl-Field) | *string* | no | no |
#### Unique Keys
* VisitProdecureName **(primary)**

#### VisitProdecureDefinition.**VisitProdecureName** (Field)
* this field represents the identity (PK) of the record
* the maximum length of the content within this field is 50 characters.

#### VisitProdecureDefinition.**StudyWorkflowName** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 100 characters.

#### VisitProdecureDefinition.**StudyWorkflowVersion** (Field)
* this field is used as foreign key to address the related 'ResearchStudy'
* the maximum length of the content within this field is 20 characters.

#### VisitProdecureDefinition.**RootTaskScheduleId** (Field)
```
the TaskSchedule which is representing the primary-/entry-workflow (estimated tasks) when executing this visit
```
* this field is optional, so that '*null*' values are supported
* this field is used as foreign key to address the related 'RootTaskSchedule'

#### VisitProdecureDefinition.**BillablePriceOnAbortedExecution** (Field)
* this field is optional, so that '*null*' values are supported

#### VisitProdecureDefinition.**BillablePriceOnCompletedExecution** (Field)
* this field is optional, so that '*null*' values are supported

#### VisitProdecureDefinition.**VisitSpecificDocumentationUrl** (Field)
* this field is optional, so that '*null*' values are supported


### Relations

| Navigation-Name | Role | Target-Type | Target-Multiplicity |
| --------------- | -----| ----------- | ------------------- |
| [Inducements](#Inducements-refering-to-this-VisitProdecureDefinition) | Referers | [InducedVisitProcedure](#InducedVisitProcedure) | * (multiple) |
| [ResearchStudy](#ResearchStudy-parent-of-this-VisitProdecureDefinition) | Parent | [ResearchStudyDefinition](#ResearchStudyDefinition) | 0/1 (optional) |
| [RootTaskSchedule](#RootTaskSchedule-lookup-from-this-VisitProdecureDefinition) | Lookup | [TaskSchedule](#TaskSchedule) | 1 (required) |

##### **Inducements** (refering to this VisitProdecureDefinition)
Target: [InducedVisitProcedure](#InducedVisitProcedure)
##### **ResearchStudy** (parent of this VisitProdecureDefinition)
Target Type: [ResearchStudyDefinition](#ResearchStudyDefinition)
Addressed by: [StudyWorkflowName](#VisitProdecureDefinitionStudyWorkflowName-Field), [StudyWorkflowVersion](#VisitProdecureDefinitionStudyWorkflowVersion-Field).
##### **RootTaskSchedule** (lookup from this VisitProdecureDefinition)
Target Type: [TaskSchedule](#TaskSchedule)
Addressed by: [RootTaskScheduleId](#VisitProdecureDefinitionRootTaskScheduleId-Field).
```
the TaskSchedule which is representing the primary-/entry-workflow (estimated tasks) when executing this visit
```


