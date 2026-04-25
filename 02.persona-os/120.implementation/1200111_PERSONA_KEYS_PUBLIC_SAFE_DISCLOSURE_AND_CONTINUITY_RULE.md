# PERSONA KEYS PUBLIC SAFE DISCLOSURE AND CONTINUITY RULE

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_191037

purpose:
Defines public-safe disclosure rules while preserving verification continuity.

public_safe_disclosure_allowed:
- key_id
- verification-safe key reference
- lifecycle-safe public status
- publication timestamp where policy allows

public_safe_disclosure_forbidden:
- private key material
- raw internal key generation internals
- hidden storage topology
- internal rotation implementation details beyond allowed public-safe status

continuity_rules:
- an old signed snapshot may rely on keys-by-id even after the key disappears from keys-current
- unknown_key should only be returned after keys-by-id continuity lookup fails or is disallowed
- revoked key reference may still be discoverable as verification-safe history when policy allows
- retired key reference may remain resolvable only within retention policy window

hard_rule:
Historical verification continuity must be preserved without overexposing the trust system internals.

