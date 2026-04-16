# ============================================================
# ESTIMATE SCREEN EXACT PAYLOAD CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes exact request / response payloads
at screen-action level for EstimateCreator.

It complements the operation-level exact payload contract.

# ============================================================
# 2. LOGIN SCREEN / STANDALONE ENTRY
# ============================================================

screen_action:
- login_screen_submit

request:
  login_id: string
  password: string
  requested_screen: string|null
  requested_mode: string|null

response_success:
  success: true
  code: LOGIN_SUCCESS
  message: Login successful
  data:
    user_id: string
    company_id: string
    workspace_id: string
    resolved_screen: string
    resolved_mode: string|null
    offline_available: boolean

response_failure:
  success: false
  code: LOGIN_FAILED
  message: Login failed
  data: null
  error:
    field: login_id|password|null
    detail: invalid credentials or unavailable auth path

# ============================================================
# 3. DEEPLINK ENTRY SCREEN
# ============================================================

screen_action:
- deeplink_entry_open

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
  code: DEEPLINK_ENTRY_READY
  message: Deeplink entry ready
  data:
    launch_type: deeplink
    resolved_screen: string
    resolved_mode: string
    estimate_id: string|null
    customer_id: string|null
    opportunity_id: string|null
    draft_id: string|null
    readonly: boolean
    login_required: false

response_failure:
  success: false
  code: DEEPLINK_ENTRY_REJECTED
  message: Deeplink entry rejected
  data:
    fallback_to_login: boolean
  error:
    field: mode|null
    detail: invalid context or no valid shared session

# ============================================================
# 4. ESTIMATE LIST SCREEN LOAD
# ============================================================

screen_action:
- estimate_list_load

request:
  filter_type: all|drafts|pending_sync|conflicts|publication_pending|publication_failed|shared|archived
  search_keyword: string|null
  page_size: integer
  page_token: string|null

response_success:
  success: true
  code: ESTIMATE_LIST_READY
  message: Estimate list loaded
  data:
    items:
      - estimate_id: string
        estimate_number: string
        title: string
        customer_name_snapshot: string
        total_amount: number
        estimate_class: string
        sync_state: string
        publication_state: string
        updated_at: string
    next_page_token: string|null

# ============================================================
# 5. ESTIMATE DETAIL SCREEN LOAD
# ============================================================

screen_action:
- estimate_detail_load

request:
  estimate_id: string

response_success:
  success: true
  code: ESTIMATE_DETAIL_READY
  message: Estimate detail loaded
  data:
    estimate:
      estimate_id: string
      estimate_number: string
      estimate_class: string
      title: string
      customer_id: string
      customer_name_snapshot: string
      customer_contact_name_snapshot: string|null
      issue_date: string
      valid_until: string|null
      subtotal_amount: number
      tax_amount: number
      total_amount: number
      estimate_status: string
      approval_state: string
      publication_state: string
      sync_state: string
      share_state: string
      current_revision_no: integer
    line_items:
      - line_item_id: string
        line_no: integer
        item_type: string
        item_code: string|null
        item_name: string
        description: string|null
        quantity: number
        unit_name: string
        unit_price: number
        discount_type: string
        discount_value: number
        tax_category: string
        tax_rate_snapshot: number
        line_subtotal: number
        line_tax_amount: number
        line_total: number
        inventory_reference_state: string
    opportunity_memo:
      memo_text: string|null
      share_state: string|null
      sync_state: string|null
    meeting_memo:
      memo_mode: string|null
      memo_text: string|null
      template_code: string|null
      is_premium_format: boolean|null
      sync_state: string|null
    qa_summary:
      open_count: integer
      pending_count: integer
      answered_count: integer
      closed_count: integer
    inventory_summary:
      freshness_state: string|null
      checked_at: string|null

# ============================================================
# 6. ESTIMATE EDITOR SAVE
# ============================================================

screen_action:
- estimate_editor_save

request:
  estimate_id: string|null
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

response_success:
  success: true
  code: ESTIMATE_EDITOR_SAVED
  message: Estimate saved
  data:
    estimate_id: string
    estimate_number: string
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    sync_state: local_only|pending_push
    updated_at: string

response_failure:
  success: false
  code: ESTIMATE_EDITOR_INVALID
  message: Estimate editor payload is invalid
  data: null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 7. OPPORTUNITY MEMO SAVE
# ============================================================

screen_action:
- opportunity_memo_save

request:
  estimate_id: string
  memo_text: string

response_success:
  success: true
  code: OPPORTUNITY_MEMO_SAVED
  message: Opportunity memo saved
  data:
    estimate_id: string
    sync_state: local_only|pending_push
    updated_at: string

# ============================================================
# 8. MEETING MEMO SAVE
# ============================================================

screen_action:
- meeting_memo_save

request:
  estimate_id: string
  memo_mode: free_form|structured
  memo_text: string|null
  template_code: string|null

response_success:
  success: true
  code: MEETING_MEMO_SAVED
  message: Meeting memo saved
  data:
    estimate_id: string
    memo_mode: free_form|structured
    is_premium_format: boolean
    sync_state: local_only|pending_push
    updated_at: string

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for structured meeting memo
  data: null
  error:
    field: memo_mode
    detail: structured mode requires premium entitlement

# ============================================================
# 9. SHARE ACTION SHEET SUBMIT
# ============================================================

screen_action:
- share_action_submit

request:
  object_type: rough_estimate|opportunity_memo|meeting_memo
  object_id: string
  target_user_id: string

response_success:
  success: true
  code: SHARE_ACTION_ACCEPTED
  message: Share action accepted
  data:
    object_type: string
    object_id: string
    target_user_id: string
    share_state: share_pending

# ============================================================
# 10. ERP PUBLICATION ACTION
# ============================================================

screen_action:
- erp_publication_submit

request:
  estimate_id: string
  revision_no: integer
  company_id: string
  payload_profile_code: string|null
  memo_summary: string|null

response_success:
  success: true
  code: ERP_PUBLICATION_SUBMITTED
  message: ERP publication submitted
  data:
    estimate_id: string
    publication_state: publication_pending
    approval_state: string

response_failure:
  success: false
  code: ERP_PUBLICATION_SUBMIT_REJECTED
  message: ERP publication submit rejected
  data: null
  error:
    field: estimate_id
    detail: estimate not publication-ready

# ============================================================
# 11. INVENTORY REFRESH ACTION
# ============================================================

screen_action:
- inventory_refresh_submit

request:
  estimate_id: string|null
  line_item_id: string|null
  item_code: string
  company_id: string|null

response_success:
  success: true
  code: INVENTORY_REFRESH_READY
  message: Inventory refresh completed
  data:
    item_code: string
    reference_status: success_fresh|success_cached|stale|failed|unknown
    available_quantity: number|null
    reserved_quantity: number|null
    inbound_quantity: number|null
    checked_at: string|null
    source_system: string|null
    is_cached: boolean

# ============================================================
# 12. PREMIUM GATE CHECK
# ============================================================

screen_action:
- premium_gate_check

request:
  target_feature: structured_meeting_memo|qa_management|estimate_templates

response_success:
  success: true
  code: PREMIUM_GATE_RESOLVED
  message: Premium gate resolved
  data:
    target_feature: string
    entitlement_state: inactive|active|grace|expired|unknown
    allowed: boolean
    upgrade_required: boolean

# ============================================================
# 13. QA CREATE SCREEN SUBMIT
# ============================================================

screen_action:
- qa_create_submit

request:
  estimate_id: string
  question_text: string
  owner_user_id: string|null
  due_date: string|null

response_success:
  success: true
  code: QA_CREATE_ACCEPTED
  message: QA create accepted
  data:
    qa_id: string
    estimate_id: string
    qa_status: open
    sync_state: local_only|pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for QA management
  data: null
  error:
    field: estimate_id
    detail: QA management is premium-gated

# ============================================================
# 14. QA UPDATE SCREEN SUBMIT
# ============================================================

screen_action:
- qa_update_submit

request:
  qa_id: string
  answer_text: string|null
  qa_status: open|pending|answered|closed
  owner_user_id: string|null
  due_date: string|null

response_success:
  success: true
  code: QA_UPDATE_ACCEPTED
  message: QA update accepted
  data:
    qa_id: string
    qa_status: string
    sync_state: local_only|pending_push

# ============================================================
# 15. TEMPLATE APPLY SCREEN SUBMIT
# ============================================================

screen_action:
- template_apply_submit

request:
  estimate_id: string
  template_id: string

response_success:
  success: true
  code: TEMPLATE_APPLY_ACCEPTED
  message: Template apply accepted
  data:
    estimate_id: string
    template_id: string
    subtotal_amount: number
    tax_amount: number
    total_amount: number
    sync_state: local_only|pending_push

response_failure:
  success: false
  code: PREMIUM_REQUIRED
  message: Premium required for this template action
  data: null
  error:
    field: template_id
    detail: template is premium-only or editing requires premium

