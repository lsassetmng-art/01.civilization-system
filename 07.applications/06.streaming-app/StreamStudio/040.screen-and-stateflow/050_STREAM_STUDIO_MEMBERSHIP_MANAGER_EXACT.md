# ============================================================
# STREAM STUDIO MEMBERSHIP MANAGER EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: membership_manager
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of membership program management.

screen_goal:
Allow creators to manage membership programs, tiers,
benefits, and members-only content rules.

main_sections:
- program_header
- tier_list
- tier_editor
- benefit_editor
- content_rule_panel
- active_member_reference_panel
- pause_and_end_controls
- settlement_reference_panel

program_header:
  fields:
    - program_title
    - program_summary
    - default_currency_code
    - billing_cycle_code
    - program_status

tier_list:
  row_fields:
    - tier_name
    - tier_level_order
    - monthly_price_amount
    - currency_code
    - tier_status
    - benefit_count

tier_editor:
  fields:
    - tier_name
    - tier_level_order
    - monthly_price_amount
    - currency_code
    - tier_status
  rules:
    - tier_name_required
    - tier_level_order_unique_within_program
    - positive_price_required_for_paid_tier

benefit_editor:
  fields:
    - benefit_type
    - benefit_title
    - benefit_summary
    - benefit_status
  actions:
    - add_benefit
    - edit_benefit
    - disable_benefit

content_rule_panel:
  fields:
    - asset_ref
    - access_rule_type
    - minimum_tier_ref
    - early_access_until
    - fallback_public_release_at
  rules:
    - minimum_tier_required_when_multiple_tiers_exist
    - fallback_public_release_optional
    - asset_binding_must_not_conflict_with_paid_video_offer_without_explicit_override

active_member_reference_panel:
  shows:
    - active_member_count
    - tier_distribution_summary
    - churn_reference_summary
    - latest_period_reference

pause_and_end_controls:
  actions:
    - activate_program
    - pause_program
    - resume_program
    - end_program
  rules:
    - pause_preserves_history
    - end_prevents_new_join
    - end_does_not_silently_delete_rules

membership_stateflow:
- draft
- review_pending
- active
- paused
- ended
- archived

hard_blocks:
- duplicate_tier_order
- invalid_currency
- conflicting_content_rule
- missing_benefit_or_empty_program_if_policy_blocks_activation
- unresolved_rights_for_member_only_asset
