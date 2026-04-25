# ============================================================
# AIWORKER OFFICIAL INTAKE PROCESSING AND STATUS MACHINE EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the official intake processing lifecycle and status machine used by controlled functions.

official_intake_status_values:
- RECEIVED
- VALIDATING
- GATE_DENIED
- APPROVAL_PENDING
- AUDIT_PENDING
- READY_TO_APPLY
- APPLYING
- APPLIED
- REJECTED
- FAILED

status_machine:
- RECEIVED -> VALIDATING
- VALIDATING -> GATE_DENIED
- VALIDATING -> APPROVAL_PENDING
- VALIDATING -> AUDIT_PENDING
- VALIDATING -> READY_TO_APPLY
- APPROVAL_PENDING -> READY_TO_APPLY
- AUDIT_PENDING -> READY_TO_APPLY
- READY_TO_APPLY -> APPLYING
- APPLYING -> APPLIED
- APPLYING -> FAILED
- VALIDATING -> REJECTED when function or target surface is invalid
- any nonterminal validation state -> FAILED when processing fails unexpectedly

processing_principle:
- only controlled functions may move intake into APPLYING/APPLIED
- status must reflect actual mutation lifecycle
- APPLIED means canonical mutation plus required side effects succeeded
- partial success is not accepted as APPLIED

required_validation_bindings:
- intake_type
- target_truth_surface
- controlled_function_code
- approval_ticket_id when required
- audit_required_flag
- staging_id
- submitted_at
- intake_status

hard_rules:
- APPLIED requires audit side effect when audit is required
- APPLIED requires outbox emission when emission is required by function contract
- REJECTED and GATE_DENIED must preserve diagnostic result codes
