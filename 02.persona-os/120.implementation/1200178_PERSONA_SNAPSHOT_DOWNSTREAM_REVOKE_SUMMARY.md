# PERSONA SNAPSHOT DOWNSTREAM REVOKE SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_063227

purpose:
Condenses invalidation semantics inside the snapshot downstream bundle.

function:
- snapshot-revoke

snapshot-revoke role:
- invalidation application only
- not issue owner
- not verification owner
- not publication owner
- not mutable truth owner

request_required_fields:
- snapshot_id
- revoke_reason
- requested_by

request_optional_fields:
- revoke_trace_id
- policy_context

response_required_fields:
- snapshot_id
- revoke_status
- revoked_at

status_family:
- revoke_succeeded
- revoke_rejected
- revoke_failed

status_rules:
- revoke_succeeded means authoritative invalidation state is recorded
- revoke_rejected means authority, policy, or input gate blocked invalidation
- revoke_failed means operational failure prevented invalidation persistence
- revoke_rejected must remain distinct from revoke_failed

hard_rules:
- missing snapshot reference is fail-closed
- authority failure is not operational failure
- invalidation must not rewrite mutable truth
- invalidation must not masquerade as publication
