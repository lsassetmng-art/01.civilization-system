# ============================================================
# UI EXACT READINESS RESULT ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-003
screen_name: generation_readiness_result

items:
- item_id: ADS-RDY-001
  item_name: overall_decision
  item_type: readonly_badge
  input_output_type: output
  required_flag: true
  default_value_rule: none
  enable_condition: assessment_exists
  validation_rule_ref: none
  error_display_rule: none

- item_id: ADS-RDY-002
  item_name: completeness_score
  item_type: readonly_number
  input_output_type: output
  required_flag: true
  default_value_rule: none
  enable_condition: assessment_exists
  validation_rule_ref: none
  error_display_rule: none

- item_id: ADS-RDY-003
  item_name: granularity_score
  item_type: readonly_number
  input_output_type: output
  required_flag: true
  default_value_rule: none
  enable_condition: assessment_exists
  validation_rule_ref: none
  error_display_rule: none

- item_id: ADS-RDY-004
  item_name: ambiguity_score
  item_type: readonly_number
  input_output_type: output
  required_flag: true
  default_value_rule: none
  enable_condition: assessment_exists
  validation_rule_ref: none
  error_display_rule: none

- item_id: ADS-RDY-005
  item_name: dependency_resolution_score
  item_type: readonly_number
  input_output_type: output
  required_flag: true
  default_value_rule: none
  enable_condition: assessment_exists
  validation_rule_ref: none
  error_display_rule: none

- item_id: ADS-RDY-006
  item_name: warnings
  item_type: readonly_list
  input_output_type: output
  required_flag: false
  default_value_rule: empty_list
  enable_condition: assessment_exists
  validation_rule_ref: none
  error_display_rule: none

- item_id: ADS-RDY-007
  item_name: blocking_reasons
  item_type: readonly_list
  input_output_type: output
  required_flag: false
  default_value_rule: empty_list
  enable_condition: assessment_exists
  validation_rule_ref: none
  error_display_rule: none

actions:
- action_id: ADS-RDY-ACT-001
  action_name: proceed_auto_generation
  enable_condition: decision_in_full_ready_or_full_ready_with_warning
  runtime_mapping: continue_generation_after_readiness

- action_id: ADS-RDY-ACT-002
  action_name: switch_to_manual
  enable_condition: decision_in_manual_required_or_full_ready_with_warning
  runtime_mapping: move_to_manual_completion

- action_id: ADS-RDY-ACT-003
  action_name: stop_generation
  enable_condition: decision_is_blocked
  runtime_mapping: stop_generation_due_to_readiness
