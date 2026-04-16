# ============================================================
# STREAM STUDIO MARKETPLACE LISTING API EXACT
# ============================================================

status: draft
layer: api-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact marketplace listing and paid video API payloads.

# ============================================================
# 1. CREATE MARKETPLACE LISTING DRAFT
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/marketplace-listings

request_body:
  creator_project_id: string
  asset_ref: string
  listing_title: string
  listing_summary: string_optional
  marketplace_category_code: string
  sale_visibility_code: public_or_limited
  release_at: iso8601_optional

response_body:
  ok: true
  data:
    marketplace_listing:
      creator_marketplace_listing_id: string
      creator_project_id: string
      asset_ref: string
      listing_status: draft
      listing_title: string
      marketplace_category_code: string
      sale_visibility_code: string
      release_at: iso8601_or_null
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 2. UPDATE LISTING METADATA
# ============================================================

endpoint:
  method: PATCH
  path: /api/stream-studio/marketplace-listings/{creator_marketplace_listing_id}

request_body:
  listing_title: string_optional
  listing_summary: string_optional
  cover_asset_ref: string_optional
  marketplace_category_code: string_optional
  sale_visibility_code: string_optional
  expected_version: integer

response_body:
  ok: true
  data:
    marketplace_listing:
      creator_marketplace_listing_id: string
      listing_title: string
      listing_summary: string_or_null
      cover_asset_ref: string_or_null
      marketplace_category_code: string
      sale_visibility_code: string
      updated_at: iso8601
      version: integer
  meta:
    request_id: string

# ============================================================
# 3. BIND ACCESS MODE
# ============================================================

endpoint:
  method: PUT
  path: /api/stream-studio/marketplace-listings/{creator_marketplace_listing_id}/access-policy

request_body:
  access_mode: free_or_one_time_paid_or_membership_only_or_member_early_access_then_public
  membership_program_ref: string_optional
  membership_tier_ref: string_optional
  early_access_until: iso8601_optional
  public_release_at: iso8601_optional

response_body:
  ok: true
  data:
    access_policy_binding:
      creator_access_policy_binding_id: string
      access_mode: string
      membership_program_ref: string_or_null
      membership_tier_ref: string_or_null
      early_access_until: iso8601_or_null
      public_release_at: iso8601_or_null
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- membership_program_ref_required_when_membership_mode
- public_release_at_required_when_member_early_access_then_public

# ============================================================
# 4. BIND PRICING
# ============================================================

endpoint:
  method: PUT
  path: /api/stream-studio/marketplace-listings/{creator_marketplace_listing_id}/paid-offer

request_body:
  offer_type: free_or_one_time_paid
  currency_code: string_optional
  one_time_price_amount: number_optional
  sale_start_at: iso8601_optional
  sale_end_at: iso8601_optional
  tax_policy_ref: string_optional
  refund_policy_ref: string_optional

response_body:
  ok: true
  data:
    paid_video_offer:
      creator_paid_video_offer_id: string
      creator_marketplace_listing_id: string
      offer_type: string
      currency_code: string_or_null
      one_time_price_amount: number_or_null
      sale_start_at: iso8601_or_null
      sale_end_at: iso8601_or_null
      offer_status: draft
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- currency_and_price_required_when_one_time_paid
- price_forbidden_when_free
- sale_end_after_sale_start

# ============================================================
# 5. VALIDATE LISTING
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/marketplace-listings/{creator_marketplace_listing_id}/validate

request_body:
  requested_by: string

response_body:
  ok: true
  data:
    listing_validation:
      creator_marketplace_listing_id: string
      overall_status: ready_or_blocked
      checks:
        source_asset_publish_eligible: boolean
        rights_clear: boolean
        price_valid: boolean
        membership_binding_valid: boolean
        split_configuration_valid: boolean
        category_valid: boolean
      blocking_codes: string_array
  meta:
    request_id: string

# ============================================================
# 6. LIST NOW
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/marketplace-listings/{creator_marketplace_listing_id}/list-now

request_body:
  requested_by: string

response_body:
  ok: true
  data:
    marketplace_listing:
      creator_marketplace_listing_id: string
      listing_status: listed
      listed_at: iso8601
      marketplace_listing_ref: string
  meta:
    request_id: string

business_rule_errors:
- listing_not_ready
- listing_approval_required
- listing_split_required
- listing_membership_conflict

# ============================================================
# 7. DELIST LISTING
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/marketplace-listings/{creator_marketplace_listing_id}/delist

request_body:
  requested_by: string
  reason_code: string_optional

response_body:
  ok: true
  data:
    marketplace_listing:
      creator_marketplace_listing_id: string
      listing_status: delisted
      updated_at: iso8601
  meta:
    request_id: string
