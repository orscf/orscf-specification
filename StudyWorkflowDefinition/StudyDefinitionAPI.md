# ORSCF-StudySchema Specification

#### Version 0.7.1

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in [BCP 14](https://tools.ietf.org/html/bcp14) [RFC2119](https://tools.ietf.org/html/rfc2119) [RFC8174](https://tools.ietf.org/html/rfc8174) when, and only when, they appear in all capitals, as shown here.



This document is licensed under [The Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0.html).

## Introduction

The ORSCF-StudySchema Specification defines a standard? ??????????????????????????

## Table of Contents
- [Schema](#schema)
	- [ResearchStudy Object](#ResearchStudy Object)
	- .....
- [Counters](#Counters)
- [Events](#Events)
- [Versioning & Drafts](#Versioning & Drafts)
- [Samples](#Samples)
- [Revision History](#Revision History)

## Schema

In the following description, if a field is not explicitly **REQUIRED** or described with a MUST or SHALL, it can be considered OPTIONAL.





### ResearchStudy Object

This is the root object of a StudySchema.

| Field Name          | Type                                                         | Description                                                  |
| ------------------- | :----------------------------------------------------------- | ------------------------------------------------------------ |
| invariantIdentifier | `string`                                                     | **REQUIRED**.                                                |
| officialLabel       | `string`                                                     | **REQUIRED**                                                 |
| version             | `string`   #.#.#                                             | **REQUIRED**. This value follows the rules of 'Semantic Versioning' (https://semver.org) and needs to be updated exactly and only on transition to `DraftState.Released`- If the previously `draftState` was   `DraftNewFix` then the 3. number must be increased at this time- if the previously DraftState was   'DraftNewMinor', then the 2. number must be increased, and the 3. number must   be set to 0 at this time!  - if the previously DraftState was   'DraftNewMajor', then the 1. number must be increased, and the 2.+3. number   must be set to 0 at this time! |
| versionIdentity     | String                                                       | **REQUIRED**. This   value needs to be updated exactly on:    1. initial creation  OR     2. transition away from DraftState.Released   to any other DraftState!             It MUST NOT be updated on every change   during Draft!            Format: the Author, which is starting the   new Draft        (Alphanumeric, in PascalCase without   blanks or other Symbols) +         the current UTC-Time when setting the   value (in ISO8601 format) separated by a Pipe "\|"          Sample:   "MaxMustermann\|2020-06-15T13:45:30.0000000Z". |
| draftState          | [DraftState (Enum)](#DraftState (Enum))                      | **REQUIRED**.                                                |
| schedules           | [ProcedureSchedule[\]](onenote:#Model "StudyDefinition"&section-id={1D22E56E-B658-4A99-A817-6B691DED3710}&page-id={22CD90F7-32E8-4121-87B7-F3E65243714E}&object-id={6FA47042-15EB-4681-B3CF-0DA440C79BA1}&B&base-path=https://d.docs.live.net/bb22ecdb2baccaf4/Dokumente/ORSCF/Modellierung.one)   (array) |                                                              |
| procedures          | [ProcedureDefinition[\]](onenote:#Model "StudyDefinition"&section-id={1D22E56E-B658-4A99-A817-6B691DED3710}&page-id={22CD90F7-32E8-4121-87B7-F3E65243714E}&object-id={9A6E6A1C-D257-4FE9-969B-7A723FA90615}&91&base-path=https://d.docs.live.net/bb22ecdb2baccaf4/Dokumente/ORSCF/Modellierung.one)   (array) |                                                              |
| treatmentGroups     | [TreatmentGroup[\]](onenote:#Model "StudyDefinition"&section-id={1D22E56E-B658-4A99-A817-6B691DED3710}&page-id={22CD90F7-32E8-4121-87B7-F3E65243714E}&object-id={229AAC14-4E6B-475A-92F8-ABE0355B99B7}&D&base-path=https://d.docs.live.net/bb22ecdb2baccaf4/Dokumente/ORSCF/Modellierung.one)   (array) | can be   arms                                                |





### DraftState (Enum)







## Counters









## Events



## Versioning & Drafts

The Lifecycle of a StudySchema, including drafts, needs to be tracked as secure as possible. Therefore the following three fields are defined on the [ResearchStudy Object](#ResearchStudy Object):

1. `version`: This value represents last released version, on which the current schema is based. The value follows the rules of 'Semantic Versioning' (https://semver.org) and needs to be **updated exactly and only on transition to** `DraftState.Released`
- if the previously `draftState` was `DraftNewFix`, then the **3. number must be increased** at this time. 
  
- if the previously `DraftState` was `DraftNewMinor`, then the **2. number must be increased**, and the **3. number must be set to** `0` at this time.
   - if the previously `DraftState` was `DraftNewMajor`, then the **1. number must be increased**, and the **2.+3. number must be set to** `0` at this time!
   
2. `draftState`: This value defines the majority of the current schema. If the is not `Released`, then the schema must not be used for 'productive' research operations. During the draft phase, this field is used to track the impact-level of the changes (`DraftNewMajor` or `DraftNewMinor` or `DraftNewFix`) as defined by the [DraftState (Enum)](#DraftState (Enum)).

3. `versionIdentity`: Due the fact, that the `version` field must not be updated during draft phase with its several edits, another fingerprint for the exact version is required. This value needs to be updated exactly on:

    - intial creation

   OR

- transition away from `DraftState.Released`   to any other DraftState!             It MUST NOT be updated on every change   during Draft!            Format: the Author, which is starting the   new Draft        (Alphanumeric, in PascalCase without   blanks or other Symbols) +         the current UTC-Time when setting the   value (in ISO8601 format) separated by a Pipe "\|"          Sample:   "MaxMustermann\|2020-06-15T13:45:30.0000000Z".




















## Samples








## Revision History


