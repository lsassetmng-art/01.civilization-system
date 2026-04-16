# ============================================================
# GIT REPOSITORY MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines a Git repository target managed or referenced by the application.

definition:
git_repository represents a repository attached to, cloned by,
or otherwise controlled through App Development Studio.

minimum_fields:
- git_repository_id
- repository_name
- provider_name
- remote_url
- local_path
- default_branch
- branch_policy
- direct_main_update_allowed
- review_before_push
- approval_before_push
- status
- created_at
- updated_at

status_examples:
- attached
- cloned
- detached
- unavailable
- archived

relations:
- links to git_remote
- links to git_branch
- links to git_commit_record
- links to git_push_request
- links to version policy

notes:
Repository-level governance is configurable and policy-aware.
