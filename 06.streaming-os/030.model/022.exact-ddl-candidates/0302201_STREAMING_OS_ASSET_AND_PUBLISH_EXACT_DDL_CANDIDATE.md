# ============================================================
# STREAMING OS ASSET AND PUBLISH EXACT DDL CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: exact-ddl-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

# ============================================================
# 1. PURPOSE
# ============================================================

This document proposes exact DDL candidates
for asset and external publish tables in the `streaming` schema.

These DDLs are design candidates,
not yet final execution-freeze DDL.

# ============================================================
# 2. TABLE: streaming.archive_assets
# ============================================================

candidate_ddl:

create table if not exists streaming.archive_assets (
  archive_asset_id uuid primary key,
  session_id uuid not null,
  channel_id uuid not null,
  program_id uuid null,
  stream_principal_civilization_id uuid not null,
  asset_title text not null,
  asset_status text not null,
  asset_storage_reference text null,
  asset_duration_seconds integer null,
  asset_visibility_intent text not null default 'archive_only',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_archive_assets_status
    check (asset_status in (
      'generating',
      'ready',
      'failed',
      'blocked',
      'locked',
      'archived'
    )),

  constraint ck_archive_assets_visibility_intent
    check (asset_visibility_intent in (
      'internal_only',
      'archive_only',
      'external_publish_candidate'
    )),

  constraint ck_archive_assets_duration_nonnegative
    check (asset_duration_seconds is null or asset_duration_seconds >= 0),

  constraint fk_archive_assets_session_id
    foreign key (session_id)
    references streaming.streaming_sessions (session_id)
    on update cascade
    on delete restrict
);

candidate_indexes:
- create index idx_archive_assets_session_id
  on streaming.archive_assets (session_id);
- create index idx_archive_assets_status
  on streaming.archive_assets (asset_status);
- create index idx_archive_assets_principal
  on streaming.archive_assets (stream_principal_civilization_id);
- create index idx_archive_assets_updated_at
  on streaming.archive_assets (updated_at desc);

# ============================================================
# 3. TABLE: streaming.clip_assets
# ============================================================

candidate_ddl:

create table if not exists streaming.clip_assets (
  clip_asset_id uuid primary key,
  source_archive_asset_id uuid null,
  source_session_id uuid not null,
  stream_principal_civilization_id uuid not null,
  clip_title text not null,
  clip_status text not null,
  clip_start_offset_seconds integer null,
  clip_end_offset_seconds integer null,
  clip_storage_reference text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_clip_assets_status
    check (clip_status in (
      'draft',
      'ready',
      'blocked',
      'locked',
      'archived'
    )),

  constraint ck_clip_assets_offsets_nonnegative
    check (
      (clip_start_offset_seconds is null or clip_start_offset_seconds >= 0)
      and
      (clip_end_offset_seconds is null or clip_end_offset_seconds >= 0)
    ),

  constraint ck_clip_assets_offset_order
    check (
      clip_start_offset_seconds is null
      or clip_end_offset_seconds is null
      or clip_start_offset_seconds <= clip_end_offset_seconds
    ),

  constraint fk_clip_assets_source_archive_asset_id
    foreign key (source_archive_asset_id)
    references streaming.archive_assets (archive_asset_id)
    on update cascade
    on delete restrict,

  constraint fk_clip_assets_source_session_id
    foreign key (source_session_id)
    references streaming.streaming_sessions (session_id)
    on update cascade
    on delete restrict
);

candidate_indexes:
- create index idx_clip_assets_source_session_id
  on streaming.clip_assets (source_session_id);
- create index idx_clip_assets_source_archive_asset_id
  on streaming.clip_assets (source_archive_asset_id);
- create index idx_clip_assets_status
  on streaming.clip_assets (clip_status);
- create index idx_clip_assets_updated_at
  on streaming.clip_assets (updated_at desc);

# ============================================================
# 4. TABLE: streaming.clip_derivation_refs
# ============================================================

candidate_ddl:

create table if not exists streaming.clip_derivation_refs (
  clip_derivation_ref_id uuid primary key,
  clip_asset_id uuid not null,
  source_type text not null,
  source_id uuid not null,
  derivation_note text null,
  created_at timestamptz not null default now(),

  constraint ck_clip_derivation_refs_source_type
    check (source_type in (
      'archive_asset',
      'session'
    )),

  constraint fk_clip_derivation_refs_clip_asset_id
    foreign key (clip_asset_id)
    references streaming.clip_assets (clip_asset_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create index idx_clip_derivation_refs_clip_asset_id
  on streaming.clip_derivation_refs (clip_asset_id);
- create index idx_clip_derivation_refs_source_type_id
  on streaming.clip_derivation_refs (source_type, source_id);

# ============================================================
# 5. TABLE: streaming.asset_review_states
# ============================================================

candidate_ddl:

create table if not exists streaming.asset_review_states (
  asset_review_state_id uuid primary key,
  asset_type text not null,
  asset_id uuid not null,
  rights_review_status text not null default 'none',
  safety_review_status text not null default 'none',
  company_approval_status text not null default 'none',
  publish_ready_flag boolean not null default false,
  updated_at timestamptz not null default now(),

  constraint ck_asset_review_states_asset_type
    check (asset_type in (
      'archive',
      'clip'
    )),

  constraint ck_asset_review_states_rights_review_status
    check (rights_review_status in (
      'none',
      'pending',
      'approved',
      'rejected',
      'blocked'
    )),

  constraint ck_asset_review_states_safety_review_status
    check (safety_review_status in (
      'none',
      'pending',
      'approved',
      'rejected',
      'blocked'
    )),

  constraint ck_asset_review_states_company_approval_status
    check (company_approval_status in (
      'none',
      'pending',
      'approved',
      'rejected',
      'blocked'
    ))
);

candidate_indexes:
- create unique index uq_asset_review_states_asset
  on streaming.asset_review_states (asset_type, asset_id);
- create index idx_asset_review_states_publish_ready
  on streaming.asset_review_states (publish_ready_flag);
- create index idx_asset_review_states_updated_at
  on streaming.asset_review_states (updated_at desc);

# ============================================================
# 6. TABLE: streaming.asset_governance_states
# ============================================================

candidate_ddl:

create table if not exists streaming.asset_governance_states (
  asset_governance_state_id uuid primary key,
  asset_type text not null,
  asset_id uuid not null,
  publication_block_flag boolean not null default false,
  hidden_flag boolean not null default false,
  locked_flag boolean not null default false,
  suspended_flag boolean not null default false,
  latest_governance_event_id uuid null,
  updated_at timestamptz not null default now(),

  constraint ck_asset_governance_states_asset_type
    check (asset_type in (
      'archive',
      'clip'
    ))
);

candidate_indexes:
- create unique index uq_asset_governance_states_asset
  on streaming.asset_governance_states (asset_type, asset_id);
- create index idx_asset_governance_states_block_flags
  on streaming.asset_governance_states (
    publication_block_flag,
    hidden_flag,
    locked_flag,
    suspended_flag
  );

# ============================================================
# 7. TABLE: streaming.external_publish_targets
# ============================================================

candidate_ddl:

create table if not exists streaming.external_publish_targets (
  external_publish_target_id uuid primary key,
  external_publish_target_type text not null,
  target_display_name text not null,
  target_channel_reference text null,
  target_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_external_publish_targets_type
    check (external_publish_target_type in (
      'youtube'
    )),

  constraint ck_external_publish_targets_status
    check (target_status in (
      'active',
      'inactive',
      'blocked'
    ))
);

candidate_indexes:
- create unique index uq_external_publish_targets_type_channel
  on streaming.external_publish_targets (
    external_publish_target_type,
    target_channel_reference
  );
- create index idx_external_publish_targets_status
  on streaming.external_publish_targets (target_status);

# ============================================================
# 8. TABLE: streaming.external_publish_settings
# ============================================================

candidate_ddl:

create table if not exists streaming.external_publish_settings (
  external_publish_setting_id uuid primary key,
  asset_type text not null,
  asset_id uuid not null,
  external_publish_target_type text not null,
  publish_title text not null,
  publish_description text null,
  publish_tags text null,
  publish_thumbnail_asset_id uuid null,
  publish_visibility text not null,
  publish_schedule_at timestamptz null,
  publish_language_reference text null,
  publish_monetization_intent_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_external_publish_settings_asset_type
    check (asset_type in (
      'archive',
      'clip'
    )),

  constraint ck_external_publish_settings_target_type
    check (external_publish_target_type in (
      'youtube'
    )),

  constraint ck_external_publish_settings_visibility
    check (publish_visibility in (
      'private',
      'unlisted',
      'public'
    ))
);

candidate_indexes:
- create unique index uq_external_publish_settings_asset_target
  on streaming.external_publish_settings (
    asset_type,
    asset_id,
    external_publish_target_type
  );
- create index idx_external_publish_settings_schedule
  on streaming.external_publish_settings (publish_schedule_at);
- create index idx_external_publish_settings_visibility
  on streaming.external_publish_settings (publish_visibility);

# ============================================================
# 9. TABLE: streaming.external_publish_jobs
# ============================================================

candidate_ddl:

create table if not exists streaming.external_publish_jobs (
  external_publish_job_id uuid primary key,
  asset_type text not null,
  asset_id uuid not null,
  session_id uuid not null,
  stream_principal_civilization_id uuid not null,
  primary_rights_holder_civilization_id uuid not null,
  external_publish_target_type text not null,
  external_publish_status text not null,
  publish_attempt_count integer not null default 0,
  last_attempt_at timestamptz null,
  next_retry_at timestamptz null,
  publish_requested_by_subject_id uuid null,
  publish_approved_by_subject_id uuid null,
  publish_block_reason text null,
  publish_failure_reason text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_external_publish_jobs_asset_type
    check (asset_type in (
      'archive',
      'clip'
    )),

  constraint ck_external_publish_jobs_target_type
    check (external_publish_target_type in (
      'youtube'
    )),

  constraint ck_external_publish_jobs_status
    check (external_publish_status in (
      'draft',
      'queued',
      'validating',
      'waiting_review',
      'approved',
      'pushing',
      'succeeded',
      'failed',
      'retry_wait',
      'cancelled',
      'blocked'
    )),

  constraint ck_external_publish_jobs_attempt_count_nonnegative
    check (publish_attempt_count >= 0),

  constraint fk_external_publish_jobs_session_id
    foreign key (session_id)
    references streaming.streaming_sessions (session_id)
    on update cascade
    on delete restrict
);

candidate_indexes:
- create index idx_external_publish_jobs_asset
  on streaming.external_publish_jobs (asset_type, asset_id);
- create index idx_external_publish_jobs_status
  on streaming.external_publish_jobs (external_publish_status);
- create index idx_external_publish_jobs_next_retry_at
  on streaming.external_publish_jobs (next_retry_at);
- create index idx_external_publish_jobs_updated_at
  on streaming.external_publish_jobs (updated_at desc);

# ============================================================
# 10. TABLE: streaming.external_publish_results
# ============================================================

candidate_ddl:

create table if not exists streaming.external_publish_results (
  external_publish_result_id uuid primary key,
  external_publish_job_id uuid not null,
  asset_type text not null,
  asset_id uuid not null,
  external_publish_target_type text not null,
  external_video_id text null,
  external_video_url_reference text null,
  external_channel_reference text null,
  result_status text not null,
  pushed_at timestamptz null,
  visibility_result text null,
  remote_processing_state text null,
  remote_warning_note text null,
  remote_error_note text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_external_publish_results_asset_type
    check (asset_type in (
      'archive',
      'clip'
    )),

  constraint ck_external_publish_results_target_type
    check (external_publish_target_type in (
      'youtube'
    )),

  constraint ck_external_publish_results_result_status
    check (result_status in (
      'succeeded',
      'failed',
      'partial',
      'unknown'
    )),

  constraint fk_external_publish_results_job_id
    foreign key (external_publish_job_id)
    references streaming.external_publish_jobs (external_publish_job_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create index idx_external_publish_results_job_id
  on streaming.external_publish_results (external_publish_job_id);
- create index idx_external_publish_results_asset
  on streaming.external_publish_results (asset_type, asset_id);
- create index idx_external_publish_results_result_status
  on streaming.external_publish_results (result_status);
- create index idx_external_publish_results_pushed_at
  on streaming.external_publish_results (pushed_at desc);

# ============================================================
# 11. FOREIGN KEY POLICY NOTE
# ============================================================

Candidate policy:
- keep foreign keys inside `streaming` where stable
- keep typed asset references flexible where cross-table polymorphism exists
- do not force premature polymorphic FK hardening at this phase

# ============================================================
# 12. CANONICAL FIXED STATEMENT
# ============================================================

The exact DDL candidate for asset and publish tables
shall preserve:
- archive / clip asset existence
- clip source derivation
- review-state separation
- governance-state separation
- target/settings/jobs/results separation
- explicit publish retry and result history

