# PERSONA SNAPSHOT TRUST TIER A CROSS BOUNDARY RULE

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_181922

purpose:
Fixes the cross-boundary interaction between snapshot and trust families.

cross_boundary_rules:
- snapshot-issue may require trust-family signing support but remains the release-artifact issuer
- sign-event supports authenticity but does not become the release issuer
- snapshot-verify consumes snapshot artifact and trust references but does not mutate truth
- snapshot-revoke invalidates issued artifact status but does not rewrite release lineage
- revocation-list publishes invalidation state but does not apply revocation by itself
- keys-by-id and keys-current provide verification-safe material only

hard_rules:
- release issuance, verification, invalidation, publication, signing, and key retrieval remain role-distinct
- no private signing material crosses into external surface
- no trust helper may masquerade as release issuer

