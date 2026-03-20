# ============================================================
# WORLD ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
World is the persistent simulation environment in which player life occurs.

purpose:
- provide the environmental context for all player systems
- connect nation, economy, security, and history to the player

world_components:
- nations
- markets
- institutions
- population
- historical events
- external pressures

rules:
- player does not directly own world state
- world changes only through explicit domain events
- world context is readable, not directly mutable by player

constitution_alignment:
- world is authoritative backend context
- no direct UI mutation

final_rule:
World state is persistent shared context, not player-owned mutable state.
