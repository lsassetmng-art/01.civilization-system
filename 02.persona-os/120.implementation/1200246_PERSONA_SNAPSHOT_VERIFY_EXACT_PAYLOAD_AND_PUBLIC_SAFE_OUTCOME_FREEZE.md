# PERSONA SNAPSHOT VERIFY EXACT PAYLOAD AND PUBLIC SAFE OUTCOME FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_110313

purpose:
Freezes the exact request and public-safe outcome interpretation for snapshot-verify at discussion level.

request_required_fields:
- snapshot_id or signed_artifact_reference

request_optional_fields:
- verification_context
- key_hint

freeze_rules:
- verification input must resolve to verifiable artifact or artifact reference
- key_hint may guide lookup but does not replace verification-safe key resolution
- malformed input must remain distinguishable from unknown-key outcome
- request remains verification-oriented and must not imply issuance or revocation ownership

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

outcome_freeze_rules:
- verification_status remains compact and public-safe
- verification_result_code remains exact and stable
- snapshot_id is returned only when resolvable and safe
- key_reference is returned only when verification-safe and policy-safe
- no private material or raw internal exception detail may be returned
