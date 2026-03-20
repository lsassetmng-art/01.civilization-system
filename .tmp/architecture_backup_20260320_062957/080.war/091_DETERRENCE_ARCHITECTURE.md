# ============================================================
# DETERRENCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Deterrence represents the ability to discourage hostile action
without entering active war.

drivers:
- visible_force_strength
- alliance credibility
- logistics readiness
- political stability
- prior_war_outcomes

rules:
- deterrence affects war likelihood, not war legality
- deterrence must not silently create peace without diplomacy state

event_flow:
- deterrence_state_evaluated
- conflict_likelihood_adjusted
- diplomacy_tension_recalculated

final_rule:
Deterrence influences strategic choices,
but does not replace explicit diplomatic or war events.
