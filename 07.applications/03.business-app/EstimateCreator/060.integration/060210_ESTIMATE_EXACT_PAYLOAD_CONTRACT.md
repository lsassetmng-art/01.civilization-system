# ============================================================
# ESTIMATE EXACT PAYLOAD CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the request / response exact payloads
for EstimateCreator integration-facing operations.

Principles:
- exact field names are fixed
- request and response are separated
- auth/session is not transported as raw credential inside business payload
- business status and sync/publication status are not collapsed
- nullability must remain explicit in implementation

# ============================================================
# 2. COMMON RESPONSE ENVELOPE
# ============================================================

Recommended common response envelope:

response_envelope:
  success: boolean
  code: string
  message: string
  data: object|null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 3. STANDALONE ENTRY CONTEXT RESOLVE
# ============================================================

operation:
- standalone_entry_context_resolve

request:
  launch_type: standalone
  requested_screen: string
  requested_mode: string|null

response_success:
  success: true
  code: ENTRY_CONTEXT_READY
  message: Entry context resolved
  data:
    launch_type: standalone
    login_required: boolean
    resolved_screen: string
    resolved_mode: string|null

response_failure:
  success: false
  code: ENTRY_CONTEXT_INVALID
  message: Unable to resolve entry context
  data: null
  error:
    field: requested_screen
    detail: unsupported or missing screen

# ============================================================
# 4. DEEPLINK ENTRY CONTEXT RESOLVE
# ============================================================

operation:
- deeplink_entry_context_resolve

request:
  source_app: string
  source_screen: string|null
  mode: string
  estimate_id: string|null
  customer_id: string|null
  opportunity_id: string|null
  draft_id: string|null
  readonly: boolean

response_success:
  success: true
  code: DEEPLINK_CONTEXT_READY
  message: Deeplink context resolved
  data:
    launch_type: deeplink
    source_app: string
    source_screen: string|null
    mode: string
    estimate_id: string|null
    customer_id: string|null
    opportunity_id: string|null
    draft_id: string|null
    readonly: boolean
    session_reuse_required: true
    login_required: false

response_failure:
  success: false
  code: DEEPLINK_CONTEXT_INVALID
  message: Deeplink context is invalid
  data: null
  error:
    field: mode
    detail: invalid mode or insufficient context

# ============================================================
# 5. SHARED SESSION RESOLVE
# ============================================================

operation:
- shared_session_resolve

request:
  launch_type: deeplink
  source_app: string
  company_id: string|null
  workspace_id: string|null

response_success:
  success: true
  code: SHARED_SESSION_VALID
  message: Shared session is valid
  data:
    session_state: active
    user_id: string
    company_id: string
    workspace_id: string
    authorization_recheck_required: true

response_failure:
  success: false
  code: SHARED_SESSION_INVALID
  message: Shared session is invalid or unavailable
  data:
    session_state: invalid
    fallback_to_login: boolean
  error:
    field: source_app
    detail: no reusable shared session

# ============================================================
# 6. ESTIMATE CREATE
# ============================================================

operation:
- create_estimate

request:
  estimate_class: rough_estimate|local_formal_estimate
  title: string
  customer_id: string
  customer_name_snapshot: string
  customer_contact_name_snapshot: string|null
  currency_code: string
  issue_date: string
  valid_until: string|null
  line_items:
    - line_no: integer
      item_type: product|service|misc
      item_code: string|null
      item_name: string
      description: string|null
      quantity: number
      unit_name: string
      unit_price: number
      discount_type: none|percent|fixed_amount
      discount_value: number
      tax_category: string
      tax_rate_snapshot: number
  opportunity_memo_text: string|null
  meeting_memo:
    memo_mode: free_form|structured
    memo_text: string|null
    template_code: string|null

response_success:
  success: true
  code: ESTIMATE_CREATED
  message: Estimate created
  data:
    estimate_id: string
    estimate_number: string
    estimate_status: draft
    approval_state: not_requested
    publication_state: not_requested
    sync_state: local_only
    share_state: private
    current_revision_no: 1
    subtotal_amount: number
    tax_amount: number
    total_amount: number

response_failure:
  success: false
  code: ESTIMATE_CREATE_INVALID
  message: Estimate create payload is invalid
  data: null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 7. ESTIMATE HEADER UPDATE
# ============================================================

operation:
- update_estimate_header

request:
  estimate_id: string
  title: string|null
  valid_until: string|null
  customer_id: string|null
  customer_name_snapshot: string|null
  customer_contact_name_snapshot: string|null
  currency_code: string|null

response_success:
  success: true
  code: ESTIMATE_UPDATED
  message: Estimate header updated
  data:
    estimate_id: string
    updated_at: string
    sync_state: pending_push

# ============================================================
# 8. ESTIMATE LINE REPLACE
# ============================================================

operation:
- replace_estimate_lines

request:
  estimate_id: string
  revision_no: integer
  line_items:
    - line_no: integer
      item_type: product|service|misc
      item_code: string|null
      item_name: string
      description: string|null
      quantity: number
      unit_name: string
      unit_price: number
      discount_type: none|percent|fixed_amount
      discount_value: number
      tax_category: string
      tax_rate_snapshot: number

response_success:
  success: true
  code: ESTIMATE_LINES_REPLACED
  message: Estimate lines replaced
  data:
    estimate_id: string
    revision_no: integer
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    updated_at: string
    sync_state: pending_push

# ============================================================
# 9. OPPORTUNITY MEMO UPDATE
# ============================================================

operation:
- update_opportunity_memo

request:
  estimate_id: string
  memo_text: string

response_success:
  success: true
  code: OPPORTUNITY_MEMO_UPDATED
  message: Opportunity memo updated
  data:
    estimate_id: string
    memo_object_type: opportunity_memo
    sync_state: pending_push
    share_state: private

# ============================================================
# 10. MEETING MEMO UPDATE
# ============================================================

operation:
- update_meeting_memo

request:
  estimate_id: string
  memo_mode: free_form|structured
  memo_text: string|null
  template_code: string|null

response_success:
  success: true
  code: MEETING_MEMO_UPDATED
  message: Meeting memo updated
  data:
    estimate_id: string
    memo_mode: free_form|structured
    is_premium_format: boolean
    sync_state: pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for structured meeting memo
  data: null
  error:
    field: memo_mode
    detail: structured mode requires premium entitlement

# ============================================================
# 11. SHARE REQUEST
# ============================================================

operation:
- request_share

request:
  object_type: rough_estimate|opportunity_memo|meeting_memo
  object_id: string
  target_user_id: string

response_success:
  success: true
  code: SHARE_REQUEST_ACCEPTED
  message: Share request accepted
  data:
    object_type: string
    object_id: string
    target_user_id: string
    share_state: share_pending

response_failure:
  success: false
  code: SHARE_TARGET_INVALID
  message: Share target is invalid
  data: null
  error:
    field: target_user_id
    detail: target not enabled or not permitted

# ============================================================
# 12. SHARE REVOKE
# ============================================================

operation:
- revoke_share

request:
  object_type: rough_estimate|opportunity_memo|meeting_memo
  object_id: string
  target_user_id: string

response_success:
  success: true
  code: SHARE_REVOKE_ACCEPTED
  message: Share revoke accepted
  data:
    object_type: string
    object_id: string
    target_user_id: string
    share_state: share_revoked

# ============================================================
# 13. ERP PUBLICATION REQUEST
# ============================================================

operation:
- request_erp_publication

request:
  estimate_id: string
  revision_no: integer
  company_id: string
  requesting_user_id: string
  estimate_class: rough_estimate
  payload_profile_code: string|null
  memo_summary: string|null

response_success:
  success: true
  code: ERP_PUBLICATION_REQUEST_ACCEPTED
  message: ERP publication request accepted
  data:
    estimate_id: string
    revision_no: integer
    publication_state: publication_pending
    approval_state: string

response_failure:
  success: false
  code: ERP_PUBLICATION_REQUEST_REJECTED
  message: ERP publication request rejected
  data: null
  error:
    field: estimate_id
    detail: estimate not publication-ready

# ============================================================
# 14. ERP PUBLICATION RESULT REFRESH
# ============================================================

operation:
- refresh_erp_publication_result

request:
  estimate_id: string

response_success:
  success: true
  code: ERP_PUBLICATION_RESULT_READY
  message: ERP publication result refreshed
  data:
    estimate_id: string
    publication_state: publication_pending|publication_completed|publication_rejected|publication_failed
    published_at: string|null
    external_reference_id: string|null

# ============================================================
# 15. INVENTORY REFERENCE REQUEST
# ============================================================

operation:
- request_inventory_reference

request:
  estimate_id: string|null
  line_item_id: string|null
  item_code: string
  company_id: string|null

response_success:
  success: true
  code: INVENTORY_REFERENCE_READY
  message: Inventory reference ready
  data:
    item_code: string
    reference_status: success_fresh|success_cached|stale|failed|unknown
    available_quantity: number|null
    reserved_quantity: number|null
    inbound_quantity: number|null
    checked_at: string|null
    source_system: string|null
    is_cached: boolean

response_failure:
  success: false
  code: INVENTORY_REFERENCE_FAILED
  message: Inventory reference failed
  data: null
  error:
    field: item_code
    detail: unable to resolve inventory reference

# ============================================================
# 16. PREMIUM ENTITLEMENT RESOLVE
# ============================================================

operation:
- resolve_premium_entitlement

request:
  user_id: string
  workspace_id: string|null
  company_id: string|null

response_success:
  success: true
  code: PREMIUM_ENTITLEMENT_READY
  message: Premium entitlement resolved
  data:
    premium_plan_code: string|null
    entitlement_state: inactive|active|grace|expired|unknown
    is_active: boolean
    grace_until: string|null
    last_verified_at: string|null

# ============================================================
# 17. TEMPLATE APPLY
# ============================================================

operation:
- apply_template

request:
  estimate_id: string
  template_id: string

response_success:
  success: true
  code: TEMPLATE_APPLIED
  message: Template applied
  data:
    estimate_id: string
    template_id: string
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    sync_state: pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for this template action
  data: null
  error:
    field: template_id
    detail: template is premium-only or editing requires premium

# ============================================================
# 18. QA CREATE
# ============================================================

operation:
- create_qa

request:
  estimate_id: string
  question_text: string
  owner_user_id: string|null
  due_date: string|null

response_success:
  success: true
  code: QA_CREATED
  message: QA created
  data:
    qa_id: string
    estimate_id: string
    qa_status: open
    sync_state: pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for QA management
  data: null
  error:
    field: estimate_id
    detail: QA management is premium-gated

