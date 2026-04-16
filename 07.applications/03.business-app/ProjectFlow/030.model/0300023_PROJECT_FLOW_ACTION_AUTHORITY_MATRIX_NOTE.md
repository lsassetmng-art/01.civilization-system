# ============================================================
# PROJECT FLOW ACTION AUTHORITY MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major actions to authority categories.

action_authority_matrix:

view_dashboard:
- category: always_viewable

view_project_list:
- category: always_viewable

view_project_detail:
- category: always_viewable

create_project:
- category: blocked_in_read_only

edit_project_local_fields:
- category: locally_executable_if_permitted

archive_project:
- category: blocked_in_read_only

view_task_list:
- category: always_viewable

create_task:
- category: blocked_in_read_only

edit_task:
- category: locally_executable_if_permitted

change_task_status:
- category: locally_executable_if_permitted

register_time_entry:
- category: blocked_in_read_only

create_milestone:
- category: blocked_in_read_only

complete_milestone:
- category: locally_executable_if_permitted

register_issue:
- category: blocked_in_read_only

register_risk:
- category: blocked_in_read_only

edit_issue_or_risk:
- category: locally_executable_if_permitted

request_erp_import:
- category: mediated_boundary_action

request_erp_export:
- category: mediated_boundary_action

request_sync_retry:
- category: mediated_boundary_action

view_sync_status:
- category: always_viewable

generate_xlsx:
- category: blocked_in_read_only

generate_csv:
- category: blocked_in_read_only

generate_progress_report_draft:
- category: blocked_in_read_only

edit_progress_report_draft:
- category: locally_executable_if_permitted

export_customer_facing_schedule:
- category: review_required_before_external_use

export_progress_report:
- category: review_required_before_external_use

export_issue_list:
- category: review_required_before_external_use

export_risk_list:
- category: review_required_before_external_use

export_decision_note:
- category: review_required_before_external_use

export_follow_up_action_list:
- category: review_required_before_external_use

create_template:
- category: blocked_in_read_only

edit_template:
- category: locally_executable_if_permitted

generate_schedule_proposal:
- category: blocked_in_read_only

adjust_schedule_proposal:
- category: locally_executable_if_permitted

confirm_schedule_proposal:
- category: locally_executable_if_permitted

create_memo:
- category: blocked_in_read_only

edit_memo:
- category: locally_executable_if_permitted

add_comment:
- category: blocked_in_read_only

edit_automation_rule:
- category: locally_executable_if_permitted

view_notification_center:
- category: always_viewable
