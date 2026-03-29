# ============================================================
# CIVILIZATION LIFE EVENT ACTOR CLASS COMPATIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-actor-class-compatibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTOR RULES
# ============================================================

actor_rules:
- user_persona: full_life_event_subject
- ai_human: full_life_event_subject
- ai_robot: support_only_unless_event_explicitly_allows_participation


# ============================================================
# 2. FINAL RULE
# ============================================================

Life event participation
must respect actor class compatibility.
