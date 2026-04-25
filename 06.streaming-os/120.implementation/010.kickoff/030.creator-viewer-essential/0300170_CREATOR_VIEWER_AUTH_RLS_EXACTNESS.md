# ============================================================
# K3 CREATOR VIEWER AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: creator-viewer
prepared_by: Zero
owner: Boss

creator_side_rules:
- creator_profile_view_states = creator_self, oversight-safe subset, support path
- creator_studio_drafts = creator_self, delegated company official manager, support path
- upload_preparation_records = creator_self, delegated company official manager, runtime
- creator_settings_states = creator_self first, support override only
- creator_analytics_snapshot_refs = creator_self, oversight-safe subset, runtime

viewer_side_rules:
- viewer_home_feed_states = viewer_self, support path, runtime
- viewer_search_histories = viewer_self only, limited support path
- viewer_watch_histories = viewer_self only, limited support path
- subscription_follow_states = viewer_self only
- playlist_records / playlist_items = owner only except explicit shared visibility
- watch_queue_states / watch_queue_items = viewer_self only, repair by runtime only

global_creator_viewer_principles:
- creator-side control-plane state is never public viewer state
- viewer continuity state is never creator-owned state
- support-path visibility must remain explicit and auditable
- oversight visibility is not ownership mutation
- runtime repair authority is not end-user authority

deny_rules:
- no public raw read of creator studio drafts
- no public raw read of search history
- no public raw read of watch history
- no creator-side ownership mutation from affiliation only
- no viewer-side queue mutation by unrelated actor
- no playlist private visibility bypass without explicit sharing

required_resolution_inputs:
- actor identity
- actor class
- ownership relation
- company relation
- oversight relation
- support path flag
- explicit sharing flag where applicable

open_for_sql_precision_only:
- exact policy SQL
- exact support-path audit linkage
- exact shared-playlist projection naming
- exact runtime-repair mutation column set
