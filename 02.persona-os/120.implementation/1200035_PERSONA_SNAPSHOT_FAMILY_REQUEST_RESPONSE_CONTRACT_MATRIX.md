# PERSONA SNAPSHOT FAMILY REQUEST RESPONSE CONTRACT MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_121843

purpose:
Fixes request and response contracts for snapshot-issue, snapshot-revoke, snapshot-verify, and revocation-list.

snapshot_issue_request:
  required_fields:
    - user_id or persona_id according to release path
    - source_lineage_reference
    - requested_by
  optional_fields:
    - release_scope
    - request_trace_id
    - packaging_hint

snapshot_issue_response:
  required_fields:
    - snapshot_id
    - snapshot_status
    - source_lineage_reference
    - issued_at

snapshot_revoke_request:
  required_fields:
    - snapshot_id
    - revoke_reason
    - requested_by

snapshot_revoke_response:
  required_fields:
    - snapshot_id
    - revoke_status
    - revoked_at

snapshot_verify_request:
  required_fields:
    - snapshot_id or signed artifact reference
  optional_fields:
    - verification_context

snapshot_verify_response:
  required_fields:
    - verification_status
    - snapshot_id when resolvable
    - key_reference when applicable
    - verified_at

revocation_list_response:
  required_fields:
    - published_at
    - entries or publication reference
    - list_status

response_family_rules:
- issue and revoke stay distinct
- verify never pretends to issue
- revocation-list never pretends to revoke

