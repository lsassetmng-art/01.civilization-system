# ============================================================
# K1 SESSION TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: session
table: streaming_sessions
prepared_by: Zero
owner: Boss

required_columns:
- session_id
- principal_id
- session_kind
- title
- lifecycle_state
- visibility_state
- publish_ready_flag
- governance_block_flag
- created_at
- updated_at

optional_columns:
- description
- scheduled_start_at
- actual_start_at
- actual_end_at
- monetization_mode
- age_gate_level
- language_code
- primary_country_code
- thumbnail_asset_ref

recommended_constraints:
- pk(session_id)
- fk(principal_id -> streaming_principals.principal_id)
- check(session_kind in allowed set)
- check(lifecycle_state in allowed set)
- check(visibility_state in allowed set)
- check(monetization_mode in allowed set or null)
- check(age_gate_level in allowed set or null)

recommended_indexes:
- idx_streaming_sessions_principal_id
- idx_streaming_sessions_lifecycle_state
- idx_streaming_sessions_visibility_state
- idx_streaming_sessions_scheduled_start_at
- idx_streaming_sessions_actual_start_at
- idx_streaming_sessions_updated_at

semantic_notes:
- lifecycle_state is canonical and must drive transition rules
- publish_ready_flag does not replace lifecycle_state
- governance_block_flag does not replace lifecycle_state
- scheduled_start_at / actual_start_at / actual_end_at must coexist without ambiguity
- thumbnail_asset_ref stays nullable at K1

open_for_sql_precision_only:
- exact SQL type names
- exact timestamp with timezone choice
- exact fk delete/update action
- exact default values
- exact partial-index conditions
