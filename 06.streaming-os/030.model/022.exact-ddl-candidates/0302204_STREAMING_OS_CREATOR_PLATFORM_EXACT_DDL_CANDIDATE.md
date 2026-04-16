# ============================================================
# STREAMING OS CREATOR PLATFORM EXACT DDL CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: exact-ddl-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

# ============================================================
# 1. TABLE: streaming.creator_profile_view_states
# ============================================================

candidate_ddl:

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

# ============================================================
# 2. TABLE: streaming.creator_studio_drafts
# ============================================================

candidate_ddl:

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

# ============================================================
# 3. TABLE: streaming.upload_preparation_records
# ============================================================

candidate_ddl:

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

# ============================================================
# 4. TABLE: streaming.creator_settings_states
# ============================================================

candidate_ddl:

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

# ============================================================
# 5. TABLE: streaming.creator_analytics_snapshot_refs
# ============================================================

candidate_ddl:

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

