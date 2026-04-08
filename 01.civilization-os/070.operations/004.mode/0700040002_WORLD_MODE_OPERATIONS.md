# ============================================================
# WORLD MODE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for world-facing modes.

scope:
Covers activation, switching, suspension,
maintenance control, emergency constraint handling,
and historical review for world modes.

required_behavior:
- Support public_normal, event_emphasis, maintenance_control, and emergency_constraint handling.
- Support controlled switch between world modes.
- Support containment of invalid world-mode conflicts.
- Support historical inspection of prior world modes.

state_model:
world_mode_operational_state:
- prepared
- active
- suspended
- contained
- historical
- archived

validation_rules:
- world_ref is required.
- maintenance_control and emergency_constraint require control basis.
- conflicting primary world modes in the same scope require containment.
- public rollback must not erase emergency history.

transition_rules:
- prepared -> active
- active -> suspended
- active -> contained
- active -> historical
- suspended -> active
- historical -> archived

failure_codes:
- WORLD_MODE_OP_WORLD_REF_MISSING
- WORLD_MODE_OP_CONTROL_BASIS_REQUIRED
- WORLD_MODE_OP_PRIMARY_CONFLICT
- WORLD_MODE_OP_HISTORY_ERASURE_DENIED

example_scenarios:
- A city enters maintenance_control and later returns to public_normal with full historical trace preserved.
