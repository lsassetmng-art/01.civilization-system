# ============================================================
# WAR OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: war

definition:
War is structured inter-state conflict resolved through strategic,
event-driven, non-realtime systems.

purpose:
- represent armed conflict between nations
- connect diplomacy, economy, loyalty, and military outcomes
- avoid low-level tactical micro-control

principles:
- war is not realtime action gameplay
- war is high-level decision and consequence system
- war outcomes must be auditable and reproducible
- war affects all major domains

reasons_for_non_realtime_model:
- player is one human, not a battlefield controller
- high command perspective is the intended role
- information asymmetry is part of strategy
- economy, diplomacy, and logistics must matter more than reflex action

core_subdomains:
- war_declaration
- mobilization
- military_force
- logistics
- alliance_activation
- battle_resolution
- war_outcome
- ceasefire
- reconstruction

constitution_alignment:
- explicit authority required
- event-driven transitions only
- no hidden war state mutation

final_rule:
War must be executed as explicit, strategic, event-driven conflict,
never as silent or realtime uncontrolled simulation.
