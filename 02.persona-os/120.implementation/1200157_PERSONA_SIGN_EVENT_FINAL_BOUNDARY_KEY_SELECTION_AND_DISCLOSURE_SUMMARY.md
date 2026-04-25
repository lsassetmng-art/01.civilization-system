# PERSONA SIGN EVENT FINAL BOUNDARY KEY SELECTION AND DISCLOSURE SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_212013

purpose:
Condenses boundary ownership, key selection semantics, and disclosure rules for sign-event.

boundary_ownership_summary:
- sign-event owns signature generation support only
- sign-event does not own mutable truth mutation
- sign-event does not own snapshot issuance
- sign-event does not own verification decision
- sign-event does not own key publication surfaces

key_selection_rules:
- active signing-eligible key material must be policy-selected
- key_selection_hint may narrow selection but does not override policy
- revoked keys must not be used for new signatures
- rotated historical keys are verification-relevant, not default new-signature keys
- key_reference in output must remain verification-safe

disclosure_rules:
allowed:
- sign_status
- signature_reference_or_signature
- verification-safe key_reference
- signed_at

forbidden:
- private key material
- raw internal key storage details
- hidden signing engine traces
- secret rotation internals

hard_rules:
- sign-event is not keys-current
- sign-event is not keys-by-id
- sign-event is not snapshot-verify
- sign-event is not truth owner

