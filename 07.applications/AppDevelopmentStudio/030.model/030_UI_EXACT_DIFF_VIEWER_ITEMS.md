# ============================================================
# UI EXACT DIFF VIEWER ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-006
screen_name: diff_viewer

items:
- item_id: ADS-DIF-001
  item_name: artifact_type
  item_type: readonly_badge
  input_output_type: output
  required_flag: true

- item_id: ADS-DIF-002
  item_name: artifact_path_or_key
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-DIF-003
  item_name: change_summary
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-DIF-004
  item_name: before_content
  item_type: readonly_multiline
  input_output_type: output
  required_flag: false

- item_id: ADS-DIF-005
  item_name: after_content
  item_type: readonly_multiline
  input_output_type: output
  required_flag: false

- item_id: ADS-DIF-006
  item_name: risk_level
  item_type: readonly_badge
  input_output_type: output
  required_flag: true

actions:
- action_id: ADS-DIF-ACT-001
  action_name: mark_as_reviewed
  enable_condition: diff_loaded
  runtime_mapping: mark_proposal_reviewed

- action_id: ADS-DIF-ACT-002
  action_name: back_to_proposal_list
  enable_condition: always
  runtime_mapping: navigate_to_proposal_list
