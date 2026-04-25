# PERSONA SNAPSHOT DOWNSTREAM INVALIDATION TO PUBLICATION FLOW SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_063227

purpose:
Condenses the exact relation between snapshot-revoke and revocation-list.

flow_backbone:
issued_snapshot
-> snapshot-revoke
-> authoritative_revoke_state
-> revocation-list

flow_rules:
- only revoke_succeeded may feed authoritative invalidation publication
- revoke_rejected may not feed revocation publication as if invalidation succeeded
- revoke_failed may not feed revocation publication as if invalidation succeeded
- revocation publication must remain attributable to revoked snapshot identity
- publication may be derived from authoritative revoke state, not from transient request attempt state

verification relation:
- snapshot-verify may interpret revoked artifact as revoked
- revoked remains distinct from invalid_signature
- revoked remains distinct from unknown_key
- publication presence supports trust interpretation but is not itself verification execution

hard_rules:
- revocation-list is not snapshot-revoke
- snapshot-revoke is not snapshot-verify
- publication is downstream from authoritative invalidation only
