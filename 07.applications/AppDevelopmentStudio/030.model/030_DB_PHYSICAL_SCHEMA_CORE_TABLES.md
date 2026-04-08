# ============================================================
# DB PHYSICAL SCHEMA CORE TABLES
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

tables:

development_request:
  purpose: root user request
  pk: request_id
  columns:
    - request_id: uuid not null pk
    - request_title: text not null
    - request_summary: text null
    - input_mode: text not null
    - generation_mode: text not null
    - target_project_id: uuid not null
    - target_environment_id: uuid null
    - rule_profile_id: uuid null
    - review_mode: text not null
    - approval_mode: text not null
    - build_mode: text not null
    - git_mode: text not null
    - status: text not null
    - created_by: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - status
    - target_project_id
    - created_at

proposal:
  purpose: generated and reviewable candidate output
  pk: proposal_id
  columns:
    - proposal_id: uuid not null pk
    - request_id: uuid not null fk development_request.request_id
    - proposal_type: text not null
    - proposal_title: text not null
    - proposal_summary: text null
    - proposal_status: text not null
    - risk_level: text not null
    - diff_available: boolean not null
    - artifact_count: integer not null
    - generated_at: timestamptz not null
    - generated_by_mode: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - request_id
    - proposal_status
    - proposal_type

proposal_review:
  purpose: review decision metadata
  pk: proposal_review_id
  columns:
    - proposal_review_id: uuid not null pk
    - proposal_id: uuid not null fk proposal.proposal_id
    - review_status: text not null
    - reviewer: text null
    - reviewed_at: timestamptz null
    - review_comment: text null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - proposal_id
    - review_status

apply_execution:
  purpose: execution record for approved apply
  pk: apply_execution_id
  columns:
    - apply_execution_id: uuid not null pk
    - proposal_id: uuid not null fk proposal.proposal_id
    - target_scope: text not null
    - execution_mode: text not null
    - execution_status: text not null
    - backup_mode: text not null
    - verification_required: boolean not null
    - started_at: timestamptz null
    - finished_at: timestamptz null
    - executed_by_mode: text not null
    - error_summary: text null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - proposal_id
    - execution_status
    - started_at

audit_run:
  purpose: run-level audit
  pk: audit_run_id
  columns:
    - audit_run_id: uuid not null pk
    - request_id: uuid null fk development_request.request_id
    - run_status: text not null
    - started_at: timestamptz not null
    - finished_at: timestamptz null
    - initiated_by: text not null
    - notes: text null
  indexes:
    - request_id
    - run_status
    - started_at

audit_step:
  purpose: step-level audit
  pk: audit_step_id
  columns:
    - audit_step_id: uuid not null pk
    - audit_run_id: uuid not null fk audit_run.audit_run_id
    - step_code: text not null
    - step_status: text not null
    - started_at: timestamptz null
    - finished_at: timestamptz null
    - error_summary: text null
  indexes:
    - audit_run_id
    - step_code
    - step_status
