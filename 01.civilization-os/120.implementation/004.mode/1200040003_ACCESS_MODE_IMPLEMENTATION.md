# ============================================================
# ACCESS MODE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for access-facing modes.

scope:
Covers actor-to-access-mode mapping,
least-privilege enforcement,
audit-mode gating,
onboarding separation,
and privilege-escalation denial handling.

implementation_focus:
- access_mode_validator
- actor_class_mapper
- access_mode_selector
- least_privilege_filter
- audit_gate_handler
- access_mode_trace_emitter

handler_contracts:
- map_actor_to_access_mode(actor_context) -> candidate_mode
- enforce_least_privilege(candidate_mode, actor_context) -> effective_mode
- authorize_audit_mode(actor_context, authority_context) -> audit_result
- emit_access_mode_trace(event_type, context) -> trace_result

validation_rules:
- actor_context is required.
- audit path requires authority_context.
- onboarding flow must not reuse operator-only selection path.
- privilege-escalation attempts must be blocked before delivery.

failure_codes:
- ACCESS_MODE_IMPL_ACTOR_CONTEXT_MISSING
- ACCESS_MODE_IMPL_AUDIT_AUTH_REQUIRED
- ACCESS_MODE_IMPL_ONBOARDING_SCOPE_CONFLICT
- ACCESS_MODE_IMPL_PRIVILEGE_ESCALATION_DENIED

example_scenarios:
- A registered actor is mapped to onboarding_guided without inheriting restricted_operator semantics.

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
