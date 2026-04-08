# ============================================================
# INTERNAL INTEGRATION OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for internal integration contracts.

scope:
Covers internal read contract operation,
internal action-capable contract review,
internal audit contracts,
and containment of hidden mutation risk.

required_behavior:
- Support internal contract activation and suspension.
- Support review of action-capable internal contracts.
- Support internal audit contract preservation.
- Support containment of hidden mutation incidents.

state_model:
internal_integration_operational_state:
- prepared
- active
- suspended
- contained
- audit_review
- archived

validation_rules:
- internal source and target scopes are required.
- action-capable contracts require explicit effect scope.
- hidden mutation risk requires containment.

transition_rules:
- prepared -> active
- active -> suspended
- active -> contained
- contained -> audit_review
- suspended -> archived

failure_codes:
- INTERNAL_INT_OP_SCOPE_MISSING
- INTERNAL_INT_OP_EFFECT_SCOPE_MISSING
- INTERNAL_INT_OP_HIDDEN_MUTATION_INCIDENT

example_scenarios:
- An internal action-capable contract is paused until effect scope is made explicit.
