# ============================================================
# EXECUTION MATRIX MVP ROWS
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

rows:

- actor_role: owner
  action_code: execute_apply
  target_scope: any
  environment_scope: any
  allowed_flag: true
  review_requirement: optional
  approval_requirement: mandatory

- actor_role: owner
  action_code: sql_execute_destructive
  target_scope: database
  environment_scope: any
  allowed_flag: true
  review_requirement: mandatory
  approval_requirement: mandatory

- actor_role: admin
  action_code: git_push_protected_branch
  target_scope: repository
  environment_scope: any
  allowed_flag: true
  review_requirement: mandatory
  approval_requirement: mandatory

- actor_role: admin
  action_code: activate_rule_profile_version
  target_scope: shared_rule
  environment_scope: any
  allowed_flag: true
  review_requirement: mandatory
  approval_requirement: mandatory

- actor_role: project_manager
  action_code: approve_proposal
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: optional
  approval_requirement: mandatory

- actor_role: developer
  action_code: generate_java_proposal
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: none
  approval_requirement: none

- actor_role: developer
  action_code: generate_sql_proposal
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: none
  approval_requirement: none

- actor_role: developer
  action_code: execute_apply
  target_scope: local_project
  environment_scope: non_production
  allowed_flag: true
  review_requirement: optional
  approval_requirement: optional

- actor_role: reviewer
  action_code: review_proposal
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: mandatory
  approval_requirement: none

- actor_role: tester
  action_code: update_test_progress
  target_scope: project
  environment_scope: any
  allowed_flag: true
  review_requirement: none
  approval_requirement: none
