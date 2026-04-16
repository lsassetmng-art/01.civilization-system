# ============================================================
# AUTHORITY MATRIX DEFAULT ROWS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

rows:

- actor_role: owner
  action_code: sql_execute_destructive
  target_scope: any
  environment_scope: any
  allowed_flag: true
  review_requirement: mandatory
  approval_requirement: mandatory
  escalation_rule_ref: destructive_sql_guard

- actor_role: admin
  action_code: git_push_protected_branch
  target_scope: repository
  environment_scope: any
  allowed_flag: true
  review_requirement: mandatory
  approval_requirement: mandatory
  escalation_rule_ref: protected_branch_guard

- actor_role: project_manager
  action_code: approve_proposal
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: optional
  approval_requirement: mandatory
  escalation_rule_ref: none

- actor_role: developer
  action_code: create_request
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: none
  approval_requirement: none
  escalation_rule_ref: none

- actor_role: developer
  action_code: apply_proposal
  target_scope: local_project
  environment_scope: non_production
  allowed_flag: true
  review_requirement: optional
  approval_requirement: optional
  escalation_rule_ref: local_apply_guard

- actor_role: reviewer
  action_code: review_proposal
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: mandatory
  approval_requirement: none
  escalation_rule_ref: none

- actor_role: tester
  action_code: update_test_result
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: none
  approval_requirement: none
  escalation_rule_ref: none

- actor_role: viewer
  action_code: view_bug_list
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: none
  approval_requirement: none
  escalation_rule_ref: none
