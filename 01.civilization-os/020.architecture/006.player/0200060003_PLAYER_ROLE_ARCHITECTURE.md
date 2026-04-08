# ============================================================
# PLAYER ROLE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines player role architecture.

scope:
Covers player role assignment, role priority,
role coexistence, role transition, and role-linked authority boundary.

design_intent:
Player role defines how a player participates,
but does not replace player identity or lifecycle truth.

canonical_rules:
- Primary role must be explicit.
- Secondary role coexistence must be explicit if allowed.
- Role transitions must be traceable.
- Role must not silently imply unrestricted authority.

required_behavior:
- Support primary role.
- Support bounded secondary role.
- Support role transition.
- Support role suspension or deactivation.

state_model:
player_role_class:
- resident
- worker
- operator
- creator
- governor
- auditor

validation_rules:
- primary_role is required.
- incompatible primary role combinations are prohibited.
- high-authority role requires explicit authorization basis.
- suspended player must not retain active operational role effect.

transition_rules:
- resident -> worker
- worker -> operator
- operator -> auditor
- creator -> operator
- any active role -> suspended role effect when player suspended

actor_matrix:
- resident -> ordinary participation
- worker -> work participation
- operator -> bounded operational participation
- creator -> creation-linked participation
- governor -> governance-linked participation
- auditor -> historical inspection participation

failure_codes:
- PLAYER_ROLE_PRIMARY_MISSING
- PLAYER_ROLE_CONFLICT
- PLAYER_ROLE_AUTHORITY_BASIS_MISSING
- PLAYER_ROLE_SUSPENDED_EFFECT_CONFLICT

example_scenarios:
- A player becomes worker while retaining resident as bounded secondary context.
- An operator role is denied without explicit authorization basis.
