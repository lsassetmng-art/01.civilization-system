-- ============================================================
-- TRAINING COACH SHARE SQL DRAFT
-- status: canonical-draft
-- phase: design-consolidation
-- system: TrainingCoach
-- schema: life
-- owner: Boss
-- prepared_by: Zero
-- db_reviewer: 佐藤
-- note: draft only / do not apply yet
-- ============================================================

create schema if not exists life;

create table if not exists life.training_share_invitation (
  training_share_invitation_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null,
  viewer_user_id text not null,
  share_relation_type text not null check (share_relation_type in ('family_summary_view','friend_summary_view','coach_summary_view')),
  share_scope_code text not null check (share_scope_code in ('streak_only','weekly_progress_only','goal_progress_only','summary_bundle_basic','summary_bundle_extended')),
  invitation_status text not null check (invitation_status in ('invited','accepted','expired','revoked')),
  invited_at timestamptz not null default now(),
  expires_at timestamptz null,
  accepted_at timestamptz null,
  revoked_at timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists life.training_share_relation (
  training_share_relation_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null,
  viewer_user_id text not null,
  share_relation_type text not null check (share_relation_type in ('family_summary_view','friend_summary_view','coach_summary_view')),
  share_scope_code text not null check (share_scope_code in ('streak_only','weekly_progress_only','goal_progress_only','summary_bundle_basic','summary_bundle_extended')),
  relation_status text not null check (relation_status in ('active','revoked','suspended')),
  activated_at timestamptz not null default now(),
  revoked_at timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists life.training_share_audit_event (
  training_share_audit_event_id uuid primary key default gen_random_uuid(),
  training_share_relation_id uuid null references life.training_share_relation(training_share_relation_id),
  audit_event_code text not null,
  actor_user_id text null,
  owner_user_id text not null,
  viewer_user_id text not null,
  target_user_id text null,
  share_invitation_id uuid null references life.training_share_invitation(training_share_invitation_id),
  share_relation_type text not null check (share_relation_type in ('family_summary_view','friend_summary_view','coach_summary_view')),
  share_scope_code text null,
  occurred_at timestamptz not null default now(),
  result text not null check (result in ('success','rejected','ignored')),
  reason_code text null,
  correlation_id text null,
  causation_id text null,
  payload_major_version integer null,
  payload_minor_version integer null
);

create index if not exists idx_training_share_invitation_owner_viewer_status
  on life.training_share_invitation (owner_user_id, viewer_user_id, invitation_status);

create index if not exists idx_training_share_invitation_invited_at
  on life.training_share_invitation (invited_at desc);

create index if not exists idx_training_share_relation_owner_viewer_status
  on life.training_share_relation (owner_user_id, viewer_user_id, relation_status);

create index if not exists idx_training_share_relation_viewer_status
  on life.training_share_relation (viewer_user_id, relation_status);

create index if not exists idx_training_share_audit_relation_occurred_at
  on life.training_share_audit_event (training_share_relation_id, occurred_at desc);

create index if not exists idx_training_share_audit_owner_viewer_occurred_at
  on life.training_share_audit_event (owner_user_id, viewer_user_id, occurred_at desc);

create index if not exists idx_training_share_audit_correlation
  on life.training_share_audit_event (correlation_id);

-- unique candidate note:
-- partial unique on active relation (owner_user_id, viewer_user_id, share_relation_type)
-- should be finalized after DB review
