# ============================================================
# GIT EXACT CONTROL TABLE
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

controls:

- action_code: git_clone_repository
  default_review_requirement: none
  default_approval_requirement: none
  protected_branch_sensitive: false

- action_code: git_create_branch
  default_review_requirement: none
  default_approval_requirement: none
  protected_branch_sensitive: false

- action_code: git_commit_worktree
  default_review_requirement: optional
  default_approval_requirement: optional
  protected_branch_sensitive: false

- action_code: git_push_non_protected_branch
  default_review_requirement: recommended
  default_approval_requirement: optional
  protected_branch_sensitive: false

- action_code: git_push_protected_branch
  default_review_requirement: mandatory
  default_approval_requirement: mandatory
  protected_branch_sensitive: true

- action_code: git_create_tag
  default_review_requirement: optional
  default_approval_requirement: mandatory
  protected_branch_sensitive: false
