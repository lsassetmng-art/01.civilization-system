# ============================================================
# WORLD MODE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for world-facing modes.

scope:
Covers world-mode lookup, current world-mode selection,
public-safe masking, emergency/maintenance switching,
history reads, and rollback linkage.

implementation_focus:
- world_mode_validator
- world_mode_resolver
- world_mode_selector
- world_mode_public_filter
- world_mode_switch_handler
- world_mode_history_reader
- world_mode_trace_emitter

handler_contracts:
- resolve_world_mode(world_ref, request_mode) -> world_mode_result
- filter_world_mode_for_public(world_mode_result) -> public_safe_projection
- switch_world_mode(world_ref, target_world_mode, authority_context) -> switch_result
- read_world_mode_history(world_ref) -> history_chain

validation_rules:
- world_ref is required.
- emergency or maintenance target mode requires control basis.
- public projection must suppress restricted internal semantics.
- history reads must remain distinct from current-active reads.

failure_codes:
- WORLD_MODE_IMPL_WORLD_REF_MISSING
- WORLD_MODE_IMPL_CONTROL_BASIS_REQUIRED
- WORLD_MODE_IMPL_PUBLIC_FILTER_FAILED
- WORLD_MODE_IMPL_HISTORY_READ_FAILED

example_scenarios:
- A world emergency switch succeeds only after authority_context validation and emits prior-state linkage for rollback.

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
