# ============================================================
# STREAMING OS CREATOR AND VIEWER EXECUTABLE DDL FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: executable-ddl-freeze
owner: Boss
prepared_by: Zero

sql:
create table if not exists streaming.creator_profile_view_states (
  creator_profile_view_state_id uuid primary key,
  creator_civilization_id uuid not null,
  default_channel_id uuid null,
  visible_video_count bigint not null default 0,
  visible_stream_count bigint not null default 0,
  visible_archive_count bigint not null default 0,
  visible_clip_count bigint not null default 0,
  latest_summary_generated_at timestamptz null,
  updated_at timestamptz not null default now(),

  constraint uq_creator_profile_view_states_creator
    unique (creator_civilization_id),

  constraint ck_creator_profile_view_states_counts_nonnegative
    check (
      visible_video_count >= 0
      and visible_stream_count >= 0
      and visible_archive_count >= 0
      and visible_clip_count >= 0
    )
);

create table if not exists streaming.creator_studio_drafts (
  creator_studio_draft_id uuid primary key,
  creator_civilization_id uuid not null,
  draft_type text not null,
  draft_title text null,
  draft_status text not null,
  linked_asset_type text null,
  linked_asset_id uuid null,
  saved_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_creator_studio_drafts_type
    check (draft_type in (
      'uploaded_video',
      'archive_publish',
      'clip_publish'
    )),

  constraint ck_creator_studio_drafts_status
    check (draft_status in (
      'draft',
      'pending_review',
      'ready_to_publish',
      'cancelled'
    )),

  constraint ck_creator_studio_drafts_linked_asset_type
    check (
      linked_asset_type is null
      or linked_asset_type in (
        'archive_asset',
        'clip_asset',
        'video_asset'
      )
    )
);

create index if not exists ix_creator_studio_drafts_creator
  on streaming.creator_studio_drafts (creator_civilization_id);

create index if not exists ix_creator_studio_drafts_status
  on streaming.creator_studio_drafts (draft_status);

create table if not exists streaming.upload_preparation_records (
  upload_preparation_record_id uuid primary key,
  creator_civilization_id uuid not null,
  upload_target_type text not null,
  ingest_status text not null,
  metadata_ready_flag boolean not null default false,
  publish_setting_ready_flag boolean not null default false,
  review_required_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_upload_preparation_records_target_type
    check (upload_target_type in (
      'video',
      'thumbnail'
    )),

  constraint ck_upload_preparation_records_ingest_status
    check (ingest_status in (
      'pending',
      'uploaded',
      'failed',
      'cancelled'
    ))
);

create index if not exists ix_upload_preparation_records_creator
  on streaming.upload_preparation_records (creator_civilization_id);

create index if not exists ix_upload_preparation_records_ingest
  on streaming.upload_preparation_records (ingest_status);

create table if not exists streaming.creator_settings_states (
  creator_settings_state_id uuid primary key,
  creator_civilization_id uuid not null,
  default_visibility_setting text null,
  notification_preference_reference text null,
  studio_preference_reference text null,
  updated_at timestamptz not null default now(),

  constraint uq_creator_settings_states_creator
    unique (creator_civilization_id),

  constraint ck_creator_settings_states_visibility
    check (
      default_visibility_setting is null
      or default_visibility_setting in (
        'private',
        'unlisted',
        'public'
      )
    )
);

create table if not exists streaming.creator_analytics_snapshot_refs (
  creator_analytics_snapshot_ref_id uuid primary key,
  creator_civilization_id uuid not null,
  period_type text not null,
  latest_snapshot_reference text null,
  updated_at timestamptz not null default now(),

  constraint ck_creator_analytics_snapshot_refs_period
    check (period_type in (
      'daily',
      'monthly',
      'yearly',
      'overall'
    )),

  constraint uq_creator_analytics_snapshot_refs_creator_period
    unique (creator_civilization_id, period_type)
);

create table if not exists streaming.viewer_home_feed_states (
  viewer_home_feed_state_id uuid primary key,
  viewer_subject_id uuid not null,
  latest_feed_generation_reference text null,
  feed_version_note text null,
  updated_at timestamptz not null default now(),

  constraint uq_viewer_home_feed_states_viewer
    unique (viewer_subject_id)
);

create table if not exists streaming.viewer_search_histories (
  viewer_search_history_id uuid primary key,
  viewer_subject_id uuid not null,
  search_query_text text not null,
  searched_at timestamptz not null default now(),
  result_scope_note text null
);

create index if not exists ix_viewer_search_histories_viewer
  on streaming.viewer_search_histories (viewer_subject_id, searched_at desc);

create table if not exists streaming.viewer_watch_histories (
  viewer_watch_history_id uuid primary key,
  viewer_subject_id uuid not null,
  watched_target_type text not null,
  watched_target_id uuid not null,
  watched_at timestamptz not null default now(),
  watch_progress_note text null,

  constraint ck_viewer_watch_histories_target_type
    check (watched_target_type in (
      'video_asset',
      'live_session',
      'clip_asset',
      'broadcaster'
    ))
);

create index if not exists ix_viewer_watch_histories_viewer
  on streaming.viewer_watch_histories (viewer_subject_id, watched_at desc);

create table if not exists streaming.subscription_follow_states (
  subscription_follow_state_id uuid primary key,
  viewer_subject_id uuid not null,
  follow_target_type text not null,
  follow_target_id uuid not null,
  follow_active_flag boolean not null default true,
  notification_enabled_flag boolean not null default false,
  followed_at timestamptz not null default now(),
  unfollowed_at timestamptz null,
  updated_at timestamptz not null default now(),

  constraint ck_subscription_follow_states_target_type
    check (follow_target_type in (
      'channel',
      'creator',
      'broadcaster'
    )),

  constraint uq_subscription_follow_states_viewer_target
    unique (viewer_subject_id, follow_target_type, follow_target_id)
);

create table if not exists streaming.playlist_records (
  playlist_record_id uuid primary key,
  owner_subject_id uuid not null,
  playlist_name text not null,
  playlist_visibility text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_playlist_records_visibility
    check (playlist_visibility in (
      'private',
      'shared',
      'public'
    ))
);

create index if not exists ix_playlist_records_owner
  on streaming.playlist_records (owner_subject_id, updated_at desc);

create table if not exists streaming.playlist_items (
  playlist_item_id uuid primary key,
  playlist_record_id uuid not null,
  target_type text not null,
  target_id uuid not null,
  sequence_no integer not null,
  added_at timestamptz not null default now(),

  constraint ck_playlist_items_target_type
    check (target_type in (
      'video_asset',
      'live_session',
      'clip_asset'
    )),

  constraint ck_playlist_items_sequence_positive
    check (sequence_no > 0),

  constraint uq_playlist_items_record_sequence
    unique (playlist_record_id, sequence_no),

  constraint fk_playlist_items_playlist
    foreign key (playlist_record_id)
    references streaming.playlist_records (playlist_record_id)
    on update cascade
    on delete cascade
);

create table if not exists streaming.watch_queue_states (
  watch_queue_state_id uuid primary key,
  viewer_subject_id uuid not null,
  queue_active_flag boolean not null default true,
  updated_at timestamptz not null default now(),

  constraint uq_watch_queue_states_viewer
    unique (viewer_subject_id)
);

create table if not exists streaming.watch_queue_items (
  watch_queue_item_id uuid primary key,
  watch_queue_state_id uuid not null,
  target_type text not null,
  target_id uuid not null,
  sequence_no integer not null,
  added_at timestamptz not null default now(),

  constraint ck_watch_queue_items_target_type
    check (target_type in (
      'video_asset',
      'live_session',
      'clip_asset'
    )),

  constraint ck_watch_queue_items_sequence_positive
    check (sequence_no > 0),

  constraint uq_watch_queue_items_state_sequence
    unique (watch_queue_state_id, sequence_no),

  constraint fk_watch_queue_items_state
    foreign key (watch_queue_state_id)
    references streaming.watch_queue_states (watch_queue_state_id)
    on update cascade
    on delete cascade
);

