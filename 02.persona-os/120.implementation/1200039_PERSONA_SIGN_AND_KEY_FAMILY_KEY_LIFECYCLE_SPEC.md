# PERSONA SIGN AND KEY FAMILY KEY LIFECYCLE SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_121843

purpose:
Fixes the key lifecycle model for sign and key functions.

key_lifecycle_states:
- created
- active
- rotated
- revoked
- retired

key_lifecycle_functions:
- keygen-once -> creates new key material entry
- keys-current -> exposes current verification-safe active set
- keys-by-id -> exposes verification-safe material for a specific key reference
- sign-event -> consumes active signing material or approved signing context

lifecycle_rules:
- created does not automatically mean externally published
- active keys may be used for signing according to policy
- rotated keys may still be needed for verification of old artifacts
- revoked keys must not be used for new signatures
- retired keys remain historical references only if policy allows

trust_chain_rule:
Snapshot verification may need historical key references, so key lifecycle
must preserve verification continuity without exposing private material.

