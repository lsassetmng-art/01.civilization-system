# PERSONA SNAPSHOT DOWNSTREAM DISCLOSURE AND VERIFICATION RELATION SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_063227

purpose:
Condenses public-safe disclosure and verify-side interpretation across the snapshot downstream bundle.

allowed public-safe disclosure:
- snapshot_id when policy-safe
- revocation-safe reference
- revoke_status when disclosure is internal or policy-limited
- publication status
- published_at
- revocation_reference when publication-safe

forbidden disclosure:
- private key material
- raw verification engine traces
- hidden revoke storage topology
- hidden policy engine internals beyond public-safe labels
- mutable truth internals

verification-side interpretation:
- snapshot-verify may surface revoked using public-safe result code
- publication supports public revocation awareness
- publication does not replace verification execution
- unknown_key, malformed, invalid_signature, and revoked must stay distinct

bundle hard rules:
- disclosure must be enough for trust interpretation without leaking internals
- revocation publication is not full trust-chain disclosure
- revoke and publication remain role-distinct end to end
