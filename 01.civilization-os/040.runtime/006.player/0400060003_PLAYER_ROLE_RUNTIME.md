# ============================================================
# PLAYER ROLE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for player role selection.

scope:
Covers effective primary role selection,
bounded secondary role coexistence,
role suspension effect,
and role-authority delivery.

runtime_rules:
- Runtime must resolve primary role explicitly.
- Secondary role coexistence must be explicitly allowed.
- Suspended player state must suppress active operational role effect where required.
- High-authority role must require explicit authorization basis.

required_behavior:
- Select effective primary role.
- Filter or suppress incompatible secondary roles.
- Enforce authorization basis for high-authority roles.
- Emit denial on invalid role conflict.

state_model:
player_role_runtime_state:
- unresolved
- primary_selected
- secondary_applied
- limited_effect
- blocked
- historical_only

validation_rules:
- primary_role is required.
- incompatible primary roles are prohibited.
- operator/governor/auditor delivery requires appropriate basis where defined.
- suspended lifecycle must block active operational role effect.

transition_rules:
- unresolved -> primary_selected
- primary_selected -> secondary_applied
- primary_selected -> limited_effect
- any invalid path -> blocked

failure_codes:
- PLAYER_ROLE_RT_PRIMARY_MISSING
- PLAYER_ROLE_RT_CONFLICT
- PLAYER_ROLE_RT_AUTH_BASIS_REQUIRED
- PLAYER_ROLE_RT_SUSPENDED_EFFECT_DENIED

example_scenarios:
- A worker role is selected as primary while resident remains bounded secondary context.
- An operator role is blocked because authorization basis is missing.
