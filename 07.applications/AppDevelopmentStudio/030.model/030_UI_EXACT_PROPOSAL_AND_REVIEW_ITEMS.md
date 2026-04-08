# ============================================================
# UI EXACT PROPOSAL AND REVIEW ITEMS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

screen_id: ADS-SCR-007
screen_name: review_and_approval

items:
- item_id: ADS-REV-001
  item_name: proposal_id
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-REV-002
  item_name: proposal_status
  item_type: readonly_text
  input_output_type: output
  required_flag: true

- item_id: ADS-REV-003
  item_name: risk_level
  item_type: readonly_badge
  input_output_type: output
  required_flag: true

- item_id: ADS-REV-004
  item_name: review_comment
  item_type: textarea
  input_output_type: input
  required_flag: false

actions:
- action_id: ADS-REV-ACT-001
  action_name: retain_proposal
  enable_condition: proposal_status_in_drafted_or_reviewed
  runtime_mapping: retain_proposal

- action_id: ADS-REV-ACT-002
  action_name: approve_proposal
  enable_condition: approval_allowed
  runtime_mapping: approve_proposal

- action_id: ADS-REV-ACT-003
  action_name: reject_proposal
  enable_condition: proposal_status_not_applied
  runtime_mapping: reject_proposal
