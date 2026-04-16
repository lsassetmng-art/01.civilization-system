# ============================================================
# PROJECT FLOW SCREEN STATE EVENT DESIGN
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines screen-level state and event design direction.

screen_state_pattern:
Each screen should define:
- ui_state
- user_event
- effect or navigation_event
- view_data mapping source

common_ui_state_fields:
- is_loading
- error_message
- read_only_mode
- entitlement_state
- filter_state
- refresh_state

screen_groups:

dashboard:
state_candidates:
- summary_cards
- overdue_summary
- issue_risk_summary
- sync_summary
- quick_action_state

events:
- refresh_requested
- project_list_open_requested
- task_list_open_requested
- sync_status_open_requested
- report_editor_open_requested

project_list:
state_candidates:
- search_query
- selected_filters
- sort_state
- project_rows
- bulk_selection
- export_action_state

events:
- search_changed
- filter_changed
- sort_changed
- project_selected
- export_requested
- report_editor_requested

project_detail:
state_candidates:
- project_header
- tab_state
- overview_state
- sync_header_state
- action_guard_state

events:
- edit_requested
- tab_changed
- export_requested
- report_generate_requested
- sync_detail_requested

task_list_and_task_detail:
state_candidates:
- task_rows
- task_detail
- dependency_view
- quick_update_state

events:
- status_change_requested
- progress_update_requested
- time_entry_requested
- issue_register_requested

timeline_gantt_dashboard:
state_candidates:
- date_range
- visual_items
- dependency_view_state
- drilldown_target_state

events:
- range_changed
- item_selected
- drilldown_requested
- export_requested

form_memo_comment:
state_candidates:
- form_definition
- form_input_state
- memo_rows
- comment_rows
- reply_state

events:
- submit_requested
- memo_saved
- comment_added
- reply_added

automation:
state_candidates:
- rule_rows
- notification_rows
- notification_filter_state

events:
- rule_enabled_changed
- notification_acknowledged
- source_detail_requested

template_and_wbs_proposal:
state_candidates:
- template_rows
- selected_template
- wizard_input_state
- proposal_preview_state
- adjustment_state

events:
- template_selected
- proposal_generate_requested
- proposal_adjust_requested
- proposal_confirm_requested

customer_material:
state_candidates:
- material_type
- preview_state
- wording_edit_state
- export_state

events:
- material_type_changed
- generate_requested
- wording_updated
- export_requested
