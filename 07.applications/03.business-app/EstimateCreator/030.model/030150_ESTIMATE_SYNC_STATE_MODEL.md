# ============================================================
# ESTIMATE SYNC STATE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_sync_state stores synchronization status
for a local business object.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- sync_state_id
- object_type
- object_id
- local_version
- remote_version
- sync_status
- last_sync_at
- last_sync_result
- conflict_state
- pending_operation_count
- updated_at

# ============================================================
# 3. OBJECT TYPES
# ============================================================

Representative object_type values:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- qa_record
- template_record

# ============================================================
# 4. SYNC STATUS
# ============================================================

Representative sync_status values:

- local_only
- pending_push
- synced
- conflict
- failed

# ============================================================
# 5. CONFLICT STATE
# ============================================================

Representative conflict_state values:

- none
- local_remote_diverged
- remote_deleted
- publication_overlap
- share_overlap

