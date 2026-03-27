# ============================================================
# VALUE AXIS TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: civic-psychology-and-value-axis-seed
component: value-axis-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- happiness_tendency modifies resilience and everyday satisfaction events
- anxiety_tendency modifies crisis sensitivity, delay, and instability reactions
- civic_trust_tendency modifies compliance, institutional reliance, and recovery cooperation
- family_dependence_tendency modifies household-care and kinship-support events
- loyalty_tendency modifies service, state-duty, and patriotic response events
- faith_tendency modifies religious observance, ritual participation, and meaning-seeking events
- competition_tendency modifies school, hiring, and status rivalry events
- conformity_tendency modifies deviation cost and social-pressure events
- self_direction_tendency modifies independent branching and migration-like choice behavior
- prestige_sensitivity_tendency modifies visible consumption, school prestige, and status-comparison events
- insecurity_sensitivity_tendency modifies housing, job-loss, and illness shock severity
- grievance_accumulation_tendency modifies protest, resentment, and long-term dissatisfaction dynamics


# ============================================================
# 2. FINAL RULE
# ============================================================

Value-axis indicators must be usable
as behavioral modifiers for life-course, labor, family, and civic events.
