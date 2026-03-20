# ============================================================
# WAR DECLARATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
War declaration is the formal transition from hostile tension
to active inter-state war.

requirements:
- lawful authority
- valid target nation
- declaration event
- optional justification record
- alliance impact evaluation

rules:
- war cannot begin silently
- declaration must be logged and publishable
- declaration failure prevents war-state activation

event_flow:
- war_declaration_requested
- war_legality_checked
- alliance_impact_evaluated
- war_declared
- war_state_activated
- public_notice_published

integration_points:
- law
- government
- diplomacy
- gazette
- alliance

final_rule:
War begins only through explicit declaration and lawful activation.
