# ============================================================
# CEASEFIRE AND PEACE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Ceasefire and peace transitions formalize suspension or termination of war.

peace_states:
- active_war
- ceasefire
- negotiated_peace
- unresolved_tension
- postwar_recovery

rules:
- ceasefire must be explicit
- peace does not erase war history
- unresolved issues may persist after war end
- demobilization and reconstruction require separate events

event_flow:
- ceasefire_requested
- ceasefire_accepted
- peace_negotiation_started
- peace_agreement_published
- war_state_closed
- recovery_phase_started

final_rule:
War ends only through explicit ceasefire or peace-state events,
never by silent expiration.
