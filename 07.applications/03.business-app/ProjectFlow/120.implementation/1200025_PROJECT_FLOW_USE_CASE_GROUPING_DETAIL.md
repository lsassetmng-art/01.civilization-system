# ============================================================
# PROJECT FLOW USE CASE GROUPING DETAIL
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines use case grouping at implementation-detail level.

use_case_groups:
- project_use_cases
- task_use_cases
- milestone_use_cases
- issue_risk_use_cases
- time_entry_use_cases
- sync_use_cases
- export_report_use_cases
- form_memo_comment_use_cases
- automation_use_cases
- template_proposal_use_cases
- customer_material_use_cases
- entitlement_use_cases

project_use_cases:
- create_local_project
- update_project_header
- archive_project
- load_project_detail

task_use_cases:
- create_task
- update_task
- change_task_status
- update_task_progress
- load_task_detail

milestone_use_cases:
- create_milestone
- update_milestone
- complete_milestone

issue_risk_use_cases:
- register_issue
- update_issue
- resolve_issue
- register_risk
- update_risk
- mitigate_risk

time_entry_use_cases:
- register_time_entry
- update_time_entry
- load_time_entries

sync_use_cases:
- request_import
- request_export
- request_retry
- load_sync_status
- load_sync_errors

export_report_use_cases:
- request_spreadsheet_export
- generate_progress_report_draft
- update_progress_report_draft
- load_report_draft

form_memo_comment_use_cases:
- submit_form_request
- create_memo
- update_memo
- add_comment
- reply_comment
- load_project_context_notes

automation_use_cases:
- load_automation_rules
- update_automation_rule
- load_notifications
- acknowledge_notification

template_proposal_use_cases:
- create_template
- update_template
- duplicate_template
- generate_schedule_proposal
- adjust_schedule_proposal
- confirm_schedule_proposal

customer_material_use_cases:
- generate_customer_schedule_material
- generate_issue_list_material
- generate_risk_list_material
- generate_decision_note_material
- generate_follow_up_material

entitlement_use_cases:
- resolve_entitlement_state
- guard_mutating_action
- guard_generation_action
