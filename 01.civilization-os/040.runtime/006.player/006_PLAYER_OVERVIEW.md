# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of the player domain.

summary:
The player runtime resolves active player state,
valid identity binding, effective role,
current progression stage, and participation boundary
for safe downstream consumption.

runtime_intent:
Architecture defines what player means.
Runtime determines whether a player is currently active,
what role is effective,
what progression stage applies,
and what participation boundary is enforceable.

runtime_rules:
- Runtime must resolve player from canonical identity binding.
- Runtime must separate live and historical player states.
- Runtime must not treat archived players as active participants.
- Runtime must enforce role, progression, and boundary consistency.
