# ============================================================
# STREAMING OS CREATOR AND VIEWER TABLE FAMILY RLS BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

creator_and_viewer_table_families:
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

binding_rules:

creator_profile_view_states:
- read:
  creator_self,
  company_overseer where ownership/affiliation policy allows,
  platform_operator
- mutate:
  runtime_worker,
  platform_operator by support path only

creator_studio_drafts:
- read:
  creator_self,
  delegated company official manager where ownership allows,
  platform_operator
- mutate:
  creator_self,
  delegated company official manager where ownership allows,
  runtime_worker for autosave/recovery path

upload_preparation_records:
- read:
  creator_self,
  delegated company official manager where ownership allows,
  platform_operator,
  runtime_worker
- mutate:
  creator_self,
  delegated company official manager where ownership allows,
  runtime_worker

creator_settings_states:
- read/mutate:
  creator_self
- support override:
  platform_operator only by explicit support path

creator_analytics_snapshot_refs:
- read:
  creator_self,
  company_overseer where ownership/affiliation policy allows,
  platform_operator
- mutate:
  runtime_worker

viewer_home_feed_states:
- read:
  viewer_self,
  platform_operator by support path only
- mutate:
  runtime_worker

viewer_search_histories:
- read/mutate:
  viewer_self
- support read:
  platform_operator only by explicit support/abuse path
- system mutate:
  runtime_worker

viewer_watch_histories:
- read/mutate:
  viewer_self
- support read:
  platform_operator only by explicit support/abuse path
- system mutate:
  runtime_worker

subscription_follow_states:
- read/mutate:
  viewer_self
- system mutate:
  runtime_worker for repair-only path

playlist_records / playlist_items:
- read:
  owner_subject_id
  and public/shared viewers only when visibility allows
- mutate:
  owner_subject_id only
- support path:
  platform_operator only

watch_queue_states / watch_queue_items:
- read/mutate:
  viewer_self
- repair mutate:
  runtime_worker only

