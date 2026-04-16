# ============================================================
# PROJECT FLOW IMPLEMENTATION MODULE SPLIT FIXED
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes implementation module split for ProjectFlow.

principles:
- UI and domain concerns should be separable
- ERP integration boundary must be isolated
- export/report generation should not leak into all modules
- sync state and retry behavior must remain testable
- permission-aware behavior must remain enforceable

implementation_style:
Feature-oriented application split with explicit boundary modules.

# ============================================================
# 1. TOP IMPLEMENTATION GROUPS
# ============================================================

top_groups:
- app-shell
- shared-kernel
- project-domain
- task-domain
- milestone-domain
- issue-risk-domain
- time-entry-domain
- sync-domain
- export-report-domain
- integration-boundary
- ui-feature-screens
- test-support

# ============================================================
# 2. APP SHELL
# ============================================================

module_name:
projectflow-app-shell

responsibility:
- application bootstrap
- navigation root
- session and company context handoff
- top-level dependency wiring
- startup routing

must_not_own:
- ERP direct call logic
- business rule-heavy calculation
- export format generation internals

# ============================================================
# 3. SHARED KERNEL
# ============================================================

module_name:
projectflow-shared-kernel

responsibility:
- common value objects
- result/error wrapper
- clock abstraction
- id abstraction
- permission helper interfaces
- audit helper contracts
- shared enums/constants

candidate_contents:
- ProjectId
- TaskId
- SyncRequestId
- ExportJobId
- ReportDraftId
- PermissionDeniedError
- RetryabilityState
- PagedResult
- DateRange

# ============================================================
# 4. PROJECT DOMAIN
# ============================================================

module_name:
projectflow-project-domain

responsibility:
- project aggregate behavior
- project lifecycle rules
- project progress policy entry point
- project header validation
- archive/read-mostly behavior

candidate_use_cases:
- CreateLocalProject
- UpdateProjectHeader
- ArchiveProject
- RecalculateProjectDelay
- RefreshImportedProjectHeader

# ============================================================
# 5. TASK DOMAIN
# ============================================================

module_name:
projectflow-task-domain

responsibility:
- task CRUD rules
- task hierarchy
- dependency validation
- task progress update
- overdue derivation
- workload accumulation hooks

candidate_use_cases:
- CreateTask
- UpdateTask
- ChangeTaskStatus
- RecalculateTaskDelay
- AssignTaskOwner

# ============================================================
# 6. MILESTONE DOMAIN
# ============================================================

module_name:
projectflow-milestone-domain

responsibility:
- milestone lifecycle
- milestone completion rule
- milestone delay calculation
- milestone dashboard summary input

candidate_use_cases:
- CreateMilestone
- UpdateMilestone
- CompleteMilestone
- RecalculateMilestoneDelay

# ============================================================
# 7. ISSUE RISK DOMAIN
# ============================================================

module_name:
projectflow-issue-risk-domain

responsibility:
- issue management
- risk management
- severity and risk score handling
- dashboard count input generation

candidate_use_cases:
- RegisterIssue
- UpdateIssue
- ResolveIssue
- RegisterRisk
- UpdateRisk
- MitigateRisk

# ============================================================
# 8. TIME ENTRY DOMAIN
# ============================================================

module_name:
projectflow-time-entry-domain

responsibility:
- work log registration
- time actual validation
- export-state transition for time actuals
- member/project/task association validation

candidate_use_cases:
- RegisterTimeEntry
- UpdateTimeEntry
- MarkTimeEntryExportPending
- MarkTimeEntryExportCompleted

# ============================================================
# 9. SYNC DOMAIN
# ============================================================

module_name:
projectflow-sync-domain

responsibility:
- sync request creation
- sync status tracking
- retry eligibility handling
- sync log registration
- sync error detail view model source

candidate_use_cases:
- RequestImport
- RequestExport
- RequestRetry
- RefreshSyncStatus
- RecordSyncLog

must_not_own:
- ERP transport execution

# ============================================================
# 10. EXPORT REPORT DOMAIN
# ============================================================

module_name:
projectflow-export-report-domain

responsibility:
- spreadsheet export request
- export history
- report draft generation orchestration
- quantitative summary builder
- qualitative draft assembly
- report approval state handling

candidate_use_cases:
- RequestSpreadsheetExport
- GetExportHistory
- GenerateProgressReportDraft
- UpdateProgressReportDraft
- ApproveProgressReportDraft

# ============================================================
# 11. INTEGRATION BOUNDARY
# ============================================================

module_name:
projectflow-integration-boundary

responsibility:
- shared BusinessOS API client contract
- request/response mapping
- transport abstraction
- retry-safe boundary adapter
- import/export payload serializer

rules:
- ERP direct call is forbidden
- only shared BusinessOS endpoints are allowed
- boundary payload must match exact fixed contract

candidate_ports:
- SharedBusinessOsProjectFlowGateway
- SyncStatusGateway
- ReferenceMasterGateway

# ============================================================
# 12. UI FEATURE SCREENS
# ============================================================

module_name_group:
projectflow-ui-feature-screens

submodules:
- ui-dashboard
- ui-project-list
- ui-project-detail
- ui-task-list
- ui-task-detail
- ui-milestone
- ui-issue-risk
- ui-time-entry
- ui-sync-status
- ui-export
- ui-report-editor
- ui-settings

responsibility:
- screen state
- user input handling
- presenter/viewmodel state mapping
- navigation event emission

must_not_own:
- persistence rules
- integration transport details

# ============================================================
# 13. TEST SUPPORT
# ============================================================

module_name:
projectflow-test-support

responsibility:
- fake gateways
- test fixtures
- clock stub
- id generator stub
- report generation test data
- sync failure simulation helpers

# ============================================================
# 14. REPOSITORY / GATEWAY SPLIT
# ============================================================

repositories:
- ProjectRepository
- TaskRepository
- MilestoneRepository
- IssueRepository
- RiskRepository
- TimeEntryRepository
- SyncRequestRepository
- SyncLogRepository
- ExportJobRepository
- ProgressReportDraftRepository

gateways:
- SharedBusinessOsProjectFlowGateway
- SharedBusinessOsSyncGateway
- SharedBusinessOsReferenceMasterGateway
- FileExportGateway

# ============================================================
# 15. RECOMMENDED CALL FLOW
# ============================================================

recommended_call_flow:
UI
-> use case
-> domain service / aggregate
-> repository
-> integration boundary when needed
-> shared BusinessOS
-> response mapper
-> UI state

# ============================================================
# 16. EXPORT / REPORT SPECIAL RULE
# ============================================================

export_report_rules:
- xlsx/csv generation should be isolated from project/task core logic
- report draft generation should be editable after generation
- external report finalization must stay approval-aware
- file URI exposure must be permission-aware

# ============================================================
# 17. SYNC SPECIAL RULE
# ============================================================

sync_rules:
- sync request persistence happens before external execution tracking
- retry path must create new sync request record
- sync detail UI must read from sync request + sync log
- partial failure must remain visible at row/entity level

# ============================================================
# 18. IMPLEMENTATION OPEN ITEMS
# ============================================================

open_items:
- exact Android module naming
- DI framework choice
- local cache/offline strategy
- background job scheduling style
- report text generation engine detail
