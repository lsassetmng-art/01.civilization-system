# PERSONA TRUST SUPPORT KEYS CURRENT AND BY ID SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_002344

purpose:
Condenses the retrieval-side half of the trust support bundle.

functions:
- keys-current
- keys-by-id

keys-current role:
- active verification-safe key set publication
- compact present-tense trust surface
- not full historical coverage
- not private key surface

keys-current response core:
- current_key_set_status
- key_reference_list_or_material
- published_at

keys-current status family:
- active_key_set_available
- active_key_set_empty
- active_key_set_unavailable

keys-by-id role:
- exact key_id lookup
- historical verification continuity surface
- verification-safe material only
- may serve rotated, revoked, or retired historical references when policy allows

keys-by-id request core:
- key_id

keys-by-id response core:
- key_id
- key_status
- public_verification_material_or_reference

keys-by-id status family:
- key_found
- key_not_found
- key_unavailable

role split:
- keys-current = current active-set publication
- keys-by-id = exact historical continuity lookup

hard rules:
- historical continuity must not be inferred from keys-current alone
- unknown_key should only be concluded after exact-reference continuity lookup fails or is disallowed
- no retrieval surface may disclose private key material
