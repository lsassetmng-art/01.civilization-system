# ============================================================
# LOYALTY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Loyalty represents attachment and trust between actor and nation.

purpose:
- connect personal life to national stability
- influence protest, crime, unrest, and civic behavior

drivers:
- taxation experience
- law fairness
- security pressure
- prosperity
- war outcome
- discrimination or protection
- social mobility

rules:
- loyalty does not change silently over time
- time passage may trigger evaluation, but change requires event emission
- loyalty is contextual, not absolute morality

event_flow:
- loyalty_context_evaluated
- loyalty_change_event
- loyalty_state_recalculated
- downstream_social_effect_event

effects:
- low loyalty may increase unrest risk
- high loyalty may increase stability and cooperation

constitution_alignment:
- explicit event required
- no automatic hidden drift without event

final_rule:
Loyalty changes must always be represented by explicit loyalty events.
