# PERSONA PUBLISH APPLY EXACT APPROVED INPUT AND TERMINAL FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_111419

purpose:
Freezes the exact approved-input schema and terminal interpretation for publish_apply at discussion level.

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

approved_input_freeze_rules:
- approval_source_type remains one of:
  - approved_publish_request
  - approved_release_reference
  - approved_release_candidate
- approval_source_reference must already resolve to approved state
- release_subject_reference must resolve to releasable target
- release_scope remains explicit
- applied_by remains the release application authority actor
- lineage_reference remains mandatory when release traceability policy requires it

response_required_fields:
- publish_apply_status
- release_reference_or_released_asset_reference
- applied_at

status_family:
- publish_apply_succeeded
- publish_apply_rejected
- publish_apply_failed

terminal_freeze_rules:
- publish_apply_succeeded means released output exists for downstream released surface usage
- publish_apply_rejected means policy gate or approved-input-only rule blocked application
- publish_apply_failed means operational failure prevented release application
- publish_apply_rejected remains distinct from publish_apply_failed
- response remains release-safe and must not expose mutable approval workflow internals or candidate-only internals
