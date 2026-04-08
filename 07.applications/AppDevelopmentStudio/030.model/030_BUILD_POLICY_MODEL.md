# ============================================================
# BUILD POLICY MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines build execution control behavior.

definition:
build_policy represents whether and how build execution is handled
for a project, environment, artifact type, or request.

minimum_fields:
- build_policy_id
- policy_name
- build_mode
- target_scope
- precheck_enabled
- failure_policy
- artifact_retention
- external_build_note
- status
- created_at
- updated_at

build_mode_examples:
- disabled
- enabled
- if_available
- external_only

failure_policy_examples:
- stop
- continue_with_warning
- mark_external
- manual_followup

notes:
Build is optional because some environments cannot build directly.
