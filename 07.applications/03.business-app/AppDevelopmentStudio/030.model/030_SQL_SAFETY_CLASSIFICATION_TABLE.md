# ============================================================
# SQL SAFETY CLASSIFICATION TABLE
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

classes:

- sql_safety_class: select_safe
  includes:
  - select
  - explain
  default_review_requirement: optional
  default_approval_requirement: optional
  backup_requirement: none
  production_execution_default: allowed_if_policy_allows

- sql_safety_class: write_guarded
  includes:
  - insert
  - update
  - delete
  default_review_requirement: recommended
  default_approval_requirement: mandatory
  backup_requirement: recommended
  production_execution_default: guarded

- sql_safety_class: ddl_guarded
  includes:
  - create
  - alter
  - create index
  default_review_requirement: mandatory
  default_approval_requirement: mandatory
  backup_requirement: mandatory
  production_execution_default: guarded

- sql_safety_class: destructive_high_risk
  includes:
  - drop
  - truncate
  - destructive alter
  default_review_requirement: mandatory
  default_approval_requirement: mandatory
  backup_requirement: mandatory
  production_execution_default: blocked_or_strongly_guarded
