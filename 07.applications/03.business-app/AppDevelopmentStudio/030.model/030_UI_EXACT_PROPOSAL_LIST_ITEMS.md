# ============================================================
# UI EXACT PROPOSAL LIST ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-005
screen_name: proposal_list

items:
- item_id: ADS-PRL-001
  item_name: proposal_id
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-PRL-002
  item_name: proposal_type
  item_type: readonly_badge
  input_output_type: output
  required_flag: true

- item_id: ADS-PRL-003
  item_name: proposal_title
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-PRL-004
  item_name: proposal_status
  item_type: readonly_badge
  input_output_type: output
  required_flag: true

- item_id: ADS-PRL-005
  item_name: risk_level
  item_type: readonly_badge
  input_output_type: output
  required_flag: true

- item_id: ADS-PRL-006
  item_name: generated_at
  item_type: readonly_datetime
  input_output_type: output
  required_flag: true

- item_id: ADS-PRL-007
  item_name: review_requirement
  item_type: readonly_text
  input_output_type: output
  required_flag: false

- item_id: ADS-PRL-008
  item_name: approval_requirement
  item_type: readonly_text
  input_output_type: output
  required_flag: false

filters:
- filter_id: ADS-PRL-FLT-001
  filter_name: proposal_status
  filter_type: select

- filter_id: ADS-PRL-FLT-002
  filter_name: proposal_type
  filter_type: select

- filter_id: ADS-PRL-FLT-003
  filter_name: risk_level
  filter_type: select

actions:
- action_id: ADS-PRL-ACT-001
  action_name: open_diff_view
  enable_condition: selected_proposal_exists
  runtime_mapping: open_proposal_diff

- action_id: ADS-PRL-ACT-002
  action_name: open_review_view
  enable_condition: selected_proposal_exists
  runtime_mapping: open_review_and_approval
