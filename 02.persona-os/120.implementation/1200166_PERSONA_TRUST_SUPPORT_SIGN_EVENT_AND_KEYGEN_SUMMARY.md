# PERSONA TRUST SUPPORT SIGN EVENT AND KEYGEN SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_002344

purpose:
Condenses the signing-side half of the trust support bundle.

functions:
- sign-event
- keygen-once

sign-event role:
- signature generation support only
- not mutable truth owner
- not verification owner
- not key publication owner

sign-event request core:
- signing_subject_reference
- sign_payload_or_reference
- signing_context
- key_selection_hint optional

sign-event response core:
- sign_status
- signature_reference_or_signature
- key_reference
- signed_at

sign-event status family:
- sign_succeeded
- sign_rejected
- sign_failed

sign-event hard rules:
- key_selection_hint may guide but not override policy
- revoked keys must not be used for new signatures
- rotated historical keys are not default new-signature keys
- private key material must never be disclosed

keygen-once role:
- key lifecycle creation only
- not public key publication by itself
- not verification result surface
- not truth mutation boundary

keygen-once request core:
- key_purpose
- requested_by
- rotation_context optional
- lifecycle_context optional

keygen-once response core:
- key_id
- key_status
- created_at

keygen-once status family:
- key_created
- key_rejected
- key_failed

shared rule:
Signing success does not imply verification success, and key creation does not imply current-set publication.
