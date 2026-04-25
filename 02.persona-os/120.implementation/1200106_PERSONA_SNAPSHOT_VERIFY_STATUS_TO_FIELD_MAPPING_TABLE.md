# PERSONA SNAPSHOT VERIFY STATUS TO FIELD MAPPING TABLE

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_185334

purpose:
Provides one stable mapping table from internal verification outcomes to public-safe field names.

mapping_table:
- internal_outcome: verification_valid
  - verification_status: valid
  - verification_result_code: SNAPSHOT_VALID

- internal_outcome: verification_invalid_signature
  - verification_status: invalid
  - verification_result_code: SNAPSHOT_INVALID_SIGNATURE

- internal_outcome: verification_revoked
  - verification_status: revoked
  - verification_result_code: SNAPSHOT_REVOKED

- internal_outcome: verification_unknown_key
  - verification_status: unverifiable
  - verification_result_code: SNAPSHOT_UNKNOWN_KEY

- internal_outcome: verification_malformed
  - verification_status: malformed
  - verification_result_code: SNAPSHOT_MALFORMED

- internal_outcome: verification_internal_error
  - verification_status: error
  - verification_result_code: SNAPSHOT_VERIFY_INTERNAL_ERROR

mapping_rules:
- one internal outcome maps to exactly one public-safe status and one result code
- valid and invalid remain separate
- unverifiable remains separate from invalid
- malformed remains separate from error
- revoked remains separate from invalid

