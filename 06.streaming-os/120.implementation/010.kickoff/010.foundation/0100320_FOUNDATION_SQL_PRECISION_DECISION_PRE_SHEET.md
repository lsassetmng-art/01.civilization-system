# ============================================================
# FOUNDATION SQL PRECISION DECISION PRE-SHEET
# ============================================================

status: canonical-pre-sheet
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Prepares the decision sheet for SQL-precision review of K1 foundation.

review_role_note:
- Sato(DB reviewer) is required when SQL phase starts

principal_decisions_to_close:
- exact SQL type for principal_id
- exact handle type/length
- exact case-sensitivity rule for handle uniqueness
- exact default/nullability behavior for followable_flag
- exact check-constraint implementation for principal_type
- exact check-constraint implementation for ownership_type
- exact check-constraint implementation for visibility_state
- exact check-constraint implementation for verification_state

session_decisions_to_close:
- exact SQL type for session_id
- exact SQL type for principal_id FK
- exact title and description type strategy
- exact timestamp type for scheduled_start_at
- exact timestamp type for actual_start_at
- exact timestamp type for actual_end_at
- exact default behavior for publish_ready_flag
- exact default behavior for governance_block_flag
- exact check-constraint implementation for session_kind
- exact check-constraint implementation for lifecycle_state
- exact check-constraint implementation for visibility_state
- exact check-constraint implementation for monetization_mode
- exact check-constraint implementation for age_gate_level

constraint_and_index_decisions_to_close:
- final global unique constraint strategy for handle
- final FK action for streaming_sessions.principal_id
- minimal index set for principal lookup
- minimal index set for session lifecycle queries
- minimal index set for scheduled_start_at queries
- partial index deferral vs immediate introduction

note:
This sheet prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
