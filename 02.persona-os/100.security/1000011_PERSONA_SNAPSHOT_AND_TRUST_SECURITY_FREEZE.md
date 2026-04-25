# PERSONA SNAPSHOT AND TRUST SECURITY FREEZE

status: design-freeze-ready
system: PersonaOS
layer: security
confirmed_at: 20260418_121843

purpose:
Freezes security expectations for snapshot issuance, verification, revocation, and key support.

security_requirements:
- signed artifact must be verifiable against current or referenced key material
- revocation must be queryable without exposing private signing material
- verification must distinguish valid, revoked, malformed, and unknown-key conditions
- key generation and active-key retrieval must preserve trust-chain clarity
- public verification support must never disclose private key material

minimum_security_outcomes:
- valid_signed_snapshot
- invalid_signature
- revoked_snapshot
- unknown_key
- malformed_snapshot
- verification_internal_error

hard_rules:
- no private signing key in external surface
- no unsigned artifact treated as trusted release artifact
- no revoked artifact treated as valid
- no verification endpoint may mutate PersonaOS truth

