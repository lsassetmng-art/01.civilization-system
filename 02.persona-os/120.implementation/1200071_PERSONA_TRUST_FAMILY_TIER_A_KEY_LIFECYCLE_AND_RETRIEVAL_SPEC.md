# PERSONA TRUST FAMILY TIER A KEY LIFECYCLE AND RETRIEVAL SPEC

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_181922

purpose:
Fixes exact key lifecycle and retrieval semantics for trust family behavior.

key_lifecycle_states:
- created
- active
- rotated
- revoked
- retired

lifecycle_rules:
- created is internal availability, not automatic public publication
- active keys may be used for new signing under policy
- rotated keys may remain verification-relevant for older artifacts
- revoked keys must not be used for new signatures
- retired keys remain historical references only if policy allows

retrieval_rules:
- keys-by-id serves verification-safe material for a specific key reference
- keys-current serves active verification-safe material set only
- rotated but still verification-relevant keys may be served by keys-by-id
- private material is never served by retrieval functions

trust_continuity_rule:
Historical verification continuity must survive key rotation without exposing private key material.

