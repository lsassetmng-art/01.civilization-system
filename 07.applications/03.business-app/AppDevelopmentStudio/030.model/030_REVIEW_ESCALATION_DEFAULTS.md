# ============================================================
# REVIEW ESCALATION DEFAULTS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

rules:

- escalation_rule_id: destructive_sql_guard
  trigger:
  - sql_safety_class = destructive_high_risk
  escalated_review_requirement: mandatory
  escalated_approval_requirement: mandatory

- escalation_rule_id: protected_branch_guard
  trigger:
  - action_code = git_push_protected_branch
  escalated_review_requirement: mandatory
  escalated_approval_requirement: mandatory

- escalation_rule_id: production_db_guard
  trigger:
  - environment_scope = production
  - action_group = sql_execution
  escalated_review_requirement: mandatory
  escalated_approval_requirement: mandatory

- escalation_rule_id: shared_component_guard
  trigger:
  - source_scope = businessos_shared
  - action_group = overwrite_or_replace
  escalated_review_requirement: mandatory
  escalated_approval_requirement: mandatory

- escalation_rule_id: local_apply_guard
  trigger:
  - target_scope = local_project
  - environment_scope != production
  escalated_review_requirement: optional
  escalated_approval_requirement: optional
