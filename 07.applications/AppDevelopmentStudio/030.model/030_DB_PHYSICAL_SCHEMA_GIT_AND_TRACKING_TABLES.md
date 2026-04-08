# ============================================================
# DB PHYSICAL SCHEMA GIT AND TRACKING TABLES
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

tables:

git_repository:
  purpose: attached/cloned repository
  pk: git_repository_id
  columns:
    - git_repository_id: uuid not null pk
    - repository_name: text not null
    - provider_name: text not null
    - remote_url: text not null
    - local_path: text null
    - default_branch: text null
    - branch_policy: text null
    - direct_main_update_allowed: boolean not null
    - review_before_push: boolean not null
    - approval_before_push: boolean not null
    - status: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - repository_name
    - provider_name
    - status

git_commit_record:
  purpose: executed commit trace
  pk: git_commit_record_id
  columns:
    - git_commit_record_id: uuid not null pk
    - git_repository_id: uuid not null fk git_repository.git_repository_id
    - branch_name: text not null
    - commit_hash: text null
    - commit_title: text not null
    - committed_at: timestamptz null
    - created_at: timestamptz not null
  indexes:
    - git_repository_id
    - branch_name
    - committed_at

test_progress_record:
  purpose: test progress tracking
  pk: test_progress_record_id
  columns:
    - test_progress_record_id: uuid not null pk
    - test_item_id: uuid null
    - test_phase: text not null
    - target_function: text null
    - target_screen: text null
    - assignee: text null
    - execution_status: text not null
    - result_status: text not null
    - priority: text null
    - planned_date: date null
    - executed_date: date null
    - retest_required: boolean not null
    - related_bug_id: uuid null
    - manual_override_enabled: boolean not null
    - notes: text null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - test_phase
    - execution_status
    - result_status
    - related_bug_id

development_progress_record:
  purpose: one-app project progress tracking
  pk: development_progress_record_id
  columns:
    - development_progress_record_id: uuid not null pk
    - progress_category: text not null
    - target_artifact: text null
    - target_module: text null
    - phase: text not null
    - status: text not null
    - completion_rate: numeric(5,2) not null
    - assignee: text null
    - planned_start: date null
    - planned_end: date null
    - actual_start: date null
    - actual_end: date null
    - related_version: text null
    - related_bug_count: integer not null
    - notes: text null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - progress_category
    - phase
    - status
