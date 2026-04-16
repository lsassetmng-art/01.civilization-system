# ============================================================
# RULE PROFILE MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines a selectable rule set used during generation and control.

definition:
rule_profile is a named, versionable set of behavior and output rules.

minimum_fields:
- rule_profile_id
- profile_name
- profile_scope
- profile_description
- active_version_id
- is_default
- status
- created_by
- created_at
- updated_at

profile_scope_examples:
- system
- user
- project
- environment
- language
- artifact

rule_categories:
- design
- development
- test
- release
- git
- review
- approval
- build
- multilingual
- safety

relations:
- links to rule_profile_version
- links to rule_assignment
- links to development_request

notes:
Rule profile selection is user-configurable and central to output behavior.
