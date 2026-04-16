# ============================================================
# STREAMING OS CREATOR AND VIEWER MIGRATION DEPENDENCY FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: migration-order-and-dependency-freeze
owner: Boss
prepared_by: Zero

creator_and_viewer_groups_in_order:
- group_06_creator_platform
- group_07_viewer_continuity

order_rule:
- creator platform tables should follow core asset/session groups
  because drafts and upload preparation may point to asset/session-linked targets
- viewer continuity tables may follow creator platform tables,
  but should not depend on creator-specific mutable internal draft structures

creator_platform_tables:
- creator_profile_view_states
- creator_studio_drafts
- upload_preparation_records
- creator_settings_states
- creator_analytics_snapshot_refs

viewer_continuity_tables:
- viewer_home_feed_states
- viewer_search_histories
- viewer_watch_histories
- subscription_follow_states
- playlist_records
- playlist_items
- watch_queue_states
- watch_queue_items

freeze_rule:
- viewer continuity must not depend on creator private state tables
- creator private draft tables must not depend on viewer continuity tables

