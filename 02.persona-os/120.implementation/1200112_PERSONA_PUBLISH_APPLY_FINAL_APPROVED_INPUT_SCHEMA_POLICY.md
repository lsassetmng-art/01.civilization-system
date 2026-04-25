# PERSONA PUBLISH APPLY FINAL APPROVED INPUT SCHEMA POLICY

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_193641

purpose:
Closes residual queue item 4 by fixing the final approved-input schema for publish_apply.

policy_decision:
publish_apply accepts only approved release input in one normalized schema family.

approved_input_required_fields:
- approval_source_type
- approval_source_reference
- release_subject_reference
- release_scope
- applied_by

approved_input_optional_fields:
- release_context
- lineage_reference
- apply_trace_id
- policy_reference

approved_input_rules:
- approval_source_type must be one of:
  - approved_publish_request
  - approved_release_reference
  - approved_release_candidate
- approval_source_reference must resolve to an approved state
- release_subject_reference must resolve to the releasable target
- release_scope must be explicit
- applied_by must represent release application authority

hard_rules:
- pending input is forbidden
- rejected input is forbidden
- returned_for_revision input is forbidden
- unresolved lineage is forbidden where lineage is required by policy
- publish_apply must not invent approval state by itself

