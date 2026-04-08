# ============================================================
# INTERNAL INTEGRATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for internal integration contracts.

scope:
Covers internal read routing,
effect-scope validation for action-capable contracts,
audit-trace reads,
and hidden-mutation denial handling.

implementation_focus:
- internal_contract_validator
- internal_read_router
- effect_scope_checker
- internal_action_guard
- internal_audit_reader
- internal_trace_emitter

handler_contracts:
- route_internal_read(contract_ref, actor_scope) -> read_result
- validate_internal_effect_scope(contract_ref, effect_scope) -> effect_result
- guard_internal_action(contract_ref, authority_context) -> action_guard_result
- read_internal_audit_trace(contract_ref, history_context) -> audit_result

validation_rules:
- contract_ref is required.
- actor_scope is required for internal reads.
- effect_scope is required for action-capable contracts.
- authority_context is required for internal action mutation where applicable.
- audit reads require history_context.

failure_codes:
- INTERNAL_INT_IMPL_CONTRACT_REF_MISSING
- INTERNAL_INT_IMPL_ACTOR_SCOPE_MISSING
- INTERNAL_INT_IMPL_EFFECT_SCOPE_REQUIRED
- INTERNAL_INT_IMPL_ACTION_GUARD_FAILED
- INTERNAL_INT_IMPL_AUDIT_READ_FAILED

example_scenarios:
- An internal action-capable contract is blocked until effect_scope_checker confirms explicit mutation scope.

required_behavior:
- validate canonical input before execution
- keep restricted and public paths separated where applicable
- preserve historical reads as separate from live execution

implementation_components:
- validator
- resolver or router
- filter or guard
- history reader
- trace emitter

module_split:
- input validation module
- execution module
- filtering or guard module
- history module
- trace module

implementation_rules:
- validation precedes execution
- filtering precedes delivery
- history paths remain distinct from live paths
- denied actions emit stable failure codes and trace
