# ============================================================
# STREAM STUDIO SPLIT AND SETTLEMENT API EXACT
# ============================================================

status: draft
layer: api-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines exact split and settlement reference API payloads.

# ============================================================
# 1. CREATE SPLIT DRAFT
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/splits

request_body:
  target_asset_ref: string
  currency_code: string
  revenue_basis_type: percentage_only_or_fixed_fee_only_or_hybrid
  created_by: string
  split_note: string_optional

response_body:
  ok: true
  data:
    split_draft:
      creator_split_draft_id: string
      split_code: string
      split_status: draft
      target_asset_ref: string
      currency_code: string
      revenue_basis_type: string
      created_at: iso8601
      updated_at: iso8601
  meta:
    request_id: string

# ============================================================
# 2. ADD OR UPDATE SPLIT LINE
# ============================================================

endpoint:
  method: PUT
  path: /api/stream-studio/splits/{creator_split_draft_id}/parties/{party_ref}

request_body:
  party_role_code: string
  percentage_rate: number_optional
  fixed_fee_amount: number_optional
  fixed_fee_currency: string_optional
  priority_order: integer_optional

response_body:
  ok: true
  data:
    split_party:
      creator_split_party_id: string
      creator_split_draft_id: string
      party_ref: string
      party_role_code: string
      percentage_rate: number_or_null
      fixed_fee_amount: number_or_null
      fixed_fee_currency: string_or_null
      priority_order: integer_or_null
      updated_at: iso8601
  meta:
    request_id: string

validation_rules:
- party_role_code_required
- at_least_one_of_percentage_or_fixed_fee_required
- fixed_fee_currency_required_when_fixed_fee_amount_present

# ============================================================
# 3. ADD NEGOTIATION MESSAGE
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/splits/{creator_split_draft_id}/negotiation-log

request_body:
  log_type: proposal_or_comment_or_agreement
  message_body: string
  proposed_change_json: object_optional
  logged_by: string

response_body:
  ok: true
  data:
    negotiation_log:
      creator_split_negotiation_log_id: string
      creator_split_draft_id: string
      log_type: string
      message_body: string
      proposed_change_json: object_or_null
      logged_by: string
      created_at: iso8601
  meta:
    request_id: string

# ============================================================
# 4. SUBMIT SPLIT APPROVAL
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/splits/{creator_split_draft_id}/submit-approval

request_body:
  requested_by: string
  approver_refs: string_array
  due_at: iso8601_optional

response_body:
  ok: true
  data:
    split_draft:
      creator_split_draft_id: string
      split_status: approval_pending
      updated_at: iso8601
    approval_request_ref: string
  meta:
    request_id: string

# ============================================================
# 5. ACTIVATE SPLIT VERSION
# ============================================================

endpoint:
  method: POST
  path: /api/stream-studio/splits/{creator_split_draft_id}/activate

request_body:
  requested_by: string

response_body:
  ok: true
  data:
    split_draft:
      creator_split_draft_id: string
      split_status: active
      activated_at: iso8601
  meta:
    request_id: string

business_rule_errors:
- split_percentage_invalid
- split_approval_required
- split_overlapping_active_version
- split_missing_required_party

# ============================================================
# 6. LIST SETTLEMENT REFERENCES
# ============================================================

endpoint:
  method: GET
  path: /api/stream-studio/settlement-references

query_params:
  source_type: publish_or_listing_or_membership_optional
  source_ref: string_optional
  period_start: iso8601_optional
  period_end: iso8601_optional
  cursor: string_optional
  limit: integer_optional

response_body:
  ok: true
  data:
    items:
      - settlement_reference_id: string
        source_type: string
        source_ref: string
        settlement_status: string
        gross_amount: number
        fee_amount: number_or_null
        net_amount: number
        currency_code: string
        period_start: iso8601
        period_end: iso8601
        updated_at: iso8601
    page:
      next_cursor: string_or_null
      limit: integer
  meta:
    request_id: string
