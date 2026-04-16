# ============================================================
# STREAMING OS CORE EXECUTABLE DDL FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: executable-ddl-freeze
owner: Boss
prepared_by: Zero

sql:
create schema if not exists streaming;

create table if not exists streaming.streaming_principals (
  streaming_principal_id uuid primary key,
  principal_civilization_id uuid not null,
  principal_type text not null,
  ownership_mode text not null,
  primary_rights_holder_civilization_id uuid not null,
  primary_revenue_beneficiary_civilization_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint uq_streaming_principals_principal_civilization
    unique (principal_civilization_id),

  constraint ck_streaming_principals_principal_type
    check (principal_type in (
      'individual',
      'group',
      'company',
      'ai_human'
    )),

  constraint ck_streaming_principals_ownership_mode
    check (ownership_mode in (
      'self_owned',
      'company_owned',
      'group_owned',
      'delegated_operated'
    ))
);

create table if not exists streaming.streaming_sessions (
  streaming_session_id uuid primary key,
  streaming_principal_id uuid not null,
  session_title text not null,
  session_state text not null,
  scheduled_start_at timestamptz null,
  actual_start_at timestamptz null,
  actual_end_at timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint fk_streaming_sessions_principal
    foreign key (streaming_principal_id)
    references streaming.streaming_principals (streaming_principal_id)
    on update cascade
    on delete restrict,

  constraint ck_streaming_sessions_state
    check (session_state in (
      'draft',
      'scheduled',
      'ready',
      'pre_live_check',
      'live',
      'ended',
      'archive_generating',
      'archive_ready',
      'rights_review_pending',
      'publish_ready',
      'pushing_external',
      'externally_published',
      'monetization_open',
      'settlement_pending',
      'settled',
      'locked',
      'suspended',
      'archived'
    ))
);

create index if not exists ix_streaming_sessions_principal
  on streaming.streaming_sessions (streaming_principal_id);

create index if not exists ix_streaming_sessions_state
  on streaming.streaming_sessions (session_state);

create index if not exists ix_streaming_sessions_scheduled_start_at
  on streaming.streaming_sessions (scheduled_start_at);

create table if not exists streaming.archive_assets (
  archive_asset_id uuid primary key,
  streaming_session_id uuid not null,
  asset_status text not null,
  publish_ready_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint fk_archive_assets_session
    foreign key (streaming_session_id)
    references streaming.streaming_sessions (streaming_session_id)
    on update cascade
    on delete restrict,

  constraint ck_archive_assets_status
    check (asset_status in (
      'generating',
      'ready',
      'restricted',
      'deleted_logical'
    ))
);

create index if not exists ix_archive_assets_session
  on streaming.archive_assets (streaming_session_id);

create index if not exists ix_archive_assets_publish_ready
  on streaming.archive_assets (publish_ready_flag);

create table if not exists streaming.clip_assets (
  clip_asset_id uuid primary key,
  streaming_session_id uuid not null,
  archive_asset_id uuid null,
  asset_status text not null,
  publish_ready_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint fk_clip_assets_session
    foreign key (streaming_session_id)
    references streaming.streaming_sessions (streaming_session_id)
    on update cascade
    on delete restrict,

  constraint fk_clip_assets_archive
    foreign key (archive_asset_id)
    references streaming.archive_assets (archive_asset_id)
    on update cascade
    on delete set null,

  constraint ck_clip_assets_status
    check (asset_status in (
      'ready',
      'restricted',
      'deleted_logical'
    ))
);

create index if not exists ix_clip_assets_session
  on streaming.clip_assets (streaming_session_id);

create index if not exists ix_clip_assets_archive
  on streaming.clip_assets (archive_asset_id);

create table if not exists streaming.external_publish_jobs (
  external_publish_job_id uuid primary key,
  target_type text not null,
  target_id uuid not null,
  external_publish_status text not null,
  publish_schedule_at timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_external_publish_jobs_target_type
    check (target_type in (
      'archive_asset',
      'clip_asset'
    )),

  constraint ck_external_publish_jobs_status
    check (external_publish_status in (
      'queued',
      'running',
      'succeeded',
      'failed',
      'cancelled'
    ))
);

create index if not exists ix_external_publish_jobs_status
  on streaming.external_publish_jobs (external_publish_status);

create index if not exists ix_external_publish_jobs_schedule
  on streaming.external_publish_jobs (publish_schedule_at);

create table if not exists streaming.tip_events (
  tip_event_id uuid primary key,
  streaming_session_id uuid not null,
  tip_origin_type text not null,
  source_subject_id uuid null,
  source_nation_id uuid null,
  primary_revenue_beneficiary_civilization_id uuid not null,
  beneficiary_nation_id uuid null,
  tip_status text not null,
  amount_numeric numeric(18,4) not null,
  currency_code text not null,
  created_at timestamptz not null default now(),

  constraint fk_tip_events_session
    foreign key (streaming_session_id)
    references streaming.streaming_sessions (streaming_session_id)
    on update cascade
    on delete restrict,

  constraint ck_tip_events_origin
    check (tip_origin_type in (
      'manual',
      'ai_auto'
    )),

  constraint ck_tip_events_status
    check (tip_status in (
      'pending',
      'completed',
      'failed',
      'reversed'
    )),

  constraint ck_tip_events_amount_positive
    check (amount_numeric > 0)
);

create index if not exists ix_tip_events_session
  on streaming.tip_events (streaming_session_id);

create index if not exists ix_tip_events_beneficiary
  on streaming.tip_events (primary_revenue_beneficiary_civilization_id);

create table if not exists streaming.reaction_events (
  reaction_event_id uuid primary key,
  reaction_target_type text not null,
  reaction_target_id uuid not null,
  audience_subject_id uuid not null,
  reaction_type text not null,
  reaction_timestamp timestamptz not null default now(),

  constraint ck_reaction_events_target_type
    check (reaction_target_type in (
      'video_asset',
      'live_session',
      'clip_asset',
      'broadcaster'
    )),

  constraint ck_reaction_events_type
    check (reaction_type in (
      'like',
      'dislike',
      'favorite',
      'comment',
      'continued_view',
      'rewatch'
    ))
);

create index if not exists ix_reaction_events_target
  on streaming.reaction_events (reaction_target_type, reaction_target_id);

create index if not exists ix_reaction_events_audience
  on streaming.reaction_events (audience_subject_id);

create table if not exists streaming.ranking_results (
  ranking_result_id uuid primary key,
  ranking_target_type text not null,
  ranking_target_id uuid not null,
  ranking_period_type text not null,
  ranking_position integer not null,
  generated_at timestamptz not null default now(),

  constraint ck_ranking_results_target_type
    check (ranking_target_type in (
      'video_asset',
      'live_session',
      'broadcaster'
    )),

  constraint ck_ranking_results_period
    check (ranking_period_type in (
      'daily',
      'monthly',
      'yearly',
      'overall'
    )),

  constraint ck_ranking_results_position_positive
    check (ranking_position > 0)
);

create index if not exists ix_ranking_results_scope
  on streaming.ranking_results (ranking_target_type, ranking_period_type, ranking_position);

create table if not exists streaming.ad_data (
  ad_data_id uuid primary key,
  ad_status text not null,
  target_content_type text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_ad_data_status
    check (ad_status in (
      'draft',
      'active',
      'paused',
      'archived'
    )),

  constraint ck_ad_data_target_content_type
    check (target_content_type in (
      'live_session',
      'archive_asset',
      'clip_asset'
    ))
);

create index if not exists ix_ad_data_status
  on streaming.ad_data (ad_status);

