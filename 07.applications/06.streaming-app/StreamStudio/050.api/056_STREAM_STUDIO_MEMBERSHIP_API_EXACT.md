# ============================================================
# STREAM STUDIO MEMBERSHIP API EXACT
# ============================================================

status: draft
layer: api-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact membership API payloads.

# ============================================================
# 1. CREATE MEMBERSHIP PROGRAM
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/membership-programs

request_body:
  program_title: string
  program_summary: string_optional
  default_currency_code: string
  billing_cycle_code: monthly
  created_by: string

response_body:
  ok: true
  data:
    membership_program:
      creator_membership_program_id: string
      program_code: string
      program_status: draft
      program_title: string
      program_summary: string_or_null
      default_currency_code: string
      billing_cycle_code: monthly
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- program_title_required
- default_currency_code_required
- billing_cycle_code_required

# ============================================================
# 2. UPDATE MEMBERSHIP PROGRAM
# ============================================================

endpoint:
  method: PATCH
  path: /api/stream-studio/membership-programs/{creator_membership_program_id}

request_body:
  program_title: string_optional
  program_summary: string_optional
  default_currency_code: string_optional
  expected_version: integer

response_body:
  ok: true
  data:
    membership_program:
      creator_membership_program_id: string
      program_title: string
      program_summary: string_or_null
      default_currency_code: string
      updated_at: iso8601
      version: integer
  meta:
    request_id: string

# ============================================================
# 3. CREATE TIER
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/membership-programs/{creator_membership_program_id}/tiers

request_body:
  tier_name: string
  tier_level_order: integer
  monthly_price_amount: number
  currency_code: string
  tier_status: draft_or_active_optional

response_body:
  ok: true
  data:
    membership_tier:
      creator_membership_tier_id: string
      creator_membership_program_id: string
      tier_code: string
      tier_name: string
      tier_level_order: integer
      monthly_price_amount: number
      currency_code: string
      tier_status: string
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- tier_name_required
- tier_level_order_positive
- monthly_price_amount_positive
- currency_code_required

# ============================================================
# 4. CREATE BENEFIT
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/membership-tiers/{creator_membership_tier_id}/benefits

request_body:
  benefit_type: content_access_or_badge_or_community_or_other
  benefit_title: string
  benefit_summary: string_optional
  benefit_status: active_or_disabled_optional

response_body:
  ok: true
  data:
    membership_benefit:
      creator_membership_benefit_id: string
      creator_membership_tier_id: string
      benefit_type: string
      benefit_title: string
      benefit_summary: string_or_null
      benefit_status: string
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 5. BIND CONTENT RULE
# ============================================================

endpoint:
  method: PUT
  path: /api/stream-studio/membership-programs/{creator_membership_program_id}/content-rules/{asset_ref}

request_body:
  access_rule_type: membership_only_or_member_early_access_then_public
  minimum_tier_ref: string_optional
  early_access_until: iso8601_optional
  fallback_public_release_at: iso8601_optional

response_body:
  ok: true
  data:
    membership_content_rule:
      creator_membership_content_rule_id: string
      asset_ref: string
      creator_membership_program_id: string
      minimum_tier_ref: string_or_null
      access_rule_type: string
      early_access_until: iso8601_or_null
      fallback_public_release_at: iso8601_or_null
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- access_rule_type_required
- minimum_tier_ref_required_when_multiple_tiers_and_membership_only
- fallback_public_release_at_required_when_member_early_access_then_public

# ============================================================
# 6. ACTIVATE MEMBERSHIP PROGRAM
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/membership-programs/{creator_membership_program_id}/activate

request_body:
  requested_by: string

response_body:
  ok: true
  data:
    membership_program:
      creator_membership_program_id: string
      program_status: active
      activated_at: iso8601
  meta:
    request_id: string

business_rule_errors:
- membership_program_not_ready
- membership_program_approval_required
- membership_tier_conflict
- membership_content_rule_conflict

# ============================================================
# 7. PAUSE MEMBERSHIP PROGRAM
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/membership-programs/{creator_membership_program_id}/pause

request_body:
  requested_by: string
  reason_note: string_optional

response_body:
  ok: true
  data:
    membership_program:
      creator_membership_program_id: string
      program_status: paused
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 8. LIST MEMBER REFERENCES
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/membership-programs/{creator_membership_program_id}/members

query_params:
  membership_state: active_or_paused_or_ended_optional
  cursor: string_optional
  limit: integer_optional

response_body:
  ok: true
  data:
    items:
      - creator_membership_member_reference_id: string
        viewer_ref: string
        active_tier_ref: string_or_null
        membership_state: string
        current_period_start: iso8601_or_null
        current_period_end: iso8601_or_null
    page:
      next_cursor: string_or_null
      limit: integer
  meta:
    request_id: string
