# ============================================================
# CREATOR VIEWER INDEX DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_index_plan:

viewer_search_histories:
- idx_viewer_search_histories_principal_id_searched_at
  - columns:
    - principal_id
    - searched_at

viewer_watch_histories:
- idx_viewer_watch_histories_principal_id_watched_at
  - columns:
    - principal_id
    - watched_at

subscription_follow_states:
- uq_subscription_follow_states_principal_target
  - columns:
    - principal_id
    - target_type
    - target_id
- idx_subscription_follow_states_target
  - columns:
    - target_type
    - target_id

playlist_items:
- uq_playlist_items_playlist_position
  - columns:
    - playlist_id
    - position_index
- idx_playlist_items_playlist_position
  - columns:
    - playlist_id
    - position_index

watch_queue_items:
- uq_watch_queue_items_queue_position
  - columns:
    - watch_queue_state_id
    - position_index
- idx_watch_queue_items_queue_position
  - columns:
    - watch_queue_state_id
    - position_index

index_strategy_note:
- keep first-pass index set minimal and operationally obvious
- avoid speculative partial indexes at this stage
- preserve ordering support without overfitting to future runtime behavior

open_review_points:
- whether unique constraints should be filtered by active-state semantics later
- whether target lookup indexes need composites with principal_id for some tables
- whether history compaction patterns justify additional indexes
- whether viewer_home_feed_states needs any standalone lookup index beyond principal binding
