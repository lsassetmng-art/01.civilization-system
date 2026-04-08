# ============================================================
# WORLD MODE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for world-facing modes.

scope:
Covers active world-mode resolution,
public-safe world-mode exposure,
maintenance or emergency mode selection,
and historical world-mode inspection.

runtime_rules:
- Runtime must resolve world mode by world scope.
- Runtime must not expose restricted world mode to public consumers without masking.
- Maintenance and emergency modes must declare controlling basis.
- Historical world modes must remain separate from current-active mode.

required_behavior:
- Resolve current world mode.
- Support public-safe world mode delivery.
- Support internal richer world mode delivery.
- Support historical world mode inspection.
- Block unresolved emergency conflict.

state_model:
world_mode_runtime_state:
- unresolved
- public_normal
- restricted_operation
- event_emphasis
- maintenance_control
- emergency_constraint
- blocked
- historical_only

validation_rules:
- world_ref is required.
- maintenance or emergency mode requires control basis.
- conflicting world primary modes in same scope must be resolved before exposure.
- public delivery of restricted/emergency mode must be masked where needed.

transition_rules:
- unresolved -> public_normal
- public_normal -> event_emphasis
- public_normal -> maintenance_control
- public_normal -> emergency_constraint
- emergency_constraint -> restricted_operation
- any current state -> historical_only

failure_codes:
- WORLD_MODE_RT_WORLD_REF_MISSING
- WORLD_MODE_RT_CONTROL_BASIS_MISSING
- WORLD_MODE_RT_PRIMARY_CONFLICT
- WORLD_MODE_RT_PUBLIC_SCOPE_DENIED

example_scenarios:
- Public users see an event-emphasis summary without internal control detail.
- Operators see maintenance-control world mode with richer operational context.
