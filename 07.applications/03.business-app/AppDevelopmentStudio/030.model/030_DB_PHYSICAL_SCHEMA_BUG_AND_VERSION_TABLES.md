# ============================================================
# DB PHYSICAL SCHEMA BUG AND VERSION TABLES
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

tables:

artifact_version:
  purpose: version assignment by artifact
  pk: artifact_version_id
  columns:
    - artifact_version_id: uuid not null pk
    - artifact_type: text not null
    - artifact_key: text not null
    - version_value: text not null
    - version_policy_id: uuid null
    - created_at: timestamptz not null
  indexes:
    - artifact_type
    - artifact_key
    - version_value
  uniques:
    - artifact_type + artifact_key + version_value

bug_record:
  purpose: defect management
  pk: bug_id
  columns:
    - bug_id: uuid not null pk
    - title: text not null
    - summary: text null
    - detail: text null
    - status: text not null
    - priority: text not null
    - severity: text not null
    - reported_by: text not null
    - reported_at: timestamptz not null
    - detected_phase: text null
    - affected_module: text null
    - affected_function: text null
    - reproduction_steps: text null
    - expected_result: text null
    - actual_result: text null
    - root_cause: text null
    - fix_policy: text null
    - fix_owner: text null
    - fix_version: text null
    - related_design_version: text null
    - related_code_version: text null
    - related_git_branch: text null
    - related_commit: text null
    - verification_result: text null
    - closed_at: timestamptz null
    - notes: text null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - status
    - priority
    - severity
    - affected_module
    - fix_owner

bug_artifact_link:
  purpose: links bug to affected artifacts
  pk: bug_artifact_link_id
  columns:
    - bug_artifact_link_id: uuid not null pk
    - bug_id: uuid not null fk bug_record.bug_id
    - artifact_type: text not null
    - artifact_key: text not null
    - created_at: timestamptz not null
  indexes:
    - bug_id
    - artifact_type
    - artifact_key
