
xcopy ".\BillingData\ORSCF-BillingData.Schema.json" "..\BillingData\" /d /r /y /s
copy ".\BillingData\ORSCF-BillingData.md" "..\BillingData\readme.md" /Y

xcopy ".\IdentityManagement\ORSCF-IdentityManagement.Schema.json" "..\IdentityManagement\" /d /r /y /s
copy ".\IdentityManagement\ORSCF-IdentityManagement.md" "..\IdentityManagement\readme.md" /Y

xcopy ".\StudyWorkflowDefinition\ORSCF-StudyWorkflowDefinition.Schema.json" "..\StudyWorkflowDefinition\" /d /r /y /s
copy ".\StudyWorkflowDefinition\ORSCF-StudyWorkflowDefinition.md" "..\StudyWorkflowDefinition\readme.md" /Y

xcopy ".\VisitData\ORSCF-VisitData.Schema.json" "..\VisitData\" /d /r /y /s
copy ".\VisitData\ORSCF-VisitData.md" "..\VisitData\readme.md" /Y

