# ============================================================
# FOUNDATION INDEX DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_index_plan:

streaming_principals:
- unique normalized handle strategy
  - target_meaning: business-level unique lookup
  - draft_note: final expression/index form pending Sato(DB reviewer) review

streaming_sessions:
- idx_streaming_sessions_principal_id
  - columns:
    - principal_id
- idx_streaming_sessions_lifecycle_state_scheduled_start_at
  - columns:
    - lifecycle_state
    - scheduled_start_at
- idx_streaming_sessions_scheduled_start_at
  - columns:
    - scheduled_start_at

index_strategy_note:
- start with minimal indexes only
- partial indexes are deferred unless review proves necessity
- do not overfit to speculative runtime workloads at first draft

open_review_points:
- normalized handle index implementation form
- whether lifecycle_state + scheduled_start_at composite index is sufficient
- whether an additional visibility_state support index is needed
- whether partial indexes should remain deferred
