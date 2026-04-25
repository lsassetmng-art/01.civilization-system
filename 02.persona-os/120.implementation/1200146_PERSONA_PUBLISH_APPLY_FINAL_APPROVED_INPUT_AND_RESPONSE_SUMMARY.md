# PERSONA PUBLISH APPLY FINAL APPROVED INPUT AND RESPONSE SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_211155

purpose:
Condenses the final approved-input schema and response interpretation for publish_apply.

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

response_required_fields:
- publish_apply_status
- release_reference_or_released_asset_reference
- applied_at

status_family:
- publish_apply_succeeded
- publish_apply_rejected
- publish_apply_failed

status_rules:
- publish_apply_succeeded means released output now exists for downstream released surface usage
- publish_apply_rejected means approved-input-only rule or policy gate blocked application
- publish_apply_failed means operational failure prevented release application
- publish_apply_rejected must remain distinct from publish_apply_failed

external_response_rule:
publish_apply may expose release-safe result fields only.
It must not expose mutable approval workflow internals or candidate-only internals beyond allowed release result semantics.

