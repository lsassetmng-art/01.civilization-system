# ============================================================
# PLAYER ROLE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for player roles.

scope:
Covers role assignment, role correction,
high-authority role review,
secondary-role coexistence review,
and historical role audit.

required_behavior:
- Support role assignment and reassignment.
- Support review of elevated roles.
- Support suspension of role effect when required.
- Support historical role trace.

state_model:
player_role_operational_state:
- prepared
- active
- suspended_effect
- corrected
- historical
- contained

validation_rules:
- primary_role is required.
- incompatible primary role combinations require containment or correction.
- elevated role requires authority basis.
- suspended player must not retain active operational role effect.

transition_rules:
- prepared -> active
- active -> suspended_effect
- suspended_effect -> active
- active -> corrected
- corrected -> active
- active -> historical
- active -> contained

failure_codes:
- PLAYER_ROLE_OP_PRIMARY_MISSING
- PLAYER_ROLE_OP_CONFLICT
- PLAYER_ROLE_OP_AUTHORITY_REQUIRED
- PLAYER_ROLE_OP_SUSPENDED_EFFECT_CONFLICT

example_scenarios:
- An operator role assignment is rejected until explicit authority basis is recorded.
