# ============================================================
# CREATOR VIEWER SQL PRECISION REVIEW STARTER
# ============================================================

status: canonical-review-starter
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

review_role_note:
- Sato(DB reviewer) participation is required when SQL phase starts

review_scope:
- creator_profile_view_states
- creator_studio_drafts
- upload_preparation_records
- creator_settings_states
- creator_analytics_snapshot_refs
- viewer_home_feed_states
- viewer_search_histories
- viewer_watch_histories
- subscription_follow_states
- playlist_records
- playlist_items
- watch_queue_states
- watch_queue_items

precision_items:
- exact type choices for ids and principal-bound FKs
- exact JSON vs structured-column choices for preference and summary fields
- exact unique constraints for follow state and ordered collections
- exact ordering/index strategy for playlist_items and watch_queue_items
- exact timestamp type choices for history and update fields
- exact projection-support state storage strategy for home feed and analytics snapshots
- exact policy/projection SQL strategy for private continuity data

out_of_scope_note:
This document prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
