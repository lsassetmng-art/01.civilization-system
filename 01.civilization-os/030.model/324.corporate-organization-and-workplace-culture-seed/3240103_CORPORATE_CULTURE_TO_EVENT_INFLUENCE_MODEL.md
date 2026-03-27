# ============================================================
# CORPORATE CULTURE TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: corporate-organization-and-workplace-culture-seed
component: corporate-culture-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- hierarchy_strength_tendency modifies fear-of-superior and promotion-distance events
- report_contact_consult_norm_tendency modifies communication burden and coordination events
- meeting_density_tendency modifies time loss and consensus-friction events
- promotion_competition_tendency modifies rivalry and stress events
- tenure_loyalty_tendency modifies retention and long-term belonging events
- turnover_acceptance_tendency modifies resignation and career-mobility events
- family_business_influence_tendency modifies inherited advancement and exclusion events
- political_maneuvering_visibility_tendency modifies internal conflict and faction events
- meritocracy_visibility_tendency modifies performance reward perception events
- command_style_visibility_tendency modifies discipline and obedience events
- procedural_order_strength_tendency modifies documentation and error-control events
- informal_network_power_tendency modifies hidden influence and patronage events
