# ============================================================
# UI EXACT PROJECT PROGRESS ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-015
screen_name: project_progress

items:
- item_id: ADS-PRG-001
  item_name: progress_category
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-PRG-002
  item_name: target_artifact
  item_type: readonly_text
  input_output_type: output
  required_flag: false

- item_id: ADS-PRG-003
  item_name: target_module
  item_type: readonly_text
  input_output_type: output
  required_flag: false

- item_id: ADS-PRG-004
  item_name: phase
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-PRG-005
  item_name: status
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: not_started
  enable_condition: manual_edit_allowed
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-PRG-006
  item_name: completion_rate
  item_type: number
  input_output_type: input
  required_flag: true
  default_value_rule: 0
  enable_condition: manual_edit_allowed
  validation_rule_ref: number_0_to_100
  error_display_rule: inline

- item_id: ADS-PRG-007
  item_name: assignee
  item_type: text
  input_output_type: input
  required_flag: false
  default_value_rule: none
  enable_condition: manual_edit_allowed
  validation_rule_ref: none
  error_display_rule: inline

- item_id: ADS-PRG-008
  item_name: notes
  item_type: textarea
  input_output_type: input
  required_flag: false
  default_value_rule: none
  enable_condition: manual_edit_allowed
  validation_rule_ref: none
  error_display_rule: inline

actions:
- action_id: ADS-PRG-ACT-001
  action_name: save_project_progress
  enable_condition: required_fields_valid
  runtime_mapping: update_project_progress
