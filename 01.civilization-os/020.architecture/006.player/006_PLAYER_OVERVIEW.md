# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture overview of the player domain.

summary:
The player domain defines canonical player existence,
identity boundary, role boundary, progression boundary,
and participation boundary within CivilizationOS.

design_intent:
Player is a canonical participant,
not a temporary session artifact.
The player domain exists to stabilize who participates,
under what role, with what progression context,
and under what boundaries.

scope:
- player identity
- player role
- player progression
- player participation boundary
- player consumer and authority boundary

non_scope:
- raw authentication implementation
- temporary UI session state
- unrelated external identity ownership
- ad hoc role flags hidden in implementation

canonical_rules:
- Player must have canonical identity binding.
- Player role must be explicit.
- Player progression must be explicit.
- Player boundary must be explicit and queryable.
- Player truth must remain distinct from UI session state.

required_behavior:
- Define player identity structure.
- Define player role structure.
- Define player progression structure.
- Define authority and consumer boundary.
