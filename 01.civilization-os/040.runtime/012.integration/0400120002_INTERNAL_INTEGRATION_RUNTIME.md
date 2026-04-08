# ============================================================
# INTERNAL INTEGRATION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for internal integration.

scope:
Covers internal read contracts,
internal action/request contracts,
internal review paths,
and internal audit delivery.

runtime_rules:
- Runtime must resolve internal contracts explicitly.
- Internal integration must still enforce source ownership and target allowance.
- Internal action requests must not create hidden mutation paths.
- Internal audit delivery must remain non-mutating.

required_behavior:
- Resolve active internal contract.
- Deliver internal read projection.
- Validate internal action request scope.
- Support internal audit reads with explicit basis.

state_model:
internal_integration_runtime_state:
- unresolved
- read_ready
- action_request_ready
- audit_ready
- delivered
- blocked

validation_rules:
- internal source and target scopes are required.
- action_request must declare effect scope.
- audit path must declare inspection basis.
- hidden mutation path is prohibited.

transition_rules:
- unresolved -> read_ready
- unresolved -> action_request_ready
- unresolved -> audit_ready
- ready state -> delivered
- invalid -> blocked

failure_codes:
- INTERNAL_INT_RT_SCOPE_MISSING
- INTERNAL_INT_RT_EFFECT_SCOPE_MISSING
- INTERNAL_INT_RT_AUDIT_BASIS_MISSING
- INTERNAL_INT_RT_HIDDEN_MUTATION_DENIED

example_scenarios:
- A work UI receives internal read data from activity domain.
- An internal review request is blocked because intended effect scope is missing.
