# ============================================================
# WORLD MODE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines canonical world-facing modes.

scope:
Covers modes that affect how the world is interpreted
at a high level, including public world, restricted world,
event world, maintenance world, and simulation-like bounded world contexts.

design_intent:
World mode changes how the world behaves operationally,
but must not change what the world fundamentally is.

canonical_rules:
- World mode must bind to a canonical world scope.
- World mode must not replace world identity.
- World mode must declare public or restricted interpretive boundary.
- World mode must define world-level consumer impact.

required_behavior:
- Support public world mode.
- Support restricted world mode.
- Support maintenance world mode.
- Support event-specialized world mode.
- Support transition into and out of world-level constrained mode.

state_model:
world_mode_class:
- public_normal
- restricted_operation
- event_emphasis
- maintenance_control
- emergency_constraint

validation_rules:
- world_ref is required.
- only one primary world mode may govern the same scope at the same priority tier.
- emergency world mode must declare trigger basis.
- maintenance mode must not silently become public normal.

transition_rules:
- public_normal -> event_emphasis
- public_normal -> maintenance_control
- public_normal -> emergency_constraint
- maintenance_control -> public_normal
- emergency_constraint -> restricted_operation
- restricted_operation -> public_normal

actor_matrix:
- public user -> may observe public-safe world mode
- internal operator -> may observe operational world mode
- high-trust operator -> may switch emergency or maintenance mode where authorized

failure_codes:
- WORLD_MODE_WORLD_REF_MISSING
- WORLD_MODE_PRIMARY_CONFLICT
- WORLD_MODE_TRIGGER_BASIS_MISSING
- WORLD_MODE_UNAUTHORIZED_SWITCH

example_scenarios:
- A city enters event_emphasis mode during a large official event.
- A transport region enters maintenance_control mode during system work.
- A crisis zone enters emergency_constraint mode with restricted public exposure.
