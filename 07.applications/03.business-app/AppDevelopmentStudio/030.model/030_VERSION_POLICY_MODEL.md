# ============================================================
# VERSION POLICY MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines user-configurable artifact versioning behavior.

definition:
version_policy represents how versions are assigned and managed
for design docs, source code, SQL, tests, packages, and related outputs.

minimum_fields:
- version_policy_id
- policy_name
- policy_scope
- versioning_mode
- artifact_targets
- auto_increment_on_bugfix
- link_design_and_code_versions
- link_git_versions
- status
- created_at
- updated_at

versioning_mode_examples:
- simple_increment
- semantic_versioning
- date_based
- git_commit_based
- git_tag_based
- custom_rule

artifact_targets_examples:
- design_docs
- source_code
- sql
- tests
- package
- release_artifacts

notes:
Users can decide how version management should behave.
