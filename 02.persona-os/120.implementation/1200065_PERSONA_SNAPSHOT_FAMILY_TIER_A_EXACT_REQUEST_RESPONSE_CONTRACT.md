# PERSONA SNAPSHOT FAMILY TIER A EXACT REQUEST RESPONSE CONTRACT

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_181922

purpose:
Fixes the exact request and response contract for snapshot-issue, snapshot-verify, snapshot-revoke, and revocation-list.

snapshot_issue_request_required_fields:
- source_lineage_reference
- release_subject_reference
- requested_by

snapshot_issue_request_optional_fields:
- release_scope
- request_trace_id
- packaging_hint
- verification_context_hint

snapshot_issue_response_required_fields:
- snapshot_id
- snapshot_status
- source_lineage_reference
- issued_at

snapshot_verify_request_required_fields:
- snapshot_id or signed_artifact_reference

snapshot_verify_request_optional_fields:
- verification_context
- key_hint

snapshot_verify_response_required_fields:
- verification_status
- snapshot_id when resolvable
- key_reference when applicable
- verified_at

snapshot_revoke_request_required_fields:
- snapshot_id
- revoke_reason
- requested_by

snapshot_revoke_request_optional_fields:
- revoke_trace_id
- policy_context

snapshot_revoke_response_required_fields:
- snapshot_id
- revoke_status
- revoked_at

revocation_list_response_required_fields:
- published_at
- list_status
- entry_reference_or_entries

contract_rules:
- snapshot_issue must not return mutable truth payload
- snapshot_verify must not masquerade as issue or revoke
- snapshot_revoke must not masquerade as verification result
- revocation-list is publication surface only

