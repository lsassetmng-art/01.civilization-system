-- ============================================================
-- APP DEVELOPMENT STUDIO SPEED EXPERIENCE DDL
-- ============================================================

create table if not exists ads_speed_quick_start_run (
  quick_start_run_id uuid primary key,
  account_id uuid not null,
  request_text text not null,
  target_type text not null,
  output_scope text not null,
  mode_type text not null,
  state text not null,
  device_type text not null,
  draft_summary text null,
  generated_artifact_list_json jsonb null,
  created_at timestamptz not null default now(),
  completed_at timestamptz null
);

create index if not exists idx_ads_speed_quick_start_run_account_id
  on ads_speed_quick_start_run (account_id);

create index if not exists idx_ads_speed_quick_start_run_mode_state
  on ads_speed_quick_start_run (mode_type, state);

create index if not exists idx_ads_speed_quick_start_run_created_at
  on ads_speed_quick_start_run (created_at desc);

create table if not exists ads_speed_preview_result (
  preview_result_id uuid primary key,
  quick_start_run_id uuid not null,
  preview_scope text not null,
  preview_state text not null,
  api_preview_json jsonb null,
  ui_preview_json jsonb null,
  ddl_preview_text text null,
  structure_preview_json jsonb null,
  created_at timestamptz not null default now()
);

create index if not exists idx_ads_speed_preview_result_run_id
  on ads_speed_preview_result (quick_start_run_id);

create index if not exists idx_ads_speed_preview_result_scope_state
  on ads_speed_preview_result (preview_scope, preview_state);

create table if not exists ads_speed_starter_pack_run (
  starter_pack_run_id uuid primary key,
  quick_start_run_id uuid not null,
  starter_pack_type text not null,
  included_artifacts_json jsonb not null,
  state text not null,
  artifact_manifest_json jsonb null,
  created_at timestamptz not null default now(),
  completed_at timestamptz null
);

create index if not exists idx_ads_speed_starter_pack_run_run_id
  on ads_speed_starter_pack_run (quick_start_run_id);

create index if not exists idx_ads_speed_starter_pack_run_state
  on ads_speed_starter_pack_run (state);

create table if not exists ads_speed_mode_promotion (
  speed_mode_promotion_id uuid primary key,
  quick_start_run_id uuid not null,
  source_mode_type text not null,
  target_governed_run_id uuid not null,
  promotion_state text not null,
  promote_reason text null,
  promoted_by uuid not null,
  promoted_at timestamptz not null default now()
);

create index if not exists idx_ads_speed_mode_promotion_run_id
  on ads_speed_mode_promotion (quick_start_run_id);

create index if not exists idx_ads_speed_mode_promotion_target_governed
  on ads_speed_mode_promotion (target_governed_run_id);

create table if not exists ads_speed_audit_event (
  speed_audit_event_id uuid primary key,
  run_id uuid not null,
  feature_name text not null,
  event_type text not null,
  actor_role text not null,
  actor_id uuid not null,
  device_type text not null,
  mode_type text not null,
  result_state text not null,
  reason_code text null,
  reason_message text null,
  related_snapshot_id uuid null,
  related_governed_run_id uuid null,
  event_at timestamptz not null default now()
);

create index if not exists idx_ads_speed_audit_event_run_id
  on ads_speed_audit_event (run_id);

create index if not exists idx_ads_speed_audit_event_event_type
  on ads_speed_audit_event (event_type);

create index if not exists idx_ads_speed_audit_event_event_at
  on ads_speed_audit_event (event_at desc);

create table if not exists ads_speed_notification_event (
  speed_notification_event_id uuid primary key,
  run_id uuid not null,
  notification_event_type text not null,
  target_user_id uuid not null,
  notification_title text not null,
  notification_body text not null,
  delivery_state text not null,
  delivered_at timestamptz null,
  created_at timestamptz not null default now()
);

create index if not exists idx_ads_speed_notification_event_run_id
  on ads_speed_notification_event (run_id);

create index if not exists idx_ads_speed_notification_event_target_user_id
  on ads_speed_notification_event (target_user_id);

create index if not exists idx_ads_speed_notification_event_delivery_state
  on ads_speed_notification_event (delivery_state);

create index if not exists idx_ads_speed_notification_event_created_at
  on ads_speed_notification_event (created_at desc);
