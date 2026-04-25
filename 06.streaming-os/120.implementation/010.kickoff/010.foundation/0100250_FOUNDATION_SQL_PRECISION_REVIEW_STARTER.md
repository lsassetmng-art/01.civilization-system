# ============================================================
# FOUNDATION SQL PRECISION REVIEW STARTER
# ============================================================

status: canonical-review-starter
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Defines the SQL-precision review starter list for K1 foundation.

review_role_note:
- Sato(DB reviewer) participation is required when SQL phase starts

review_scope:
- streaming_principals
- streaming_sessions

sql_precision_items:

principal_table:
- decide exact type for principal_id
- decide exact type and length for handle
- decide exact type and length for display_name
- decide exact type strategy for bio
- decide case-sensitivity strategy for handle uniqueness
- decide nullable/default strategy for followable_flag
- decide exact check set implementation for principal_type
- decide exact check set implementation for ownership_type
- decide exact check set implementation for visibility_state
- decide exact check set implementation for verification_state

session_table:
- decide exact type for session_id
- decide exact type for principal_id FK
- decide exact type and length for title
- decide exact type strategy for description
- decide exact timestamp type for scheduled_start_at
- decide exact timestamp type for actual_start_at
- decide exact timestamp type for actual_end_at
- decide default strategy for publish_ready_flag
- decide default strategy for governance_block_flag
- decide exact check set implementation for session_kind
- decide exact check set implementation for lifecycle_state
- decide exact check set implementation for visibility_state
- decide exact check set implementation for monetization_mode
- decide exact check set implementation for age_gate_level

constraint_and_index_items:
- confirm global unique constraint strategy for handle
- confirm principal_id FK action for streaming_sessions
- confirm minimal index set for principal lookup
- confirm minimal index set for session lifecycle queries
- confirm minimal index set for scheduled_start_at queries
- confirm whether partial indexes are needed later or not

policy_sql_items:
- decide projection strategy for public principal read
- decide projection strategy for public session read
- decide oversight-safe projection strategy
- decide support-path audit linkage table or field strategy
- decide runtime-owned transition audit storage strategy

out_of_scope_note:
This document prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
