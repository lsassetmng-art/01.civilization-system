# PERSONA SNAPSHOT VERIFY PUBLIC SAFE FIELD NAMING POLICY

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_185334

purpose:
Closes residual queue item 2 by fixing public-safe response field naming for snapshot-verify.

problem_statement:
snapshot-verify already has status semantics, but the external-safe field names for those semantics
must be fixed so verification results can be surfaced without ambiguity or leakage.

policy_decision:
snapshot-verify will expose a compact and public-safe verification response with stable field names.

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

field_naming_rules:
- use verification_status for the top-level status family
- use verification_result_code for exact externally visible result naming
- use snapshot_id only when resolvable and safe to disclose
- use key_reference only when safe to disclose verification-safe key identity
- do not expose internal exception detail fields in public-safe response

hard_rules:
- malformed must remain distinguishable from unknown_key
- revoked must remain distinguishable from invalid_signature
- internal_error must remain distinguishable from malformed
- public-safe field naming must not expose private material or internal trust internals

