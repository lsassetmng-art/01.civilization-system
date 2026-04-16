# ============================================================
# ESTIMATE SYNC QUEUE EXACT CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact contract for
sync queue, replay, and conflict handling.

# ============================================================
# 2. QUEUE ENQUEUE
# ============================================================

operation:
- queue_enqueue

request:
  pending_operation_id: string
  object_type: string
  object_id: string
  operation_type: string
  payload_snapshot_json: string
  execute_after: string|null

response_success:
  success: true
  code: QUEUE_ENQUEUED
  message: Pending operation enqueued
  data:
    pending_operation_id: string
    queue_state: queued
    enqueue_at: string

# ============================================================
# 3. QUEUE REPLAY START
# ============================================================

operation:
- queue_replay_start

request:
  replay_scope: all|sync_only|share_only|publication_only
  max_batch_size: integer

response_success:
  success: true
  code: QUEUE_REPLAY_STARTED
  message: Queue replay started
  data:
    replay_scope: string
    queued_count: integer
    started_at: string

# ============================================================
# 4. QUEUE REPLAY ITEM RESULT
# ============================================================

operation:
- queue_replay_item_result

request:
  pending_operation_id: string

response_success:
  success: true
  code: QUEUE_REPLAY_ITEM_RESULT
  message: Queue replay item processed
  data:
    pending_operation_id: string
    queue_state: completed|failed|blocked
    last_attempt_at: string
    attempt_count: integer
    last_error_code: string|null

# ============================================================
# 5. SYNC PUSH RESULT
# ============================================================

operation:
- sync_push_result

request:
  object_type: string
  object_id: string

response_success:
  success: true
  code: SYNC_PUSH_RESULT_READY
  message: Sync push result ready
  data:
    object_type: string
    object_id: string
    sync_status: synced|conflict|failed
    remote_version: integer|null
    conflict_state: none|local_remote_diverged|remote_deleted|publication_overlap|share_overlap
    last_sync_at: string|null

# ============================================================
# 6. SYNC PULL RESULT
# ============================================================

operation:
- sync_pull_result

request:
  object_type: string
  object_id: string|null
  since_version: integer|null

response_success:
  success: true
  code: SYNC_PULL_RESULT_READY
  message: Sync pull result ready
  data:
    items:
      - object_type: string
        object_id: string
        remote_version: integer
        payload_snapshot_json: string
    pulled_at: string

# ============================================================
# 7. CONFLICT RESOLUTION SUBMIT
# ============================================================

operation:
- conflict_resolution_submit

request:
  object_type: string
  object_id: string
  resolution_type: local_wins_manual|remote_wins_manual|merged_manual|retry_required|blocked_until_review
  merged_payload_snapshot_json: string|null

response_success:
  success: true
  code: CONFLICT_RESOLUTION_ACCEPTED
  message: Conflict resolution accepted
  data:
    object_type: string
    object_id: string
    sync_status: pending_push|synced|blocked
    conflict_state: none|local_remote_diverged|remote_deleted|publication_overlap|share_overlap

