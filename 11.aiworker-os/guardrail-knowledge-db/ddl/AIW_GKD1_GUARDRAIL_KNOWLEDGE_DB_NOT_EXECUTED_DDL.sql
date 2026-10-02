-- ============================================================
-- AIWorkerOS Guardrail Knowledge DB
-- GKD-1 NOT_EXECUTED DDL DRAFT
-- ============================================================
-- STATUS: REVIEW_ONLY_NOT_EXECUTED
-- TARGET_SCHEMA: aiworker
-- DB_CONNECTION: PERSONA_DATABASE_URL
-- DB_WRITE: NO in this phase
-- DDL_APPLY: NO in this phase
-- API_POST: NO
-- CODE_PATCH: NO
-- GIT_PUSH: NO
--
-- IMPORTANT:
-- This file is a DDL draft for Sato review.
-- Do not execute this file until:
-- 1. GKD-0/GKD-0R/GKD-0S evidence is reviewed
-- 2. Sato DB review is completed
-- 3. Boss gives explicit GO
-- 4. Apply script wraps this in a transaction with rollback handling
--
-- Apply phase must be separate: GKD-2.
-- ============================================================

-- ============================================================
-- 0. Extensions / schema
-- ============================================================

-- No CREATE EXTENSION here.
-- Use gen_random_uuid() only if pgcrypto is already available.
-- If not available, GKD-2 apply must decide whether to use existing uuid generation convention.

-- Expected owner schema:
-- aiworker

-- ============================================================
-- 1. Tables
-- ============================================================

create table if not exists aiworker.guardrail_mistake_case (
  mistake_case_id uuid primary key default gen_random_uuid(),
  case_code text not null unique,
  title text not null,
  target_os_code text not null,
  target_app_code text,
  target_domain_code text,
  phase_code text,
  mistake_category_code text not null,
  severity_code text not null,
  occurred_at timestamptz,
  detected_at timestamptz,
  summary_text text not null,
  root_cause_text text,
  impact_text text,
  correct_response_text text,
  recurrence_prevention_text text,
  next_check_condition_text text,
  related_report_path text,
  related_run_dir text,
  status_code text not null default 'active',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint guardrail_mistake_case_status_ck check (status_code in ('active','inactive','deprecated','replaced','draft')),
  constraint guardrail_mistake_case_severity_ck check (severity_code in ('info','caution','warn','stop','critical'))
);

create table if not exists aiworker.guardrail_failure_pattern (
  failure_pattern_id uuid primary key default gen_random_uuid(),
  pattern_code text not null unique,
  pattern_name text not null,
  category_code text not null,
  severity_code text not null,
  trigger_condition_text text not null,
  prohibited_action_text text,
  required_action_text text,
  detection_hint_text text,
  auto_action_code text not null,
  status_code text not null default 'active',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint guardrail_failure_pattern_status_ck check (status_code in ('active','inactive','deprecated','replaced','draft')),
  constraint guardrail_failure_pattern_severity_ck check (severity_code in ('info','caution','warn','stop','critical')),
  constraint guardrail_failure_pattern_auto_action_ck check (auto_action_code in ('info','warn','block','require_dump','require_review','require_confirmation','require_ui_test','require_rollback_plan','require_secret_scan'))
);

create table if not exists aiworker.guardrail_response_runbook (
  response_runbook_id uuid primary key default gen_random_uuid(),
  runbook_code text not null unique,
  title text not null,
  applies_to_pattern_code text,
  applies_to_category_code text,
  severity_code text not null,
  first_response_text text not null,
  investigation_steps_text text,
  repair_steps_text text,
  rollback_condition_text text,
  verification_steps_text text,
  completion_condition_text text,
  status_code text not null default 'active',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint guardrail_response_runbook_status_ck check (status_code in ('active','inactive','deprecated','replaced','draft')),
  constraint guardrail_response_runbook_severity_ck check (severity_code in ('info','caution','warn','stop','critical'))
);

create table if not exists aiworker.guardrail_preflight_template (
  preflight_template_id uuid primary key default gen_random_uuid(),
  template_code text not null unique,
  target_work_type_code text not null,
  title text not null,
  checklist_jsonb jsonb not null,
  stop_condition_jsonb jsonb,
  required_evidence_jsonb jsonb,
  status_code text not null default 'active',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint guardrail_preflight_template_status_ck check (status_code in ('active','inactive','deprecated','replaced','draft')),
  constraint guardrail_preflight_template_work_type_ck check (target_work_type_code in ('design','code_patch','db_readonly','db_apply','api_patch','ui_patch','server_patch','artifact_generation','git_commit','git_push','handoff','report_only'))
);

create table if not exists aiworker.guardrail_rule (
  guardrail_rule_id uuid primary key default gen_random_uuid(),
  rule_code text not null unique,
  rule_name text not null,
  category_code text not null,
  severity_code text not null,
  rule_text text not null,
  rationale_text text,
  required_action_text text,
  prohibited_action_text text,
  exception_condition_text text,
  status_code text not null default 'active',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint guardrail_rule_status_ck check (status_code in ('active','inactive','deprecated','replaced','draft')),
  constraint guardrail_rule_severity_ck check (severity_code in ('info','caution','warn','stop','critical'))
);

create table if not exists aiworker.guardrail_scope_binding (
  scope_binding_id uuid primary key default gen_random_uuid(),
  rule_code text not null,
  target_os_code text not null,
  target_app_code text,
  target_work_type_code text,
  target_file_pattern text,
  applies_to_db_write_flag boolean not null default false,
  applies_to_api_post_flag boolean not null default false,
  applies_to_ui_flag boolean not null default false,
  applies_to_git_flag boolean not null default false,
  priority_int int not null default 100,
  status_code text not null default 'active',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint guardrail_scope_binding_status_ck check (status_code in ('active','inactive','deprecated','replaced','draft')),
  constraint guardrail_scope_binding_priority_ck check (priority_int >= 0)
);

create table if not exists aiworker.guardrail_evidence_link (
  evidence_link_id uuid primary key default gen_random_uuid(),
  evidence_code text not null unique,
  target_os_code text not null,
  target_app_code text,
  work_phase_code text,
  related_rule_code text,
  related_pattern_code text,
  related_case_code text,
  final_status text,
  pass_count int,
  warn_count int,
  fail_count int,
  report_path text,
  run_dir text,
  patch_flag boolean not null default false,
  db_write_flag boolean not null default false,
  api_post_flag boolean not null default false,
  git_push_flag boolean not null default false,
  secret_scan_status_code text,
  created_at timestamptz not null default now(),
  constraint guardrail_evidence_link_pass_count_ck check (pass_count is null or pass_count >= 0),
  constraint guardrail_evidence_link_warn_count_ck check (warn_count is null or warn_count >= 0),
  constraint guardrail_evidence_link_fail_count_ck check (fail_count is null or fail_count >= 0)
);

create table if not exists aiworker.guardrail_runtime_check_result (
  runtime_check_result_id uuid primary key default gen_random_uuid(),
  request_id text,
  target_os_code text not null,
  target_app_code text,
  target_work_type_code text not null,
  check_status_code text not null,
  blocking_flag boolean not null default false,
  review_required_flag boolean not null default false,
  confirmation_required_flag boolean not null default false,
  ui_test_required_flag boolean not null default false,
  matched_rule_codes text[],
  matched_pattern_codes text[],
  check_summary_text text,
  required_next_action_text text,
  created_at timestamptz not null default now(),
  constraint guardrail_runtime_check_status_ck check (check_status_code in ('pass','warn','blocked','review_required','confirmation_required','insufficient_context'))
);

create table if not exists aiworker.guardrail_candidate_intake (
  candidate_intake_id uuid primary key default gen_random_uuid(),
  candidate_code text not null unique,
  source_type_code text not null,
  source_text text not null,
  suggested_category_code text,
  suggested_severity_code text,
  suggested_rule_text text,
  suggested_prevention_text text,
  review_status_code text not null default 'pending',
  reviewer_note text,
  promoted_rule_code text,
  promoted_case_code text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint guardrail_candidate_intake_source_type_ck check (source_type_code in ('user_instruction','execution_failure','report_warning','ai_self_check','manual_review','handoff_note')),
  constraint guardrail_candidate_intake_review_status_ck check (review_status_code in ('pending','accepted','rejected','merged','needs_more_context')),
  constraint guardrail_candidate_intake_severity_ck check (suggested_severity_code is null or suggested_severity_code in ('info','caution','warn','stop','critical'))
);

-- ============================================================
-- 2. Indexes
-- ============================================================

create index if not exists idx_guardrail_mistake_case_target
  on aiworker.guardrail_mistake_case (target_os_code, target_app_code, mistake_category_code, status_code);

create index if not exists idx_guardrail_mistake_case_severity
  on aiworker.guardrail_mistake_case (severity_code, status_code, detected_at desc);

create index if not exists idx_guardrail_failure_pattern_category
  on aiworker.guardrail_failure_pattern (category_code, severity_code, status_code);

create index if not exists idx_guardrail_failure_pattern_auto_action
  on aiworker.guardrail_failure_pattern (auto_action_code, status_code);

create index if not exists idx_guardrail_response_runbook_pattern
  on aiworker.guardrail_response_runbook (applies_to_pattern_code, applies_to_category_code, status_code);

create index if not exists idx_guardrail_preflight_template_work_type
  on aiworker.guardrail_preflight_template (target_work_type_code, status_code);

create index if not exists idx_guardrail_rule_category
  on aiworker.guardrail_rule (category_code, severity_code, status_code);

create index if not exists idx_guardrail_scope_binding_scope
  on aiworker.guardrail_scope_binding (target_os_code, target_app_code, target_work_type_code, status_code, priority_int);

create index if not exists idx_guardrail_scope_binding_rule
  on aiworker.guardrail_scope_binding (rule_code, status_code);

create index if not exists idx_guardrail_evidence_link_target
  on aiworker.guardrail_evidence_link (target_os_code, target_app_code, work_phase_code, created_at desc);

create index if not exists idx_guardrail_evidence_link_related
  on aiworker.guardrail_evidence_link (related_rule_code, related_pattern_code, related_case_code);

create index if not exists idx_guardrail_runtime_check_request
  on aiworker.guardrail_runtime_check_result (request_id, created_at desc);

create index if not exists idx_guardrail_runtime_check_target
  on aiworker.guardrail_runtime_check_result (target_os_code, target_app_code, target_work_type_code, check_status_code, created_at desc);

create index if not exists idx_guardrail_runtime_check_flags
  on aiworker.guardrail_runtime_check_result (blocking_flag, review_required_flag, confirmation_required_flag, ui_test_required_flag);

create index if not exists idx_guardrail_candidate_intake_status
  on aiworker.guardrail_candidate_intake (review_status_code, source_type_code, created_at desc);

-- ============================================================
-- 3. Views
-- ============================================================

create or replace view aiworker.vw_guardrail_active_rule as
select
  r.rule_code,
  r.rule_name,
  r.category_code,
  r.severity_code,
  r.rule_text,
  r.required_action_text,
  r.prohibited_action_text,
  r.exception_condition_text,
  r.created_at,
  r.updated_at
from aiworker.guardrail_rule r
where r.status_code = 'active';

create or replace view aiworker.vw_guardrail_preflight_for_scope as
select
  b.scope_binding_id,
  b.rule_code,
  r.rule_name,
  r.category_code,
  r.severity_code,
  r.rule_text,
  r.required_action_text,
  r.prohibited_action_text,
  b.target_os_code,
  b.target_app_code,
  b.target_work_type_code,
  b.target_file_pattern,
  b.applies_to_db_write_flag,
  b.applies_to_api_post_flag,
  b.applies_to_ui_flag,
  b.applies_to_git_flag,
  b.priority_int
from aiworker.guardrail_scope_binding b
join aiworker.guardrail_rule r on r.rule_code = b.rule_code
where b.status_code = 'active'
  and r.status_code = 'active';

create or replace view aiworker.vw_guardrail_recent_mistake_case as
select
  case_code,
  title,
  target_os_code,
  target_app_code,
  target_domain_code,
  phase_code,
  mistake_category_code,
  severity_code,
  detected_at,
  summary_text,
  root_cause_text,
  recurrence_prevention_text,
  next_check_condition_text,
  related_report_path,
  related_run_dir,
  status_code
from aiworker.guardrail_mistake_case
where status_code = 'active'
order by coalesce(detected_at, created_at) desc;

create or replace view aiworker.vw_guardrail_blocking_condition as
select
  p.pattern_code as condition_code,
  p.pattern_name as condition_name,
  p.category_code,
  p.severity_code,
  p.trigger_condition_text,
  p.prohibited_action_text,
  p.required_action_text,
  p.auto_action_code,
  p.status_code
from aiworker.guardrail_failure_pattern p
where p.status_code = 'active'
  and p.auto_action_code in ('block','require_review','require_confirmation','require_ui_test','require_secret_scan');

create or replace view aiworker.vw_guardrail_evidence_summary as
select
  target_os_code,
  target_app_code,
  work_phase_code,
  count(*) as evidence_count,
  count(*) filter (where patch_flag) as patch_count,
  count(*) filter (where db_write_flag) as db_write_count,
  count(*) filter (where api_post_flag) as api_post_count,
  count(*) filter (where git_push_flag) as git_push_count,
  max(created_at) as latest_created_at
from aiworker.guardrail_evidence_link
group by target_os_code, target_app_code, work_phase_code;

-- ============================================================
-- 4. Comments
-- ============================================================

comment on table aiworker.guardrail_mistake_case is
'AIWorkerOS Guardrail Knowledge DB: actual work mistake cases, impacts, responses, and recurrence prevention.';

comment on table aiworker.guardrail_failure_pattern is
'AIWorkerOS Guardrail Knowledge DB: reusable failure/prohibited/attention patterns for preflight matching.';

comment on table aiworker.guardrail_response_runbook is
'AIWorkerOS Guardrail Knowledge DB: formal response runbooks for mistakes, failures, and unsafe states.';

comment on table aiworker.guardrail_preflight_template is
'AIWorkerOS Guardrail Knowledge DB: work-type preflight checklist templates.';

comment on table aiworker.guardrail_rule is
'AIWorkerOS Guardrail Knowledge DB: canonical guardrail rules.';

comment on table aiworker.guardrail_scope_binding is
'AIWorkerOS Guardrail Knowledge DB: bindings from guardrail rules to OS/app/work-type/file scope.';

comment on table aiworker.guardrail_evidence_link is
'AIWorkerOS Guardrail Knowledge DB: evidence links to reports, run dirs, and final status metadata. Does not store artifact bodies or zip files.';

comment on table aiworker.guardrail_runtime_check_result is
'AIWorkerOS Guardrail Knowledge DB: runtime preflight/check result records.';

comment on table aiworker.guardrail_candidate_intake is
'AIWorkerOS Guardrail Knowledge DB: candidate intake for new guardrail rules, cases, and prevention knowledge.';

-- ============================================================
-- 5. RLS placeholder
-- ============================================================

-- RLS is intentionally not enabled in this draft.
-- GKD-1 review must decide access policy based on existing aiworker RLS conventions.
-- GKD-2 apply must not add permissive policies blindly.

-- ============================================================
-- 6. End
-- ============================================================

-- END OF REVIEW_ONLY_NOT_EXECUTED_DDL
