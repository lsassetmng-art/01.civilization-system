-- ============================================================
-- TRAINING COACH LIFE DDL DRAFT
-- status: canonical-draft
-- phase: implementation-readiness
-- system: TrainingCoach
-- schema: life
-- owner: Boss
-- prepared_by: Zero
-- db_reviewer: 佐藤
-- ============================================================

create schema if not exists life;

create table if not exists life.exercise_category (
  exercise_category_code text primary key,
  display_name_key text not null,
  sort_order integer not null default 0,
  is_active boolean not null default true
);

create table if not exists life.exercise_item (
  exercise_item_id uuid primary key default gen_random_uuid(),
  exercise_category_code text not null references life.exercise_category(exercise_category_code),
  exercise_name_key text not null,
  guidance_level text not null check (guidance_level in ('minimal','standard','detailed')),
  default_reps integer null,
  default_sets integer null,
  default_seconds integer null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists life.exercise_item_safety_notice (
  exercise_item_safety_notice_id uuid primary key default gen_random_uuid(),
  exercise_item_id uuid not null references life.exercise_item(exercise_item_id),
  safety_notice_code text not null,
  sort_order integer not null default 0
);

create table if not exists life.guide_content (
  guide_content_id uuid primary key default gen_random_uuid(),
  exercise_item_id uuid not null references life.exercise_item(exercise_item_id),
  locale text not null,
  title_key text not null,
  body_text_key text not null,
  media_type text not null check (media_type in ('video','image','text')),
  media_url text null,
  version_no integer not null default 1,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists life.training_goal (
  training_goal_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null,
  goal_name text not null,
  goal_type text not null check (goal_type in ('weight_loss','strength_up','flexibility_up','stamina_up','health_maintenance','custom')),
  target_value_text text null,
  start_date date not null,
  target_date date null,
  status text not null check (status in ('active','paused','completed','archived')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists life.training_plan (
  training_plan_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null,
  plan_name text not null,
  goal_type text not null check (goal_type in ('weight_loss','strength_up','flexibility_up','stamina_up','health_maintenance','custom')),
  schedule_type text not null check (schedule_type in ('daily','weekly')),
  default_duration_minutes integer not null check (default_duration_minutes > 0),
  difficulty_level text not null check (difficulty_level in ('beginner','easy','normal','hard')),
  status text not null check (status in ('active','paused','archived')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  deleted_at timestamptz null
);

create table if not exists life.training_plan_rest_rule (
  training_plan_rest_rule_id uuid primary key default gen_random_uuid(),
  training_plan_id uuid not null references life.training_plan(training_plan_id),
  weekday_code text not null check (weekday_code in ('mon','tue','wed','thu','fri','sat','sun')),
  created_at timestamptz not null default now()
);

create table if not exists life.training_plan_item (
  training_plan_item_id uuid primary key default gen_random_uuid(),
  training_plan_id uuid not null references life.training_plan(training_plan_id),
  exercise_item_id uuid not null references life.exercise_item(exercise_item_id),
  order_no integer not null check (order_no > 0),
  reps integer null check (reps is null or reps >= 0),
  sets integer null check (sets is null or sets >= 0),
  seconds integer null check (seconds is null or seconds >= 0),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists life.training_session (
  training_session_id uuid primary key default gen_random_uuid(),
  training_plan_id uuid not null references life.training_plan(training_plan_id),
  owner_user_id text not null,
  scheduled_date date not null,
  started_at timestamptz null,
  completed_at timestamptz null,
  execution_status text not null check (execution_status in ('scheduled','in_progress','completed','skipped','stopped')),
  actual_duration_minutes integer null check (actual_duration_minutes is null or actual_duration_minutes >= 0),
  fatigue_before integer null check (fatigue_before is null or fatigue_before between 1 and 5),
  fatigue_after integer null check (fatigue_after is null or fatigue_after between 1 and 5),
  note text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists life.completion_log (
  completion_log_id uuid primary key default gen_random_uuid(),
  training_session_id uuid not null unique references life.training_session(training_session_id),
  completion_result text not null check (completion_result in ('completed','partial','skipped','stopped')),
  achievement_rate integer not null check (achievement_rate between 0 and 100),
  earned_streak_increment boolean not null,
  finalized_at timestamptz not null default now(),
  created_at timestamptz not null default now()
);

create table if not exists life.fatigue_note (
  fatigue_note_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null,
  record_date date not null,
  fatigue_level integer not null check (fatigue_level between 1 and 5),
  body_condition text not null check (body_condition in ('very_good','good','normal','tired','bad')),
  memo text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  locked_at timestamptz null,
  unique (owner_user_id, record_date)
);

create table if not exists life.streak_summary (
  streak_summary_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null unique,
  current_streak_days integer not null default 0,
  longest_streak_days integer not null default 0,
  last_completed_date date null,
  weekly_completion_rate integer not null default 0 check (weekly_completion_rate between 0 and 100),
  updated_at timestamptz not null default now()
);

create table if not exists life.device_sync_state (
  device_sync_state_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null,
  source_system text not null check (source_system in ('bodymetrics','wearable','manual')),
  sync_status text not null check (sync_status in ('connected','disconnected','delayed','error')),
  last_synced_at timestamptz null,
  last_error_code text null,
  updated_at timestamptz not null default now(),
  unique (owner_user_id, source_system)
);

create table if not exists life.bodymetrics_daily_summary_cache (
  bodymetrics_daily_summary_cache_id uuid primary key default gen_random_uuid(),
  owner_user_id text not null,
  target_date date not null,
  weight_kg numeric(8,3) null,
  steps_count integer null,
  sleep_duration_minutes integer null,
  heart_rate_trend text null check (heart_rate_trend is null or heart_rate_trend in ('low','normal','high')),
  readiness_hint text null check (readiness_hint is null or readiness_hint in ('low','normal','high')),
  source_synced_at timestamptz not null,
  received_at timestamptz not null default now()
);

create table if not exists life.training_audit_event (
  training_audit_event_id uuid primary key default gen_random_uuid(),
  audit_event_code text not null,
  occurred_at timestamptz not null default now(),
  actor_type text not null check (actor_type in ('user','system','integration')),
  actor_id text null,
  target_entity_type text not null,
  target_entity_id text null,
  result text not null check (result in ('success','rejected','ignored')),
  reason_code text null,
  correlation_id text null,
  causation_id text null,
  request_source text null check (request_source is null or request_source in ('mobile_app','tablet_app','pc_app','integration_bodymetrics','integration_mealplanner','integration_lifeplanner','system_job')),
  payload_major_version integer null,
  payload_minor_version integer null
);

create table if not exists life.training_correction_event (
  training_correction_event_id uuid primary key default gen_random_uuid(),
  target_entity_type text not null,
  target_entity_id text not null,
  correction_type text not null check (correction_type in ('completion_result_fix','duration_fix','fatigue_fix','note_fix','duplicate_resolution')),
  requested_by_user_id text not null,
  reason_code text null,
  reason_note text null,
  payload_before_json jsonb null,
  payload_after_json jsonb null,
  approval_state text not null check (approval_state in ('requested','applied','rejected')),
  created_at timestamptz not null default now(),
  applied_at timestamptz null
);

create index if not exists idx_training_plan_owner_status
  on life.training_plan (owner_user_id, status);

create index if not exists idx_training_plan_owner_updated_at
  on life.training_plan (owner_user_id, updated_at desc);

create index if not exists idx_training_plan_item_plan_order
  on life.training_plan_item (training_plan_id, order_no);

create index if not exists idx_training_plan_item_exercise
  on life.training_plan_item (exercise_item_id);

create index if not exists idx_training_session_owner_date
  on life.training_session (owner_user_id, scheduled_date);

create index if not exists idx_training_session_owner_status_date
  on life.training_session (owner_user_id, execution_status, scheduled_date);

create index if not exists idx_training_session_plan_date
  on life.training_session (training_plan_id, scheduled_date);

create index if not exists idx_completion_log_finalized_at
  on life.completion_log (finalized_at desc);

create index if not exists idx_fatigue_note_owner_date
  on life.fatigue_note (owner_user_id, record_date desc);

create index if not exists idx_training_goal_owner_status
  on life.training_goal (owner_user_id, status);

create index if not exists idx_training_goal_target_date
  on life.training_goal (owner_user_id, target_date);

create index if not exists idx_guide_content_exercise_locale_active
  on life.guide_content (exercise_item_id, locale, is_active);

create index if not exists idx_device_sync_state_owner_source
  on life.device_sync_state (owner_user_id, source_system);

create index if not exists idx_bodymetrics_cache_owner_date
  on life.bodymetrics_daily_summary_cache (owner_user_id, target_date desc);

create index if not exists idx_bodymetrics_cache_owner_source_synced
  on life.bodymetrics_daily_summary_cache (owner_user_id, source_synced_at desc);

create index if not exists idx_training_audit_event_occurred_at
  on life.training_audit_event (occurred_at desc);

create index if not exists idx_training_audit_event_target
  on life.training_audit_event (target_entity_type, target_entity_id);

create index if not exists idx_training_audit_event_correlation
  on life.training_audit_event (correlation_id);

create index if not exists idx_training_correction_event_target
  on life.training_correction_event (target_entity_type, target_entity_id);

create index if not exists idx_training_correction_event_created_at
  on life.training_correction_event (created_at desc);
