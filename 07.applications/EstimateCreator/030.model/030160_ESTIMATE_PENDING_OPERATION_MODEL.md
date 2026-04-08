# ============================================================
# ESTIMATE PENDING OPERATION MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_pending_operation stores queued work
prepared locally for later online execution.

This model is critical for offline-first behavior.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- pending_operation_id
- object_type
- object_id
- operation_type
- payload_snapshot
- queue_state
- enqueue_at
- execute_after
- last_attempt_at
- attempt_count
- last_error_code

# ============================================================
# 3. OPERATION TYPES
# ============================================================

Representative operation_type values:

- sync_push
- sync_pull
- share_request
- share_revoke
- publication_prepare
- publication_request
- memo_update
- inventory_reference_request

# ============================================================
# 4. QUEUE STATE
# ============================================================

Representative queue_state values:

- queued
- running
- completed
- failed
- blocked

# ============================================================
# 5. PAYLOAD SNAPSHOT RULE
# ============================================================

payload_snapshot must preserve the intended operation data
needed for later execution or review.

It should be sufficient for deterministic retry behavior
within policy bounds.

