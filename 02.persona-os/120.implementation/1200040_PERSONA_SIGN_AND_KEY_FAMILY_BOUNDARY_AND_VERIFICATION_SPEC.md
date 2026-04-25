# PERSONA SIGN AND KEY FAMILY BOUNDARY AND VERIFICATION SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_121843

purpose:
Fixes boundary ownership and verification semantics for sign and key functions.

boundary_ownership:
- sign-event = signature generation support
- keygen-once = key lifecycle creation support
- keys-by-id = key reference retrieval support
- keys-current = active verification-set publication support
- snapshot-verify = verification decision support
- snapshot-revoke = invalidation support

verification_semantics:
- valid signature must remain distinguishable from unknown key
- revoked artifact must remain distinguishable from invalid signature
- malformed request must remain distinguishable from internal verification failure

boundary_rules:
- trust family does not own mutable truth
- trust family supports artifact authenticity and validity checks
- private material stays on internal side only
- verification-safe material may be externally surfaced when policy allows

