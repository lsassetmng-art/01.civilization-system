# ============================================================
# K3 VIEWER DISCOVERY CONTINUITY TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: viewer-discovery-continuity
prepared_by: Zero
owner: Boss

tables:
- viewer_home_feed_states
- viewer_search_histories
- viewer_watch_histories
- subscription_follow_states
- playlist_records
- playlist_items
- watch_queue_states
- watch_queue_items

viewer_home_feed_states_required_columns:
- viewer_home_feed_state_id
- principal_id
- feed_state_key
- updated_at

viewer_search_histories_required_columns:
- viewer_search_history_id
- principal_id
- query_text
- searched_at

viewer_watch_histories_required_columns:
- viewer_watch_history_id
- principal_id
- item_type
- item_id
- watched_at

subscription_follow_states_required_columns:
- subscription_follow_state_id
- principal_id
- target_principal_id
- follow_state
- updated_at

playlist_records_required_columns:
- playlist_id
- owner_principal_id
- playlist_name
- visibility_state
- updated_at

playlist_items_required_columns:
- playlist_item_id
- playlist_id
- item_type
- item_id
- order_index
- updated_at

watch_queue_states_required_columns:
- watch_queue_state_id
- principal_id
- updated_at

watch_queue_items_required_columns:
- watch_queue_item_id
- watch_queue_state_id
- item_type
- item_id
- order_index
- updated_at

recommended_constraints:
- principal-bound fk for viewer-owned state tables
- fk(playlist_id -> playlist_records.playlist_id)
- fk(watch_queue_state_id -> watch_queue_states.watch_queue_state_id)
- check(follow_state in allowed set)
- check(visibility_state in allowed set)
- unique(principal_id, target_principal_id) for follow state
- unique(playlist_id, order_index)
- unique(watch_queue_state_id, order_index)

recommended_indexes:
- principal_id indexes for viewer-owned tables
- searched_at index for viewer_search_histories
- watched_at index for viewer_watch_histories
- target_principal_id index for subscription_follow_states
- owner_principal_id index for playlist_records
- playlist_id index for playlist_items
- watch_queue_state_id index for watch_queue_items

semantic_notes:
- viewer_home_feed_states are projection-support states, not public content objects
- viewer_search_histories remain self-private by default
- viewer_watch_histories remain self-private by default
- playlist identity remains distinct from watch queue identity
- watch_queue_items remain mutable ordering state, not archive/clip ownership state

open_for_sql_precision_only:
- exact SQL type names
- exact unique constraint shapes
- exact fk actions
- exact default clauses
