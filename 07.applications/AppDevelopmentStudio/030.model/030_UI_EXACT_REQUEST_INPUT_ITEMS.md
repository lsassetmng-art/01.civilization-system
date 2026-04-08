# ============================================================
# UI EXACT REQUEST INPUT ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-001
screen_name: request_input

items:
- item_id: ADS-REQ-001
  item_name: request_title
  item_type: text
  input_output_type: input
  required_flag: true
  default_value_rule: none
  enable_condition: always
  validation_rule_ref: non_empty
  error_display_rule: inline

- item_id: ADS-REQ-002
  item_name: request_summary
  item_type: textarea
  input_output_type: input
  required_flag: false
  default_value_rule: none
  enable_condition: always
  validation_rule_ref: none
  error_display_rule: inline

- item_id: ADS-REQ-003
  item_name: target_project
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: last_used_if_exists
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-REQ-004
  item_name: input_mode
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: standard_template
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-REQ-005
  item_name: generation_mode
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: partial
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-REQ-006
  item_name: target_environment
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: termux
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-REQ-007
  item_name: target_languages
  item_type: multiselect
  input_output_type: input
  required_flag: true
  default_value_rule: java
  enable_condition: always
  validation_rule_ref: at_least_one
  error_display_rule: inline

- item_id: ADS-REQ-008
  item_name: review_mode
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: optional
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-REQ-009
  item_name: approval_mode
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: mandatory
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-REQ-010
  item_name: git_mode
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: none
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

- item_id: ADS-REQ-011
  item_name: build_mode
  item_type: select
  input_output_type: input
  required_flag: true
  default_value_rule: if_available
  enable_condition: always
  validation_rule_ref: selected_required
  error_display_rule: inline

actions:
- action_id: ADS-REQ-ACT-001
  action_name: create_request
  enable_condition: all_required_valid
  runtime_mapping: create_development_request
