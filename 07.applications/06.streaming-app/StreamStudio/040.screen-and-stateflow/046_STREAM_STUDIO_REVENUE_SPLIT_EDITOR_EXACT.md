# ============================================================
# STREAM STUDIO REVENUE SPLIT EDITOR EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: revenue_split_editor
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of the Revenue & Split editor.

screen_goal:
Allow creators and producers to create, negotiate,
validate, and activate revenue split versions.

main_sections:
- split_header
- split_basis_summary
- party_line_editor
- fixed_fee_editor
- percentage_editor
- negotiation_log
- approval_and_activation
- settlement_reference_panel

split_header:
  fields:
    - split_code
    - split_status
    - target_asset_ref
    - currency_code
    - effective_date

split_basis_summary:
  fields:
    - revenue_basis_type
    - notes
    - approval_required_flag
    - policy_warning_summary

party_line_editor:
  fields:
    - party_ref
    - party_role_code
    - allocation_type
    - priority_order
  actions:
    - add_party
    - remove_party_if_allowed
    - reorder_party

fixed_fee_editor:
  fields:
    - fixed_fee_amount
    - fixed_fee_currency
    - payment_note

percentage_editor:
  fields:
    - percentage_rate
    - residual_policy
  validations:
    - total_percentage_within_policy
    - no_negative_values
    - duplicate_active_line_prevented

negotiation_log:
  fields:
    - message_body
    - proposed_change_json
    - logged_by
    - created_at
  actions:
    - add_log_entry
    - mark_agreed_point

approval_and_activation:
  actions:
    - submit_for_approval
    - withdraw_before_decision_if_allowed
    - activate_version
    - supersede_active_version_if_policy_allows

split_stateflow:
- draft
- awaiting_confirmation
- under_negotiation
- approval_pending
- active
- superseded
- archived

blocking_rules:
- invalid_percentage_total blocks activation
- missing_currency blocks fixed_fee_save
- approval_pending blocks direct_activation when policy requires approval
- overlapping_active_version blocks activation

mobile_policy:
- line editing becomes step form
- bulk comparison hidden by default
- negotiation log prioritized over table density
