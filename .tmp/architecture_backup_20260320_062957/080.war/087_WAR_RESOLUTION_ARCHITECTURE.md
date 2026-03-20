# ============================================================
# WAR RESOLUTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
War resolution determines strategic conflict outcomes without realtime combat.

inputs:
- military_force
- logistics
- economy
- alliance_support
- morale
- loyalty
- intelligence_quality
- prior_war_state

resolution_model:
- event-based
- turn-like strategic intervals
- weighted deterministic/probabilistic hybrid within explicit rules

visibility_model:
- player receives limited, role-appropriate information
- full internal calculation is not fully exposed as live battlefield telemetry

rules:
- battle outcome must be derived from explicit factors
- no twitch or direct realtime control exists
- outcome generation must be reproducible from recorded state and rules

event_flow:
- war_resolution_cycle_started
- strategic_state_compiled
- outcome_calculated
- war_impact_emitted
- front_state_updated

final_rule:
War resolution must be strategic, auditable, and driven by explicit state,
not direct realtime player reflexes.
