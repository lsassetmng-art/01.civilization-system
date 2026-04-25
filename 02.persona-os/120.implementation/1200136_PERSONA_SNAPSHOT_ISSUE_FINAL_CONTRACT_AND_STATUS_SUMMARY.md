# PERSONA SNAPSHOT ISSUE FINAL CONTRACT AND STATUS SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_205116

purpose:
Condenses the final request, response, and status interpretation for snapshot-issue.

request_required_fields:
- source_lineage_reference
- release_subject_reference
- requested_by

request_optional_fields:
- release_scope
- request_trace_id
- packaging_hint
- verification_context_hint

request_core_rules:
- source_lineage_reference must resolve to release-safe lineage
- release_subject_reference must resolve to the releasable subject
- requested_by must represent issue authority in policy terms
- release_scope must remain explicit whenever issue semantics vary by scope

response_required_fields:
- snapshot_id
- snapshot_status
- source_lineage_reference
- issued_at

status_family:
- issue_succeeded
- issue_rejected
- issue_failed

status_rules:
- issue_succeeded means immutable release artifact exists
- issue_rejected means policy or input prevented issuance
- issue_failed means operational failure prevented issuance
- issue_rejected must remain distinct from issue_failed

external_response_rule:
snapshot-issue may expose release-safe artifact result fields only.
It must not expose mutable truth payloads or hidden internal storage detail.

