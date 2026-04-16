# ============================================================
# STREAM STUDIO MARKETPLACE LISTING EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: marketplace_listing
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of Civilization Marketplace listing management.

screen_goal:
Allow creators to convert a published or publish-ready asset
into a Civilization Marketplace listing with a clear access mode.

main_sections:
- listing_header
- listing_content_binding
- access_mode_setting
- price_setting
- release_setting
- membership_binding
- validation_summary
- listing_execution
- listing_history

listing_header:
  fields:
    - listing_title
    - listing_summary
    - cover_asset
    - category
    - creator_brand_summary

listing_content_binding:
  fields:
    - source_asset_ref
    - source_publish_status
    - subtitle_package_summary
    - thumbnail_summary

access_mode_setting:
  values:
    - free
    - one_time_paid
    - membership_only
    - member_early_access_then_public
    - reserved_bundle
    - reserved_rental

price_setting:
  fields:
    - currency_code
    - one_time_price_amount
    - sale_start_at
    - sale_end_at
  rules:
    - price_required_for_one_time_paid
    - price_forbidden_for_free_mode
    - price_forbidden_for_pure_membership_only_mode

release_setting:
  fields:
    - release_at
    - public_release_at
    - early_access_until
  rules:
    - public_release_at_required_for_member_early_access_then_public
    - early_access_until_must_be_before_public_release_at

membership_binding:
  fields:
    - membership_program_ref
    - minimum_tier_ref
  rules:
    - membership_program_required_for_membership_modes
    - minimum_tier_optional_if_single_tier_program

validation_summary:
  checks:
    - source_asset_is_publish_eligible
    - rights_clear
    - price_valid
    - currency_valid
    - membership_binding_valid
    - split_rule_present_if_required
    - marketplace_category_valid

listing_execution_actions:
- save_listing_draft
- validate_listing
- submit_for_listing_review
- list_now
- schedule_listing
- delist
- clone_as_new_offer

listing_stateflow:
- draft
- validation_pending
- approval_pending
- ready
- listed
- delisted
- blocked
- archived

hard_blocks:
- asset_not_publish_ready
- rights_unresolved
- invalid_price
- invalid_membership_binding
- missing_required_split_configuration
- policy_rejected_category
