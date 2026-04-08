# ============================================================
# OPERATION MODE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for operation-facing modes.

scope:
Covers operation-scope resolution,
degraded/emergency mode selection,
public-safe impact projection,
maintenance gating,
and operation-mode rollback handling.

implementation_focus:
- operation_mode_validator
- operation_scope_resolver
- operation_mode_selector
- public_service_impact_projector
- restricted_operation_filter
- operation_mode_switch_handler
- operation_mode_history_reader

handler_contracts:
- resolve_operation_mode(operation_scope, request_mode) -> operation_mode_result
- project_public_service_impact(operation_mode_result) -> public_projection
- switch_operation_mode(operation_scope, target_mode, authority_context) -> switch_result
- read_operation_mode_history(operation_scope) -> history_result

validation_rules:
- operation_scope is required.
- high-impact target mode requires authority_context.
- public projection must not expose restricted internal routing or emergency control data.
- history reads must not pollute live/current caches.

failure_codes:
- OP_MODE_IMPL_SCOPE_MISSING
- OP_MODE_IMPL_AUTHORITY_REQUIRED
- OP_MODE_IMPL_PUBLIC_PROJECTION_FAILED
- OP_MODE_IMPL_HISTORY_READ_FAILED

example_scenarios:
- A degraded mode read returns public impact summary to one consumer and internal execution semantics to another through separate filters.

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
