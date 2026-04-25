# PERSONA RELEASE SURFACE PUBLISH APPLY AND APPROVED INPUT SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_062714

purpose:
Condenses release application semantics inside the release surface bundle.

function:
- publish_apply

publish_apply role:
- release application only
- not governance decision owner
- not listing owner
- not generic mutable truth owner by label alone

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
- approval_source_reference must already resolve to approved state
- release_subject_reference must resolve to releasable target
- release_scope must remain explicit
- applied_by must represent release application authority
- lineage_reference is mandatory when release traceability policy requires it

status_family:
- publish_apply_succeeded
- publish_apply_rejected
- publish_apply_failed

status_rules:
- publish_apply_succeeded means released output now exists for downstream released surface usage
- publish_apply_rejected means approved-input-only rule or policy gate blocked application
- publish_apply_failed means operational failure prevented release application
- publish_apply_rejected must remain distinct from publish_apply_failed

hard_rules:
- pending input is forbidden
- rejected input is forbidden
- returned_for_revision input is forbidden
- unresolved lineage is forbidden where lineage is required
- publish_apply must not invent approval state by itself
