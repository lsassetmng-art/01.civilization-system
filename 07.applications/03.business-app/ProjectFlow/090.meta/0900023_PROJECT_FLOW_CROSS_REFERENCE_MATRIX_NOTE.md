# ============================================================
# PROJECT FLOW CROSS REFERENCE MATRIX NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact cross-reference matrix
between features,
screens,
outputs,
and supported device types.

# ============================================================
# 1. FEATURE TO SCREEN MATRIX
# ============================================================

feature_to_screen_matrix:

project_management:
- dashboard
- project_list
- project_detail

task_management:
- task_list
- task_detail

milestone_management:
- milestone
- timeline
- gantt

issue_risk_management:
- issue_risk
- customer_explanation_material

time_entry:
- time_entry
- workload

sync_and_retry:
- sync_status
- notification_center

spreadsheet_export:
- export
- customer_explanation_material

progress_report:
- report_editor
- customer_explanation_material

form_intake:
- form_intake

memo_and_decision_note:
- project_memo
- customer_explanation_material

comment_history:
- comment_history

light_automation:
- automation_rule_settings
- notification_center
- dashboard

template_and_wbs_proposal:
- template_management
- template_task_editor
- wbs_proposal_wizard
- schedule_proposal_preview

timeline_and_gantt:
- timeline
- gantt
- schedule_proposal_preview

one_page_summary:
- one_page_summary

# ============================================================
# 2. FEATURE TO OUTPUT MATRIX
# ============================================================

feature_to_output_matrix:

project_schedule_data:
- customer_facing_schedule
- one_page_summary

progress_data:
- progress_report
- one_page_summary

issue_data:
- issue_list

risk_data:
- risk_list

decision_note_data:
- decision_note

follow_up_data:
- follow_up_action_list

template_and_wbs_data:
- customer_facing_schedule
- progress_report when needed
- one_page_summary when needed

# ============================================================
# 3. OUTPUT TO DEVICE MATRIX
# ============================================================

output_to_device_matrix:

customer_facing_schedule:
- iphone
- android
- tablet
- pc

progress_report:
- iphone
- android
- tablet
- pc

issue_list:
- iphone
- android
- tablet
- pc

risk_list:
- iphone
- android
- tablet
- pc

decision_note:
- iphone
- android
- tablet
- pc

follow_up_action_list:
- iphone
- android
- tablet
- pc

one_page_summary:
- iphone
- android
- tablet
- pc

# ============================================================
# 4. CROSS-CUTTING RULE MATRIX
# ============================================================

cross_cutting_rules:

multilingual_scope_applies_to:
- UI
- customer-facing materials
- export headers
- one-page summary

read_only_scope_applies_to:
- all supported device types
- all major screens
- all generation actions
- all export actions

review_required_scope_applies_to:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow_up_action_list
- one-page summary when externally used
