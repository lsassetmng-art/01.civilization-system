# ============================================================
# MILITARY FORCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Military force represents organized armed capability of a nation.

core_dimensions:
- manpower
- readiness
- training
- equipment
- technology
- morale
- command_quality

force_states:
- peace_ready
- mobilizing
- deployed
- exhausted
- recovering

rules:
- force strength is derived from explicit military and economic state
- military force does not act without deployment events
- command quality affects outcome but does not replace logistics or economy

integration_points:
- mobilization
- logistics
- war_resolution
- loyalty
- treasury

final_rule:
Military capability must be modeled as structured, auditable capacity,
not as an opaque combat score.
