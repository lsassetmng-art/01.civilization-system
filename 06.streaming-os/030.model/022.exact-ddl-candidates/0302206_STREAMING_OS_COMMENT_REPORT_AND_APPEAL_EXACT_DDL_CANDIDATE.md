# ============================================================
# STREAMING OS COMMENT REPORT AND APPEAL EXACT DDL CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: exact-ddl-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

create table if not exists streaming.comment_records (
  comment_record_id uuid primary key,
  target_type text not null,
  target_id uuid not null,
  author_subject_id uuid not null,
  comment_body text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_comment_records_target_type
    check (target_type in (
      'video_asset',
      'live_session',
      'clip_asset'
    ))
);

create table if not exists streaming.comment_moderation_states (
  comment_moderation_state_id uuid primary key,
  comment_record_id uuid not null,
  moderation_status text not null,
  moderation_reason_note text null,
  moderated_by_subject_id uuid null,
  updated_at timestamptz not null default now(),

  constraint ck_comment_moderation_states_status
    check (moderation_status in (
      'visible',
      'hidden',
      'removed',
      'restricted',
      'restored'
    )),

  constraint uq_comment_moderation_states_comment
    unique (comment_record_id),

  constraint fk_comment_moderation_states_comment_id
    foreign key (comment_record_id)
    references streaming.comment_records (comment_record_id)
    on update cascade
    on delete cascade
);

create table if not exists streaming.report_records (
  report_record_id uuid primary key,
  report_target_type text not null,
  report_target_id uuid not null,
  reported_by_subject_id uuid null,
  report_reason_code text not null,
  report_note text null,
  report_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_report_records_target_type
    check (report_target_type in (
      'video_asset',
      'live_session',
      'clip_asset',
      'comment',
      'channel',
      'creator'
    )),

  constraint ck_report_records_status
    check (report_status in (
      'submitted',
      'in_review',
      'resolved',
      'rejected'
    ))
);

create table if not exists streaming.appeal_records (
  appeal_record_id uuid primary key,
  appeal_target_type text not null,
  appeal_target_id uuid not null,
  requested_by_subject_id uuid null,
  appeal_reason_note text null,
  appeal_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_appeal_records_status
    check (appeal_status in (
      'submitted',
      'accepted',
      'rejected',
      'completed'
    ))
);

create table if not exists streaming.moderation_restoration_records (
  moderation_restoration_record_id uuid primary key,
  restoration_target_type text not null,
  restoration_target_id uuid not null,
  restoration_status text not null,
  restoration_note text null,
  reviewed_by_subject_id uuid null,
  updated_at timestamptz not null default now(),

  constraint ck_moderation_restoration_records_status
    check (restoration_status in (
      'requested',
      'under_review',
      'restored',
      'denied'
    ))
);

