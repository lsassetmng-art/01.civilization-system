# PERSONA SNAPSHOT VERIFY PUBLIC SAFE RESPONSE FIELD MATRIX

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_185334

purpose:
Fixes exact public-safe response shape for snapshot-verify.

base_public_safe_response:
- verification_status
- verification_result_code
- verified_at

response_shape_by_outcome:
- verification_valid
  - verification_status: valid
  - verification_result_code: SNAPSHOT_VALID
  - snapshot_id: present_when_resolvable
  - key_reference: present_when_resolvable

- verification_invalid_signature
  - verification_status: invalid
  - verification_result_code: SNAPSHOT_INVALID_SIGNATURE
  - snapshot_id: present_when_resolvable
  - key_reference: optional_when_resolvable

- verification_revoked
  - verification_status: revoked
  - verification_result_code: SNAPSHOT_REVOKED
  - snapshot_id: present_when_resolvable
  - revocation_reference: optional_when_policy_allows

- verification_unknown_key
  - verification_status: unverifiable
  - verification_result_code: SNAPSHOT_UNKNOWN_KEY
  - snapshot_id: present_when_resolvable
  - key_reference: optional_when_partial_reference_is_safe

- verification_malformed
  - verification_status: malformed
  - verification_result_code: SNAPSHOT_MALFORMED
  - snapshot_id: omitted_when_unresolvable

- verification_internal_error
  - verification_status: error
  - verification_result_code: SNAPSHOT_VERIFY_INTERNAL_ERROR
  - snapshot_id: present_when_resolvable_or_omitted
  - verification_reason: generic_safe_reason_only

matrix_rules:
- verification_status is compact and public-safe
- verification_result_code is exact and stable
- optional fields are disclosed only when safe and resolvable
- no outcome may silently collapse into another outcome

