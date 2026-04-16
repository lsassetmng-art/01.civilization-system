# ============================================================
# PROJECT FLOW HANDOFF NOTE
# ============================================================

status: canonical-handoff
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a handoff summary for continuing ProjectFlow work
in another chat or another implementation phase.

# ============================================================
# 1. APPLICATION IDENTITY
# ============================================================

application_name:
ProjectFlow

application_role:
ProjectFlow is a project execution front application
for daily operational use.

core_value:
- small and easy to use
- customer-usable
- smartphone and PC capable
- same functional capability on both device types
- ERP cooperation through shared BusinessOS
- spreadsheet exportable
- human-editable progress report generation

# ============================================================
# 2. FIXED POSITIONING
# ============================================================

positioning:
ProjectFlow is not the ERP source of truth.
It is the field operation front for project execution.

shared_businessos_rule:
ERP integration is not direct application-local integration.
It is a shared BusinessOS-controlled integration path.

source_of_truth_split:

erp_truth:
- official project code
- customer
- contract amount
- formal budget
- accounting actual cost
- billing and sales
- formal organization references

projectflow_truth:
- task execution
- issue and risk
- milestone operation
- work log
- operational comments
- daily progress visibility
- report drafts
- export history

# ============================================================
# 3. COMMERCIAL MODEL
# ============================================================

commercial_model:
- provision_style: pre-installed application
- subscription_style: monthly-use application
- monthly_price_jpy: 900
- initial_trial_period_days: 7

entitlement_states:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

unpaid_read_only_summary:
view is allowed,
mutation and generation are blocked.

blocked_in_unpaid_read_only:
- create
- edit
- archive
- spreadsheet generation
- report draft generation
- report draft update
- ERP import request
- ERP export request
- sync retry

ui_rule:
Blocked actions remain visible but guarded.
Silent hide is forbidden for major actions.

# ============================================================
# 4. DEVICE RULE
# ============================================================

device_rule:
ProjectFlow must provide the same functional capability
on smartphone and PC.

allowed_difference:
- layout
- density
- navigation placement
- panel arrangement
- touch vs pointer optimization

forbidden_difference:
- feature availability gap by device

# ============================================================
# 5. MAJOR FUNCTIONAL DOMAINS
# ============================================================

major_domains:
- project management
- task management
- milestone management
- issue and risk management
- time entry
- sync status and retry
- spreadsheet export
- progress report draft generation
- entitlement/read-only control

# ============================================================
# 6. MAIN SCREENS
# ============================================================

screens:
- dashboard
- project_list
- project_detail
- task_list
- task_detail
- milestone
- issue_risk
- time_entry
- workload
- sync_status
- export
- report_editor
- settings

# ============================================================
# 7. MAIN USER JOURNEYS
# ============================================================

main_user_journeys:
- daily manager check
- member daily task update
- customer explanation preparation
- sync failure review
- unpaid read-only browsing

# ============================================================
# 8. DATA / MODEL SUMMARY
# ============================================================

logical_models:
- project
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_sync_request
- project_sync_log
- project_export_job
- project_progress_report_draft

physical_tables:
- pf_project
- pf_project_task
- pf_project_milestone
- pf_project_issue
- pf_project_risk
- pf_project_time_entry
- pf_sync_request
- pf_sync_log
- pf_export_job
- pf_progress_report_draft

# ============================================================
# 9. API / BOUNDARY SUMMARY
# ============================================================

shared_businessos_boundary_requests:
- request_project_import
- request_project_export
- request_sync_retry
- get_sync_status
- get_sync_error_detail

local_application_requests:
- request_spreadsheet_export
- request_progress_report_draft_generation
- update_progress_report_draft
- get_report_draft

important_rule:
ERP direct call from ProjectFlow is forbidden.

# ============================================================
# 10. OUTPUT RULE
# ============================================================

spreadsheet_output:
- xlsx
- csv

output_principles:
- snapshot based
- permission aware
- masking aware
- customer explanation friendly

report_output_principles:
- quantitative + qualitative
- auto-generated output is draft only
- human editing is mandatory before external use
- approval-aware flow is required

# ============================================================
# 11. IMPLEMENTATION SPLIT SUMMARY
# ============================================================

implementation_groups:
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
# 12. COMMON COMPONENT EXTRACTION RULE
# ============================================================

common_component_rule:
Common component ledger registration is handled in a separate chat.

this_chat_rule:
This chat may identify additive common component candidates only.
Ledger files themselves must not be updated here.

# ============================================================
# 13. MAIN OPEN ITEMS
# ============================================================

open_items:
- exact Android module naming
- DI framework choice
- local cache/offline strategy
- background job scheduling style
- final schema name confirmation
- final enum constraint implementation style
- RLS policy detail
- trigger design for updated_at
- materialized summary necessity review

# ============================================================
# 14. NEXT RECOMMENDED STEP
# ============================================================

recommended_next_step:
Move to implementation-prep detail,
such as:
- exact screen field layout
- exact DB DDL
- exact Android module naming
- sync/error UI wire detail
- export/report template detail
