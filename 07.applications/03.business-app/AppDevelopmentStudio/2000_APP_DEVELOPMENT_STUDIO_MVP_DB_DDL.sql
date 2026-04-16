-- ============================================================
-- APP DEVELOPMENT STUDIO MVP DB DDL
-- ============================================================

-- status: implementation-start
-- system: applications
-- application: App Development Studio
-- owner: Boss
-- prepared_by: Zero

begin;

create schema if not exists app_development_studio;

-- ============================================================
-- 1. development_request
-- ============================================================

create table if not exists app_development_studio.development_request (
  request_id uuid primary key,
  request_title text not null,
  request_summary text,
  input_mode text not null,
  generation_mode text not null,
  target_project_id uuid not null,
  target_environment_id uuid,
  rule_profile_id uuid,
  review_mode text not null,
  approval_mode text not null,
  build_mode text not null,
  git_mode text not null,
  status text not null,
  created_by text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_development_request_status
  on app_development_studio.development_request(status);

create index if not exists idx_ads_development_request_target_project
  on app_development_studio.development_request(target_project_id);

create index if not exists idx_ads_development_request_created_at
  on app_development_studio.development_request(created_at);

-- ============================================================
-- 2. rule_profile
-- ============================================================

create table if not exists app_development_studio.rule_profile (
  rule_profile_id uuid primary key,
  profile_name text not null,
  profile_scope text not null,
  profile_description text,
  active_version_id uuid,
  is_default boolean not null default false,
  status text not null,
  created_by text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_rule_profile_scope
  on app_development_studio.rule_profile(profile_scope);

create index if not exists idx_ads_rule_profile_status
  on app_development_studio.rule_profile(status);

create index if not exists idx_ads_rule_profile_default
  on app_development_studio.rule_profile(is_default);

-- ============================================================
-- 3. rule_profile_version
-- ============================================================

create table if not exists app_development_studio.rule_profile_version (
  rule_profile_version_id uuid primary key,
  rule_profile_id uuid not null references app_development_studio.rule_profile(rule_profile_id) on delete cascade,
  version_no text not null,
  effective_from timestamptz,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (rule_profile_id, version_no)
);

create index if not exists idx_ads_rule_profile_version_profile
  on app_development_studio.rule_profile_version(rule_profile_id);

create index if not exists idx_ads_rule_profile_version_status
  on app_development_studio.rule_profile_version(status);

-- ============================================================
-- 4. proposal
-- ============================================================

create table if not exists app_development_studio.proposal (
  proposal_id uuid primary key,
  request_id uuid not null references app_development_studio.development_request(request_id) on delete cascade,
  proposal_type text not null,
  proposal_title text not null,
  proposal_summary text,
  proposal_status text not null,
  risk_level text not null,
  diff_available boolean not null default false,
  artifact_count integer not null default 0,
  generated_at timestamptz not null default now(),
  generated_by_mode text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_proposal_request
  on app_development_studio.proposal(request_id);

create index if not exists idx_ads_proposal_status
  on app_development_studio.proposal(proposal_status);

create index if not exists idx_ads_proposal_type
  on app_development_studio.proposal(proposal_type);

create index if not exists idx_ads_proposal_generated_at
  on app_development_studio.proposal(generated_at);

-- ============================================================
-- 5. proposal_review
-- ============================================================

create table if not exists app_development_studio.proposal_review (
  proposal_review_id uuid primary key,
  proposal_id uuid not null references app_development_studio.proposal(proposal_id) on delete cascade,
  review_status text not null,
  reviewer text,
  reviewed_at timestamptz,
  review_comment text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_proposal_review_proposal
  on app_development_studio.proposal_review(proposal_id);

create index if not exists idx_ads_proposal_review_status
  on app_development_studio.proposal_review(review_status);

-- ============================================================
-- 6. apply_execution
-- ============================================================

create table if not exists app_development_studio.apply_execution (
  apply_execution_id uuid primary key,
  proposal_id uuid not null references app_development_studio.proposal(proposal_id) on delete cascade,
  target_scope text not null,
  execution_mode text not null,
  execution_status text not null,
  backup_mode text not null,
  verification_required boolean not null default true,
  started_at timestamptz,
  finished_at timestamptz,
  executed_by_mode text not null,
  error_summary text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_apply_execution_proposal
  on app_development_studio.apply_execution(proposal_id);

create index if not exists idx_ads_apply_execution_status
  on app_development_studio.apply_execution(execution_status);

create index if not exists idx_ads_apply_execution_started_at
  on app_development_studio.apply_execution(started_at);

-- ============================================================
-- 7. audit_run
-- ============================================================

create table if not exists app_development_studio.audit_run (
  audit_run_id uuid primary key,
  request_id uuid references app_development_studio.development_request(request_id) on delete set null,
  run_status text not null,
  started_at timestamptz not null default now(),
  finished_at timestamptz,
  initiated_by text not null,
  notes text
);

create index if not exists idx_ads_audit_run_request
  on app_development_studio.audit_run(request_id);

create index if not exists idx_ads_audit_run_status
  on app_development_studio.audit_run(run_status);

create index if not exists idx_ads_audit_run_started_at
  on app_development_studio.audit_run(started_at);

-- ============================================================
-- 8. audit_step
-- ============================================================

create table if not exists app_development_studio.audit_step (
  audit_step_id uuid primary key,
  audit_run_id uuid not null references app_development_studio.audit_run(audit_run_id) on delete cascade,
  step_code text not null,
  step_status text not null,
  started_at timestamptz,
  finished_at timestamptz,
  error_summary text
);

create index if not exists idx_ads_audit_step_run
  on app_development_studio.audit_step(audit_run_id);

create index if not exists idx_ads_audit_step_code
  on app_development_studio.audit_step(step_code);

create index if not exists idx_ads_audit_step_status
  on app_development_studio.audit_step(step_status);

-- ============================================================
-- 9. language_profile
-- ============================================================

create table if not exists app_development_studio.language_profile (
  language_profile_id uuid primary key,
  profile_name text not null,
  ui_language text not null,
  input_assist_language text not null,
  design_output_language text not null,
  test_output_language text not null,
  bug_output_language text not null,
  review_output_language text not null,
  release_output_language text not null,
  fallback_language text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_language_profile_name
  on app_development_studio.language_profile(profile_name);

create index if not exists idx_ads_language_profile_status
  on app_development_studio.language_profile(status);

-- ============================================================
-- 10. build_policy
-- ============================================================

create table if not exists app_development_studio.build_policy (
  build_policy_id uuid primary key,
  policy_name text not null,
  build_mode text not null,
  target_scope text not null,
  precheck_enabled boolean not null default true,
  failure_policy text not null,
  artifact_retention text,
  external_build_note text,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_build_policy_name
  on app_development_studio.build_policy(policy_name);

create index if not exists idx_ads_build_policy_mode
  on app_development_studio.build_policy(build_mode);

-- ============================================================
-- 11. git_repository
-- ============================================================

create table if not exists app_development_studio.git_repository (
  git_repository_id uuid primary key,
  repository_name text not null,
  provider_name text not null,
  remote_url text not null,
  local_path text,
  default_branch text,
  branch_policy text,
  direct_main_update_allowed boolean not null default false,
  review_before_push boolean not null default true,
  approval_before_push boolean not null default true,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_git_repository_name
  on app_development_studio.git_repository(repository_name);

create index if not exists idx_ads_git_repository_provider
  on app_development_studio.git_repository(provider_name);

create index if not exists idx_ads_git_repository_status
  on app_development_studio.git_repository(status);

-- ============================================================
-- 12. git_commit_record
-- ============================================================

create table if not exists app_development_studio.git_commit_record (
  git_commit_record_id uuid primary key,
  git_repository_id uuid not null references app_development_studio.git_repository(git_repository_id) on delete cascade,
  branch_name text not null,
  commit_hash text,
  commit_title text not null,
  committed_at timestamptz,
  created_at timestamptz not null default now()
);

create index if not exists idx_ads_git_commit_record_repo
  on app_development_studio.git_commit_record(git_repository_id);

create index if not exists idx_ads_git_commit_record_branch
  on app_development_studio.git_commit_record(branch_name);

create index if not exists idx_ads_git_commit_record_committed_at
  on app_development_studio.git_commit_record(committed_at);

-- ============================================================
-- 13. bug_record
-- ============================================================

create table if not exists app_development_studio.bug_record (
  bug_id uuid primary key,
  title text not null,
  summary text,
  detail text,
  status text not null,
  priority text not null,
  severity text not null,
  reported_by text not null,
  reported_at timestamptz not null default now(),
  detected_phase text,
  affected_module text,
  affected_function text,
  reproduction_steps text,
  expected_result text,
  actual_result text,
  root_cause text,
  fix_policy text,
  fix_owner text,
  fix_version text,
  related_design_version text,
  related_code_version text,
  related_git_branch text,
  related_commit text,
  verification_result text,
  closed_at timestamptz,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_bug_record_status
  on app_development_studio.bug_record(status);

create index if not exists idx_ads_bug_record_priority
  on app_development_studio.bug_record(priority);

create index if not exists idx_ads_bug_record_severity
  on app_development_studio.bug_record(severity);

create index if not exists idx_ads_bug_record_affected_module
  on app_development_studio.bug_record(affected_module);

create index if not exists idx_ads_bug_record_fix_owner
  on app_development_studio.bug_record(fix_owner);

-- ============================================================
-- 14. artifact_version
-- ============================================================

create table if not exists app_development_studio.artifact_version (
  artifact_version_id uuid primary key,
  artifact_type text not null,
  artifact_key text not null,
  version_value text not null,
  version_policy_id uuid,
  created_at timestamptz not null default now(),
  unique (artifact_type, artifact_key, version_value)
);

create index if not exists idx_ads_artifact_version_type_key
  on app_development_studio.artifact_version(artifact_type, artifact_key);

create index if not exists idx_ads_artifact_version_value
  on app_development_studio.artifact_version(version_value);

-- ============================================================
-- 15. test_progress_record
-- ============================================================

create table if not exists app_development_studio.test_progress_record (
  test_progress_record_id uuid primary key,
  test_item_id uuid,
  test_phase text not null,
  target_function text,
  target_screen text,
  assignee text,
  execution_status text not null,
  result_status text not null,
  priority text,
  planned_date date,
  executed_date date,
  retest_required boolean not null default false,
  related_bug_id uuid references app_development_studio.bug_record(bug_id) on delete set null,
  manual_override_enabled boolean not null default true,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_test_progress_phase
  on app_development_studio.test_progress_record(test_phase);

create index if not exists idx_ads_test_progress_execution_status
  on app_development_studio.test_progress_record(execution_status);

create index if not exists idx_ads_test_progress_result_status
  on app_development_studio.test_progress_record(result_status);

create index if not exists idx_ads_test_progress_related_bug
  on app_development_studio.test_progress_record(related_bug_id);

-- ============================================================
-- 16. development_progress_record
-- ============================================================

create table if not exists app_development_studio.development_progress_record (
  development_progress_record_id uuid primary key,
  progress_category text not null,
  target_artifact text,
  target_module text,
  phase text not null,
  status text not null,
  completion_rate numeric(5,2) not null default 0,
  assignee text,
  planned_start date,
  planned_end date,
  actual_start date,
  actual_end date,
  related_version text,
  related_bug_count integer not null default 0,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ads_dev_progress_category
  on app_development_studio.development_progress_record(progress_category);

create index if not exists idx_ads_dev_progress_phase
  on app_development_studio.development_progress_record(phase);

create index if not exists idx_ads_dev_progress_status
  on app_development_studio.development_progress_record(status);

commit;
