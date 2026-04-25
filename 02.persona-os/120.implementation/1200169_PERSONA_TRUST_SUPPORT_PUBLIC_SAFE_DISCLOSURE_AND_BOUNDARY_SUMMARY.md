# PERSONA TRUST SUPPORT PUBLIC SAFE DISCLOSURE AND BOUNDARY SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_002344

purpose:
Condenses public-safe disclosure rules and boundary ownership across the trust support bundle.

allowed public-safe disclosure:
- sign_status
- signature_reference_or_signature
- verification-safe key_reference
- key_id
- current_key_set_status
- public_verification_material_or_reference
- published_at
- signed_at
- created_at
- lifecycle-safe public status wording

forbidden disclosure:
- private key material
- raw signing engine traces
- raw key generation internals
- internal storage topology
- hidden rotation internals beyond public-safe lifecycle status
- hidden trust-chain implementation detail

boundary summary:
- sign-event = signature generation only
- keygen-once = lifecycle creation only
- keys-current = active verification-safe publication only
- keys-by-id = exact historical verification-safe lookup only

hard rules:
- signing must remain distinct from publication
- publication must remain distinct from exact historical lookup
- no trust support function becomes mutable truth owner by label
- no trust support function may leak private material to external-safe surface
