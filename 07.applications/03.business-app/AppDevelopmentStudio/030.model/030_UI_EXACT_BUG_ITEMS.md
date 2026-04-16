# ============================================================
# UI EXACT BUG ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-011
screen_name: bug_detail

items:
- item_id: ADS-BUG-001
  item_name: title
  item_type: text
  input_output_type: input
  required_flag: true

- item_id: ADS-BUG-002
  item_name: status
  item_type: select
  input_output_type: input
  required_flag: true

- item_id: ADS-BUG-003
  item_name: priority
  item_type: select
  input_output_type: input
  required_flag: true

- item_id: ADS-BUG-004
  item_name: severity
  item_type: select
  input_output_type: input
  required_flag: true

- item_id: ADS-BUG-005
  item_name: reproduction_steps
  item_type: textarea
  input_output_type: input
  required_flag: false

- item_id: ADS-BUG-006
  item_name: expected_result
  item_type: textarea
  input_output_type: input
  required_flag: false

- item_id: ADS-BUG-007
  item_name: actual_result
  item_type: textarea
  input_output_type: input
  required_flag: false

actions:
- action_id: ADS-BUG-ACT-001
  action_name: save_bug
  enable_condition: title_and_status_valid
  runtime_mapping: save_bug_record
