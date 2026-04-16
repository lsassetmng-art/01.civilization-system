-- ============================================================
-- SHIFT MANAGER ADDITIONAL FEATURE TABLES
-- ============================================================

create table if not exists app_shift_manager.shift_requested_day_off (
  requested_day_off_id uuid primary key,
  company_id uuid not null,
  site_id uuid not null,
  person_id uuid not null,
  requested_date date not null,
  requested_status text not null,
  request_note text null,
  review_note text null,
  requested_at timestamptz not null default now(),
  reviewed_by_person_id uuid null,
  reviewed_at timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint ck_shift_requested_day_off_status
    check (requested_status in ('submitted', 'approved', 'rejected', 'cancelled'))
);

create table if not exists app_shift_manager.shift_publication_difference (
  publication_difference_id uuid primary key,
  company_id uuid not null,
  old_publication_id uuid not null,
  new_publication_id uuid not null,
  affected_person_id uuid null,
  difference_type text not null,
  difference_summary text not null,
  before_value_json jsonb null,
  after_value_json jsonb null,
  created_at timestamptz not null default now(),
  constraint ck_shift_publication_difference_type
    check (difference_type in (
      'time_changed',
      'person_changed',
      'role_changed',
      'office_changed',
      'assignment_added',
      'assignment_removed'
    ))
);

create table if not exists app_shift_manager.shift_change_confirmation (
  change_confirmation_id uuid primary key,
  company_id uuid not null,
  publication_difference_id uuid not null,
  publication_id uuid not null,
  target_person_id uuid not null,
  confirmation_status text not null,
  confirmed_at timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint ck_shift_change_confirmation_status
    check (confirmation_status in ('pending', 'confirmed', 'ignored'))
);

create table if not exists app_shift_manager.shift_auto_generation_schedule (
  auto_generation_schedule_id uuid primary key,
  company_id uuid not null,
  site_license_id uuid not null,
  rule_name text not null,
  target_scope_type text not null,
  target_scope_id uuid not null,
  generation_rule_id uuid not null,
  schedule_type text not null,
  execution_timezone text not null,
  weekly_day_of_week text null,
  monthly_day integer null,
  monthly_use_last_day boolean not null default false,
  execution_time time not null,
  target_period_mode text not null,
  active_flag boolean not null default true,
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint ck_shift_auto_generation_schedule_type
    check (schedule_type in ('weekly', 'monthly_fixed_day', 'monthly_last_day', 'once')),
  constraint ck_shift_auto_generation_weekday
    check (weekly_day_of_week is null or weekly_day_of_week in ('mon','tue','wed','thu','fri','sat','sun')),
  constraint ck_shift_auto_generation_monthly_day
    check (monthly_day is null or monthly_day between 1 and 31),
  constraint ck_shift_auto_generation_target_period_mode
    check (target_period_mode in ('next_week', 'next_month'))
);

create table if not exists app_shift_manager.shift_auto_generation_execution (
  auto_generation_execution_id uuid primary key,
  company_id uuid not null,
  auto_generation_schedule_id uuid not null,
  executed_at timestamptz not null,
  execution_status text not null,
  generated_schedule_id uuid null,
  generation_result_id uuid null,
  warning_count integer not null default 0,
  unassigned_count integer not null default 0,
  error_code text null,
  error_message text null,
  created_at timestamptz not null default now(),
  constraint ck_shift_auto_generation_execution_status
    check (execution_status in ('scheduled', 'running', 'success', 'failed', 'skipped'))
);

create table if not exists app_shift_manager.shift_site_dashboard_snapshot (
  site_dashboard_snapshot_id uuid primary key,
  company_id uuid not null,
  site_id uuid not null,
  snapshot_at timestamptz not null,
  subscription_status text not null,
  unpublished_count integer not null default 0,
  shortage_count integer not null default 0,
  warning_count integer not null default 0,
  unconfirmed_change_count integer not null default 0,
  erp_failed_count integer not null default 0,
  created_at timestamptz not null default now(),
  constraint ck_shift_site_dashboard_snapshot_status
    check (subscription_status in ('trial', 'active', 'grace', 'inactive'))
);

create table if not exists app_shift_manager.shift_site_analytics_snapshot (
  site_analytics_snapshot_id uuid primary key,
  company_id uuid not null,
  site_id uuid not null,
  period_start_date date not null,
  period_end_date date not null,
  same_day_change_count integer not null default 0,
  pdf_export_count integer not null default 0,
  erp_failure_count integer not null default 0,
  requested_day_off_pending_count integer not null default 0,
  change_confirmation_pending_count integer not null default 0,
  created_at timestamptz not null default now()
);
