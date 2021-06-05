
xcopy "EDMX\BillingData\ORSCF-BillingData.Schema.json" "..\BillingData\" /d /r /y /s
copy "EDMX\BillingData\ORSCF-BillingData.md" "..\BillingData\readme.md" /Y

xcopy "EDMX\IdentityManagement\ORSCF-IdentityManagement.Schema.json" "..\IdentityManagement\" /d /r /y /s
copy "EDMX\IdentityManagement\ORSCF-IdentityManagement.md" "..\IdentityManagement\readme.md" /Y

xcopy "EDMX\StudyWorkflowDefinition\ORSCF-StudyWorkflowDefinition.Schema.json" "..\StudyWorkflowDefinition\" /d /r /y /s
copy "EDMX\StudyWorkflowDefinition\ORSCF-StudyWorkflowDefinition.md" "..\StudyWorkflowDefinition\readme.md" /Y

xcopy "EDMX\VisitData\ORSCF-VisitData.Schema.json" "..\VisitData\" /d /r /y /s
copy "EDMX\VisitData\ORSCF-VisitData.md" "..\VisitData\readme.md" /Y

