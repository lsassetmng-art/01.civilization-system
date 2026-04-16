# ============================================================
# SHIFT MANAGER PHYSICAL DDL EXECUTION DESIGN
# ============================================================

status: execution-ddl-design-candidate
type: physical-ddl-execution-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document refines the physical DDL draft
toward an execution-ready design level.

It is not yet the final production execution SQL itself,
but it is fixed at a granularity that can be translated into execution SQL.

# ============================================================
# 2. FIXED PRINCIPLES
# ============================================================

fixed_principles:
- schema name is app_shift_manager
- separate draft and publication
- separate share rules and evaluated view scopes
- ERP export targets publication only
- auto generation belongs to draft-side responsibility
- audit/history rows should not be casually deleted
- draft-side deletion prefers logical delete

execution_focus:
- tighter type fixation
- more check constraints
- clearer unique/index definition
- formalized generation-side tables

# ============================================================
# 3. SCHEMA STRUCTURE
# ============================================================

dedicated_schema:
- app_shift_manager

schema_contents:
- business tables
- generation tables
- helper functions
- app-specific views

possible_future_externalization:
- common audit foundation
- common notification transport foundation
- common ERP connector logs

initial_recommendation:
Keep them inside ShiftManager schema for the first phase.

# ============================================================
# 4. EXECUTION-LEVEL TABLE SET
# ============================================================

core_tables:
- shift_schedule
- shift_assignment
- shift_publication
- shift_publication_assignment
- shift_share_rule
- shift_share_rule_target
- shift_view_scope
- shift_notification
- erp_linkage_state

history_audit_tables:
- shift_publish_history
- shift_share_history
- shift_access_audit

generation_tables:
- shift_generation_rule
- shift_generation_result
- shift_generation_warning

# ============================================================
# 5. COLUMN FIXATION DIRECTION
# ============================================================

shift_schedule_additional_columns:
- generation_mode text not null default 'manual'
- auto_generated_flag boolean not null default false
- has_generation_warnings boolean not null default false
- generation_rule_id uuid null
- auto_generation_summary_json jsonb null
- auto_generated_at timestamptz null
- auto_generated_by_person_id uuid null

shift_schedule_additional_check:
- generation_mode in ('manual','auto_generated','auto_generated_then_edited')

shift_assignment_additional_candidate:
- source_type text not null default 'manual'

source_type_examples:
- manual
- auto_generated
- auto_adjusted

shift_publication_optional_candidate:
- source_generation_mode text null

shift_notification_additional_candidate:
- channel_type text not null default 'in_app'

channel_type_examples:
- in_app
- push
- line
- slack
- sms
- mail

# ============================================================
# 6. EXECUTION ORDER
# ============================================================

recommended_execution_order:
1. schema
2. core tables
3. generation tables
4. history/audit tables
5. indexes
6. helper functions
7. triggers
8. views
9. RLS enable
10. policies

# ============================================================
# 7. SHIFT_SCHEDULE EXECUTION-READY IMAGE
# ============================================================

create table if not exists app_shift_manager.shift_schedule (
  schedule_id uuid primary key,
  company_id uuid not null,
  schedule_code text not null,
  schedule_name text not null,
  target_scope_type text not null,
  target_scope_id uuid null,
  target_period_type text not null,
  period_start_date date not null,
  period_end_date date not null,
  status text not null,
  draft_version_no integer not null default 1,
  current_publication_id uuid null,
  generation_mode text not null default 'manual',
  auto_generated_flag boolean not null default false,
  has_generation_warnings boolean not null default false,
  generation_rule_id uuid null,
  auto_generation_summary_json jsonb null,
  auto_generated_at timestamptz null,
  auto_generated_by_person_id uuid null,
  created_by_person_id uuid not null,
  updated_by_person_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  deleted_at timestamptz null,
  constraint uq_shift_schedule_company_code
    unique (company_id, schedule_code),
  constraint ck_shift_schedule_status
    check (status in ('draft', 'published', 'superseded', 'closed')),
  constraint ck_shift_schedule_target_period_type
    check (target_period_type in ('day', 'week', 'month')),
  constraint ck_shift_schedule_generation_mode
    check (generation_mode in ('manual', 'auto_generated', 'auto_generated_then_edited')),
  constraint ck_shift_schedule_period
    check (period_end_date >= period_start_date)
);

# ============================================================
# 8. SHIFT_GENERATION_RULE EXECUTION-READY IMAGE
# ============================================================

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

# ============================================================
# 9. SHIFT_GENERATION_RESULT EXECUTION-READY IMAGE
# ============================================================

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
    references app_shift_manager.shift_generation_rule(generation_rule_id)
);

# ============================================================
# 10. SHIFT_GENERATION_WARNING EXECUTION-READY IMAGE
# ============================================================

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
  constraint ck_shift_generation_warning_level
    check (warning_level in ('info', 'warning', 'high', 'critical'))
);

warning_type_examples:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

# ============================================================
# 11. INDEX POLICY
# ============================================================

generation_rule_indexes:
- (company_id, active_flag)
- (target_scope_type, target_scope_id)

generation_result_indexes:
- (schedule_id, generated_at desc)
- (generation_rule_id, generated_at desc)

generation_warning_indexes:
- (generation_result_id)
- (warning_level, target_date)

schedule_additional_indexes:
- (generation_mode)
- (auto_generated_flag, has_generation_warnings)

# ============================================================
# 12. TRIGGER / UPDATED_AT DIRECTION
# ============================================================

updated_at_trigger_targets:
- shift_schedule
- shift_assignment
- shift_share_rule
- erp_linkage_state
- shift_generation_rule

recommendation:
Reuse the same updated_at trigger strategy already planned.

# ============================================================
# 13. FK POLICY
# ============================================================

use_real_fk_inside_app_boundary:
- schedule -> assignment
- schedule -> publication relation side
- share_rule -> share_rule_target
- publication -> publication_assignment
- generation_result -> schedule
- generation_result -> generation_rule
- generation_warning -> generation_result

logical_reference_only_for_external_master:
- person_id
- company_id
- department_id
- team_id
- office_id

# ============================================================
# 14. ADDITIONAL CHECK CONSTRAINTS
# ============================================================

recommended_checks:
shift_assignment:
- start_time < end_time

shift_publication_assignment:
- start_time < end_time

shift_generation_result:
- generated_assignment_count >= 0
- unassigned_count >= 0
- warning_count >= 0

note:
Cross-table checks such as assignment date inside schedule period
are better handled in application logic or controlled functions
than with fragile DB-level cross-table constraints.

# ============================================================
# 15. HELPER FUNCTION CANDIDATES
# ============================================================

helper_candidates:
- fn_auto_generate_shift_draft(schedule_id uuid, generation_rule_id uuid, executed_by uuid)
- fn_apply_generation_result_to_draft(...)
- fn_collect_generation_warnings(...)

recommendation:
In this phase, tables and minimum helper direction are enough.
Generation logic functions may be fixed in the next step.

# ============================================================
# 16. CRITICAL DESIGN DECISIONS
# ============================================================

critical_points:
- generation_rule should stay jsonb-centered at first
- shift_schedule keeps generation metadata as auxiliary attributes
- warnings should be separate rows for review/fix flow
- auto-generated assignments still land in existing shift_assignment
- generation must not create a new publication state by itself

# ============================================================
# 17. CONCLUSION
# ============================================================

Execution-ready physical DDL design is stable with:
- the original core/history tables
- plus three generation tables

Even with auto generation added,
the design still preserves:
- main status simplicity
- manual publication control
- publication-only ERP export
- draft/publication separation

