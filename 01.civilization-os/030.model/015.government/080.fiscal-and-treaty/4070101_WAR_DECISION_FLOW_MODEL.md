# ============================================================
# WAR DECISION FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-diplomacy-play
component: war-decision-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL FLOW
# ============================================================

canonical_flow:
- diplomatic_tension_accumulates
- military_posture_changes
- authority_decision_made
- war_state_declared
- mobilization_executes
- logistics_and_border_state_shift
- conflict_outcome_updates


# ============================================================
# 2. FINAL RULE
# ============================================================

War must begin
through explicit state transition.
