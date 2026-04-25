# ============================================================
# CREATOR VIEWER BASE TABLE DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_table_plan:

creator_profile_view_states:
- creator_profile_view_state_id: uuid primary key
- principal_id: uuid not null
- last_viewed_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

creator_studio_drafts:
- creator_studio_draft_id: uuid primary key
- principal_id: uuid not null
- linked_session_id: uuid null
- title: text not null
- description: text null
- source_locator_ref: text null
- checksum_ref: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

upload_preparation_records:
- upload_preparation_record_id: uuid primary key
- principal_id: uuid not null
- linked_session_id: uuid null
- source_locator_ref: text null
- checksum_ref: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

creator_settings_states:
- creator_settings_state_id: uuid primary key
- principal_id: uuid not null
- notification_preference_json: jsonb null
- studio_preference_json: jsonb null
- created_at: timestamptz not null
- updated_at: timestamptz not null

creator_analytics_snapshot_refs:
- creator_analytics_snapshot_ref_id: uuid primary key
- principal_id: uuid not null
- snapshot_ref: text not null
- snapshot_generated_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

viewer_home_feed_states:
- viewer_home_feed_state_id: uuid primary key
- principal_id: uuid not null
- generated_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

viewer_search_histories:
- viewer_search_history_id: uuid primary key
- principal_id: uuid not null
- query_text: text not null
- searched_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

viewer_watch_histories:
- viewer_watch_history_id: uuid primary key
- principal_id: uuid not null
- target_type: text not null
- target_id: uuid not null
- watched_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

subscription_follow_states:
- subscription_follow_state_id: uuid primary key
- principal_id: uuid not null
- target_type: text not null
- target_id: uuid not null
- is_following: boolean not null default true
- created_at: timestamptz not null
- updated_at: timestamptz not null

playlist_records:
- playlist_id: uuid primary key
- principal_id: uuid not null
- title: text not null
- description: text null
- visibility_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

playlist_items:
- playlist_item_id: uuid primary key
- playlist_id: uuid not null
- target_type: text not null
- target_id: uuid not null
- position_index: integer not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

watch_queue_states:
- watch_queue_state_id: uuid primary key
- principal_id: uuid not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

watch_queue_items:
- watch_queue_item_id: uuid primary key
- watch_queue_state_id: uuid not null
- target_type: text not null
- target_id: uuid not null
- position_index: integer not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

draft_constraint_plan:
- primary keys on all ids
- foreign keys from all principal-bound tables to principal root
- foreign key creator-side linked_session_id references remain optional
- target_type fields remain explicit and separate from target_id
- playlist ordering uniqueness remains per-playlist
- watch queue ordering uniqueness remains per-watch-queue
- shared playlist visibility remains separate from watch queue privacy

open_review_points:
- exact FK actions for principal/session/playlist/watch-queue links
- whether creator_profile_view_states should remain persistent table or become derivable later
- whether viewer_home_feed_states remains light-state table or pointer-only table
- whether target_id always remains uuid across all intended families
- whether any preference jsonb needs decomposition sooner
