# ============================================================
# STREAMING OS VIEWER DISCOVERY AND CONTINUITY EXACT DDL CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: exact-ddl-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

create table if not exists streaming.viewer_home_feed_states (
  viewer_home_feed_state_id uuid primary key,
  viewer_subject_id uuid not null,
  latest_feed_generation_reference text null,
  feed_version_note text null,
  updated_at timestamptz not null default now(),
  constraint uq_viewer_home_feed_states_viewer unique (viewer_subject_id)
);

create table if not exists streaming.viewer_search_histories (
  viewer_search_history_id uuid primary key,
  viewer_subject_id uuid not null,
  search_query_text text not null,
  searched_at timestamptz not null default now(),
  result_scope_note text null
);

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

  constraint fk_playlist_items_playlist_record_id
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
  constraint uq_watch_queue_states_viewer unique (viewer_subject_id)
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

  constraint fk_watch_queue_items_state_id
    foreign key (watch_queue_state_id)
    references streaming.watch_queue_states (watch_queue_state_id)
    on update cascade
    on delete cascade
);

