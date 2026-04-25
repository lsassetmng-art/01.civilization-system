# PERSONA SNAPSHOT VERIFY FINAL OUTCOME AND RESULT CODE SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_210117

purpose:
Condenses exact internal outcome to public-safe result mapping for snapshot-verify.

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

outcome_rules:
- revoked remains distinct from invalid_signature
- unknown_key remains distinct from invalid_signature
- malformed remains distinct from internal_error
- one internal outcome maps to one exact public-safe result code
- no outcome may silently collapse into another outcome

