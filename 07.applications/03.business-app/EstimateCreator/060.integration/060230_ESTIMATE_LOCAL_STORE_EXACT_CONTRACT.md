# ============================================================
# ESTIMATE LOCAL STORE EXACT CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact local-store contracts
for EstimateCreator offline-capable persistence.

It defines canonical locally persisted object shapes for:

- estimate header
- estimate lines
- opportunity memo
- meeting memo
- sync state
- pending operation
- launch context
- inventory cache
- premium entitlement cache

# ============================================================
# 2. LOCAL ESTIMATE RECORD
# ============================================================

local_object:
- local_estimate_record

shape:
  estimate_id: string
  workspace_id: string
  company_id: string
  estimate_number: string|null
  estimate_class: rough_estimate|local_formal_estimate
  title: string
  customer_id: string
  customer_name_snapshot: string
  customer_contact_name_snapshot: string|null
  currency_code: string
  issue_date: string
  valid_until: string|null
  subtotal_amount: number
  tax_amount: number
  total_amount: number
  estimate_status: draft|review_ready|publication_ready|archived
  approval_state: not_required|not_requested|approval_pending|approved|rejected
  publication_state: not_requested|publication_prepared|publication_pending|publication_completed|publication_rejected|publication_failed
  sync_state: local_only|pending_push|synced|conflict|failed
  share_state: private|share_pending|shared_in_app|share_revoked
  current_revision_no: integer
  is_local_formal_use: boolean
  created_by: string
  created_at: string
  updated_by: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 3. LOCAL ESTIMATE LINE ITEM
# ============================================================

local_object:
- local_estimate_line_item

shape:
  line_item_id: string
  estimate_id: string
  revision_no: integer
  line_no: integer
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
  line_subtotal: number
  line_tax_amount: number
  line_total: number
  inventory_reference_state: none|cached|fresh|stale|failed
  inventory_reference_value: number|null
  sort_order: integer
  created_at: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 4. LOCAL OPPORTUNITY MEMO
# ============================================================

local_object:
- local_opportunity_memo

shape:
  opportunity_memo_id: string
  estimate_id: string
  customer_id: string
  memo_text: string
  share_state: private|share_pending|shared_in_app|share_revoked
  sync_state: local_only|pending_push|synced|conflict|failed
  created_by: string
  created_at: string
  updated_by: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 5. LOCAL MEETING MEMO
# ============================================================

local_object:
- local_meeting_memo

shape:
  meeting_memo_id: string
  estimate_id: string
  memo_mode: free_form|structured
  memo_text: string|null
  template_code: string|null
  is_premium_format: boolean
  share_state: private|share_pending|shared_in_app|share_revoked
  sync_state: local_only|pending_push|synced|conflict|failed
  created_by: string
  created_at: string
  updated_by: string
  updated_at: string
  is_deleted: boolean

# ============================================================
# 6. LOCAL SYNC STATE
# ============================================================

local_object:
- local_sync_state

shape:
  sync_state_id: string
  object_type: estimate_record|estimate_line_item|opportunity_memo|meeting_memo|qa_record|template_record
  object_id: string
  local_version: integer
  remote_version: integer|null
  sync_status: local_only|pending_push|synced|conflict|failed
  last_sync_at: string|null
  last_sync_result: string|null
  conflict_state: none|local_remote_diverged|remote_deleted|publication_overlap|share_overlap
  pending_operation_count: integer
  updated_at: string

# ============================================================
# 7. LOCAL PENDING OPERATION
# ============================================================

local_object:
- local_pending_operation

shape:
  pending_operation_id: string
  object_type: estimate_record|estimate_line_item|opportunity_memo|meeting_memo|qa_record|template_record|share_request|publication_request|inventory_reference_request
  object_id: string
  operation_type: sync_push|sync_pull|share_request|share_revoke|publication_prepare|publication_request|memo_update|inventory_reference_request|premium_gate_refresh
  payload_snapshot_json: string
  queue_state: queued|running|completed|failed|blocked
  enqueue_at: string
  execute_after: string|null
  last_attempt_at: string|null
  attempt_count: integer
  last_error_code: string|null

# ============================================================
# 8. LOCAL LAUNCH CONTEXT
# ============================================================

local_object:
- local_launch_context

shape:
  launch_context_id: string
  launch_type: standalone|deeplink
  source_app: string|null
  source_screen: string|null
  launch_mode: string|null
  estimate_id: string|null
  customer_id: string|null
  opportunity_id: string|null
  draft_id: string|null
  readonly: boolean
  received_at: string

# ============================================================
# 9. LOCAL INVENTORY CACHE
# ============================================================

local_object:
- local_inventory_cache

shape:
  inventory_cache_id: string
  estimate_id: string|null
  line_item_id: string|null
  item_code: string
  reference_status: success_fresh|success_cached|stale|failed|unknown
  available_quantity: number|null
  reserved_quantity: number|null
  inbound_quantity: number|null
  checked_at: string|null
  source_system: string|null
  is_cached: boolean
  cache_expire_at: string|null

# ============================================================
# 10. LOCAL PREMIUM ENTITLEMENT CACHE
# ============================================================

local_object:
- local_premium_entitlement_cache

shape:
  premium_state_id: string
  owner_scope_type: user|workspace|application
  owner_scope_id: string
  premium_plan_code: string|null
  entitlement_state: inactive|active|grace|expired|unknown
  is_active: boolean
  activated_at: string|null
  expired_at: string|null
  grace_until: string|null
  last_verified_at: string|null
  source_of_truth: string|null

# ============================================================
# 11. STORAGE RULE
# ============================================================

All local objects must preserve exact field names and exact state values.

Local persistence must not:
- omit required nullable fields
- collapse state values
- replace publication state with sync state
- replace entitlement state with generic boolean only

