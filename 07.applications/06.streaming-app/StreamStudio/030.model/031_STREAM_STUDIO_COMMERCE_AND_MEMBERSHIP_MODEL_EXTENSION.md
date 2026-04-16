# ============================================================
# STREAM STUDIO COMMERCE AND MEMBERSHIP MODEL EXTENSION
# ============================================================

status: draft
layer: model
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines marketplace, paid video, and membership-related records.

# 1. MARKETPLACE LISTING RECORDS

creator_marketplace_listing:
- creator_marketplace_listing_id
- creator_project_id
- asset_ref
- listing_status
- listing_title
- listing_summary
- cover_asset_ref
- marketplace_category_code
- sale_visibility_code
- release_at
- created_by
- created_at
- updated_at

creator_paid_video_offer:
- creator_paid_video_offer_id
- creator_marketplace_listing_id
- offer_type
- currency_code
- one_time_price_amount
- sale_start_at
- sale_end_at
- tax_policy_ref
- refund_policy_ref
- offer_status
- created_at
- updated_at

creator_access_policy_binding:
- creator_access_policy_binding_id
- asset_ref
- access_mode
- listing_ref
- membership_program_ref
- membership_tier_ref
- early_access_until
- public_release_at
- created_at
- updated_at

# 2. MEMBERSHIP PROGRAM RECORDS

creator_membership_program:
- creator_membership_program_id
- program_code
- program_status
- default_currency_code
- program_title
- program_summary
- billing_cycle_code
- created_by
- created_at
- updated_at

creator_membership_tier:
- creator_membership_tier_id
- creator_membership_program_id
- tier_code
- tier_name
- tier_level_order
- monthly_price_amount
- currency_code
- tier_status
- created_at
- updated_at

creator_membership_benefit:
- creator_membership_benefit_id
- creator_membership_tier_id
- benefit_type
- benefit_title
- benefit_summary
- benefit_status
- created_at
- updated_at

creator_membership_content_rule:
- creator_membership_content_rule_id
- asset_ref
- creator_membership_program_id
- minimum_tier_ref
- access_rule_type
- early_access_until
- fallback_public_release_at
- created_at
- updated_at

# 3. MANAGEMENT REFERENCE RECORDS

creator_membership_member_reference:
- creator_membership_member_reference_id
- creator_membership_program_id
- viewer_ref
- active_tier_ref
- membership_state
- current_period_start
- current_period_end
- created_at
- updated_at

creator_commerce_settlement_reference:
- creator_commerce_settlement_reference_id
- source_type
- source_ref
- settlement_status
- gross_amount
- fee_amount
- net_amount
- currency_code
- period_start
- period_end
- created_at
- updated_at

# 4. MODEL PRINCIPLE

These records are creator-side operational and governance records.

Canonical purchase execution, billing collection,
and entitlement fulfillment may live in downstream
commerce systems or marketplace systems,
but StreamStudio must remain able to configure
and audit the creator-side intent and rules.
