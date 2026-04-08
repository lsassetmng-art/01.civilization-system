# ============================================================
# PLAYER BOUNDARY OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for player boundaries.

scope:
Covers switching between full, limited,
view_only, admin_managed, and historical_only boundaries,
plus correction and audit.

required_behavior:
- Support boundary assignment and change.
- Support admin_managed boundary review.
- Support historical_only conversion with preserved trace.
- Support correction of invalid boundary state.

state_model:
player_boundary_operational_state:
- prepared
- active
- corrected
- historical
- contained
- audit_review

validation_rules:
- boundary_class is required.
- admin_managed requires authority basis.
- historical_only must not be treated as live participation.
- view_only must not be used to carry hidden live control.

transition_rules:
- prepared -> active
- active -> corrected
- corrected -> active
- active -> historical
- active -> contained
- contained -> audit_review

failure_codes:
- PLAYER_BOUNDARY_OP_CLASS_MISSING
- PLAYER_BOUNDARY_OP_ADMIN_AUTH_REQUIRED
- PLAYER_BOUNDARY_OP_HISTORY_LIVE_CONFLICT
- PLAYER_BOUNDARY_OP_VIEW_CONTROL_CONFLICT

example_scenarios:
- A player is shifted into admin_managed boundary for safety control, with authority trace preserved.
