# PERSONA SNAPSHOT VERIFY DISCLOSURE AND RESULT CODE FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_110313

purpose:
Freezes disclosure rules and exact public-safe result mapping for snapshot-verify.

mapping_table:
- verification_valid
  - verification_status: valid
  - verification_result_code: SNAPSHOT_VALID

- verification_invalid_signature
  - verification_status: invalid
  - verification_result_code: SNAPSHOT_INVALID_SIGNATURE

- verification_revoked
  - verification_status: revoked
  - verification_result_code: SNAPSHOT_REVOKED

- verification_unknown_key
  - verification_status: unverifiable
  - verification_result_code: SNAPSHOT_UNKNOWN_KEY

- verification_malformed
  - verification_status: malformed
  - verification_result_code: SNAPSHOT_MALFORMED

- verification_internal_error
  - verification_status: error
  - verification_result_code: SNAPSHOT_VERIFY_INTERNAL_ERROR

disclosure_rules:
allowed:
- compact public-safe status
- exact public-safe result code
- snapshot_id when resolvable and policy-safe
- key_reference when verification-safe and policy-safe
- revocation_reference when publication-safe
- generic verification_reason when safe

forbidden:
- private signing material
- raw internal verification engine traces
- hidden storage topology
- raw exception stacks
- hidden trust-chain internals

freeze_rules:
- revoked remains distinct from invalid_signature
- unknown_key remains distinct from invalid_signature
- malformed remains distinct from internal_error
- omission of optional fields must be policy-safe and explicit, not accidental
