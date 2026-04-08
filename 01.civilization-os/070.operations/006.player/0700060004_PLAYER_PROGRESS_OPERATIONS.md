# ============================================================
# PLAYER PROGRESS OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for player progression.

scope:
Covers onboarding progression control,
advancement, restriction,
correction, and historical progression preservation.

required_behavior:
- Support progression stage advancement.
- Support restriction and restoration.
- Support correction of invalid stage assignment.
- Support historical progression audit.

state_model:
player_progress_operational_state:
- prepared
- active
- restricted
- corrected
- historical
- contained

validation_rules:
- progress_stage is required.
- restricted stage must preserve basis and trace.
- invalid current stage requires correction or containment.

transition_rules:
- prepared -> active
- active -> restricted
- restricted -> active
- active -> corrected
- corrected -> active
- active -> historical
- active -> contained

failure_codes:
- PLAYER_PROGRESS_OP_STAGE_MISSING
- PLAYER_PROGRESS_OP_STAGE_INVALID
- PLAYER_PROGRESS_OP_RESTRICTION_BASIS_MISSING

example_scenarios:
- A player is moved from advanced to restricted with preserved rationale and historical trace.
