# ============================================================
# OPERATION MODE FLOW
# ============================================================

status: canonical
layer: flow
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for operation-mode handling.

scope:
Covers normal, guided, degraded,
emergency, and maintenance execution-mode flows.

required_behavior:
- Bind operation scope.
- Resolve effective operation mode.
- Handle degraded/emergency escalation.
- Enforce maintenance exit basis.
- Separate public-safe impact and operator detail.

flow_state_model:
operation_mode_flow_state:
- requested
- scope_bound
- mode_resolved
- escalation_checked
- delivered_public
- delivered_operator
- blocked

operation_mode_sequence:
1. receive operation-mode request
2. bind operation scope
3. resolve current mode candidates
4. validate primary conflict
5. check escalation or maintenance basis
6. produce public-safe impact and/or operator detail
7. deliver result

failure_codes:
- OP_MODE_FLOW_SCOPE_MISSING
- OP_MODE_FLOW_PRIMARY_CONFLICT
- OP_MODE_FLOW_CONTROL_BASIS_MISSING
- OP_MODE_FLOW_TERMINATION_BASIS_MISSING

example_scenarios:
- A degraded service path produces public reduced-capacity notice and richer operator detail.
- Emergency mode blocks delivery until control basis is valid.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
