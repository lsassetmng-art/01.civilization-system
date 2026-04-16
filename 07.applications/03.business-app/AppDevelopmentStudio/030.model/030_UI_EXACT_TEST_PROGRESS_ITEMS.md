# ============================================================
# UI EXACT TEST PROGRESS ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-014
screen_name: test_progress

items:
- item_id: ADS-TST-001
  item_name: test_phase
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-TST-002
  item_name: target_function
  item_type: readonly_text
  input_output_type: output
  required_flag: false

- item_id: ADS-TST-003
  item_name: target_screen
  item_type: readonly_text
  input_output_type: output
  required_flag: false

- item_id: ADS-TST-004
  item_name: execution_status
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: not_started
  enable_condition: manual_edit_allowed
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-TST-005
  item_name: result_status
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: not_run
  enable_condition: manual_edit_allowed
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-TST-006
  item_name: assignee
  item_type: text
  input_output_type: input
  required_flag: false
  default_value_rule: none
  enable_condition: manual_edit_allowed
  validation_rule_ref: none
  error_display_rule: inline

- item_id: ADS-TST-007
  item_name: related_bug_id
  item_type: select
  input_output_type: input
  required_flag: false
  default_value_rule: none
  enable_condition: manual_edit_allowed
  validation_rule_ref: none
  error_display_rule: inline

- item_id: ADS-TST-008
  item_name: notes
  item_type: textarea
  input_output_type: input
  required_flag: false
  default_value_rule: none
  enable_condition: manual_edit_allowed
  validation_rule_ref: none
  error_display_rule: inline

- item_id: ADS-TST-009
  item_name: manual_update_reason
  item_type: textarea
  input_output_type: input
  required_flag: false
  default_value_rule: none
  enable_condition: manual_edit_allowed
  validation_rule_ref: none
  error_display_rule: inline

actions:
- action_id: ADS-TST-ACT-001
  action_name: save_test_progress
  enable_condition: required_fields_valid
  runtime_mapping: update_test_progress
