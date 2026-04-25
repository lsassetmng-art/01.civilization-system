# PERSONA KEYS HISTORICAL VERIFICATION CONTINUITY POLICY

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_191037

purpose:
Closes residual queue item 3 by fixing historical verification continuity for keys-current and keys-by-id.

problem_statement:
The trust family already distinguishes active key publication from point lookup,
but historical verification continuity must be explicit so older signed artifacts remain verifiable after rotation.

policy_decision:
- keys-current publishes the active verification-safe key set only
- keys-by-id resolves a specific verification-safe key reference, including historical keys when policy allows

continuity_principle:
Verification continuity for older artifacts is preserved through keys-by-id,
not by forcing keys-current to publish every historical key forever.

key_serving_roles:
- keys-current = present-tense active verification surface
- keys-by-id = historical and specific verification reference surface

hard_rules:
- rotated keys may remain verification-relevant
- revoked keys must not be used for new signatures
- revoked or retired keys may still need historical verification-safe lookup by id if policy allows
- private key material is never disclosed

