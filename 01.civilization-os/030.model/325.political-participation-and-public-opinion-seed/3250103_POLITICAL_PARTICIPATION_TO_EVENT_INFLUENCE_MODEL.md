# ============================================================
# POLITICAL PARTICIPATION TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: political-participation-and-public-opinion-seed
component: political-participation-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- electoral_participation_tendency modifies turnout and civic legitimacy events
- petition_and_complaint_tendency modifies procedural redress events
- protest_visibility_tendency modifies street mobilization events
- fear_of_state_tendency modifies silence and self-censorship events
- state_loyalty_tendency modifies compliance and rally-around-state events
- local_identity_priority_tendency modifies city-first political response events
- public_opinion_volatility_tendency modifies scandal swing and sudden mood-shift events
- political_apathy_tendency modifies disengagement and low-response events
- dissent_cost_tendency modifies protest suppression and risk-calculation events
- elite_capture_visibility_tendency modifies resentment and rigged-system perception events
- class_voice_gap_tendency modifies unequal political impact events
- ideology_dependence_tendency modifies faith-like political obedience and legitimacy events
