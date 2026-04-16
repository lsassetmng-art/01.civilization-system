-- ============================================================
-- SHIFT MANAGER GENERATION TABLES
-- ============================================================

create table if not exists app_shift_manager.shift_generation_rule (
  generation_rule_id uuid primary key,
  company_id uuid not null,
  rule_name text not null,
  target_scope_type text not null,
  target_scope_id uuid null,
  period_type text not null,
  active_flag boolean not null default true,
  condition_json jsonb not null,
  priority_policy text null,
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint ck_shift_generation_rule_scope_type
    check (target_scope_type in ('team', 'department', 'office', 'mixed')),
  constraint ck_shift_generation_rule_period_type
    check (period_type in ('day', 'week', 'month'))
);

create table if not exists app_shift_manager.shift_generation_result (
  generation_result_id uuid primary key,
  schedule_id uuid not null,
  generation_rule_id uuid null,
  generated_at timestamptz not null default now(),
  generated_by_person_id uuid not null,
  generated_assignment_count integer not null default 0,
  unassigned_count integer not null default 0,
  warning_count integer not null default 0,
  result_summary_json jsonb null,
  constraint fk_shift_generation_result_schedule
    foreign key (schedule_id)
    references app_shift_manager.shift_schedule(schedule_id),
  constraint fk_shift_generation_result_rule
    foreign key (generation_rule_id)
    references app_shift_manager.shift_generation_rule(generation_rule_id),
  constraint ck_shift_generation_result_generated_assignment_count
    check (generated_assignment_count >= 0),
  constraint ck_shift_generation_result_unassigned_count
    check (unassigned_count >= 0),
  constraint ck_shift_generation_result_warning_count
    check (warning_count >= 0)
);

create table if not exists app_shift_manager.shift_generation_warning (
  generation_warning_id uuid primary key,
  generation_result_id uuid not null,
  warning_type text not null,
  warning_level text not null,
  target_date date null,
  target_slot text null,
  related_person_id uuid null,
  message text not null,
  details_json jsonb null,
  created_at timestamptz not null default now(),
  constraint fk_shift_generation_warning_result
    foreign key (generation_result_id)
    references app_shift_manager.shift_generation_result(generation_result_id),
  constraint ck_shift_generation_warning_type
    check (warning_type in ('unassigned_slot', 'requested_day_off_conflict', 'consecutive_work_risk', 'imbalance_warning', 'skill_shortage', 'priority_fallback')),
  constraint ck_shift_generation_warning_level
    check (warning_level in ('info', 'warning', 'high', 'critical'))
);
