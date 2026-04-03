# ============================================================
# MILITARY OPERATIONS IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: war.military_operations
document_id: 1201640001

owner: Boss
prepared_by: Zero

core_records:
- military_operation
- operation_authorization
- deployment_order
- readiness_transition
- engagement_record
- logistics_link
- ceasefire_state
- operation_violation_record
- operation_review
- operation_closure

canonical_states:
- PROPOSED
- AUTHORIZED
- DEPLOYING
- ACTIVE
- CEASEFIRE_REVIEW
- CEASEFIRE_ACTIVE
- SUSPENDED
- CLOSED
- CANCELLED

required_inputs:
- command authority
- operation target / scope
- participating units
- readiness basis
- logistics readiness basis

required_outputs:
- deployment order
- readiness transition
- engagement record
- ceasefire state
- closure record

required_events:
- military_operation_authorized
- military_deployment_started
- military_operation_active
- military_engagement_recorded
- military_ceasefire_reviewed
- military_operation_closed

hard_rules:
- no operation without valid authority
- no active operation without deployment basis
- no engagement under conflicting ceasefire state
- no closure without explicit status resolution

error_codes:
- MIL_OP_AUTHORITY_INVALID
- MIL_OP_TARGET_INVALID
- MIL_OP_LOGISTICS_MISSING
- MIL_OP_STATE_INVALID
- MIL_OP_CEASEFIRE_CONFLICT
