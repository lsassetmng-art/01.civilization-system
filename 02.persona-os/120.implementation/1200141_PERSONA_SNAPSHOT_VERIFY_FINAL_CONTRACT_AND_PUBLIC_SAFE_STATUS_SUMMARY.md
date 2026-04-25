# PERSONA SNAPSHOT VERIFY FINAL CONTRACT AND PUBLIC SAFE STATUS SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_210117

purpose:
Condenses the final request, response, and public-safe status interpretation for snapshot-verify.

request_required_fields:
- snapshot_id or signed_artifact_reference

request_optional_fields:
- verification_context
- key_hint

request_core_rules:
- verification input must resolve to a verifiable artifact or artifact reference
- key_hint may guide lookup but does not replace verification-safe key resolution
- malformed input must remain distinguishable from unknown-key outcome

public_safe_response_fields:
- verification_status
- verification_result_code
- snapshot_id
- key_reference
- verified_at

optional_public_safe_fields:
- revocation_reference
- verification_reason
- verification_trace_reference

public_safe_status_family:
- valid
- invalid
- revoked
- unverifiable
- malformed
- error

public_safe_rules:
- verification_status is compact and safe
- verification_result_code is exact and stable
- snapshot_id is returned only when resolvable and safe
- key_reference is returned only when verification-safe and policy-safe
- no private signing material or raw internal exception details may be returned

