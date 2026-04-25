# PERSONA SNAPSHOT ISSUE EXACT PAYLOAD AND TERMINAL FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_105833

purpose:
Freezes the exact request and terminal interpretation for snapshot-issue at discussion level.

request_required_fields:
- source_lineage_reference
- release_subject_reference
- requested_by

request_optional_fields:
- release_scope
- request_trace_id
- packaging_hint
- verification_context_hint

freeze_rules:
- source_lineage_reference remains required and release-safe
- release_subject_reference remains the releasable target reference
- requested_by remains the issue authority actor
- release_scope remains explicit whenever issuance semantics differ by scope
- packaging_hint and verification_context_hint remain optional support inputs only

response_required_fields:
- snapshot_id
- snapshot_status
- source_lineage_reference
- issued_at

status_family:
- issue_succeeded
- issue_rejected
- issue_failed

terminal_freeze_rules:
- issue_succeeded means immutable release artifact exists
- issue_rejected means policy, authority, or input gate blocked issuance
- issue_failed means operational failure prevented issuance
- issue_rejected remains distinct from issue_failed
- response remains release-safe and must not expose mutable truth payloads or hidden storage detail
