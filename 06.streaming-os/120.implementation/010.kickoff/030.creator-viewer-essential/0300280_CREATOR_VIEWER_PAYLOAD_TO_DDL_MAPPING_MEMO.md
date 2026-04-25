# ============================================================
# CREATOR VIEWER PAYLOAD TO DDL MAPPING MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

creator_mapping:
- creator_studio_draft -> creator_studio_drafts
- upload_preparation_record -> upload_preparation_records
- creator_settings_state -> creator_settings_states
- creator_analytics_dashboard_projection -> creator_analytics_snapshot_refs

viewer_mapping:
- viewer_home_feed_projection -> viewer_home_feed_states
- viewer_history_projection -> viewer_watch_histories
- subscription_follow_state -> subscription_follow_states
- playlist_record / playlist_detail_projection -> playlist_records + playlist_items
- watch_queue_state -> watch_queue_states + watch_queue_items

memo_notes:
- search and home feed outputs are projections, not direct table mirrors
- analytics dashboard is projection-oriented, not raw event-table output
