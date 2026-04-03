# ============================================================
# WAR PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: war-probability-model
component: war-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for war probability posture
inside Civilization.

This model supplements:

- WAR_MODEL
- WAR_DECISION_FLOW_MODEL
- WAR_DECLARATION_FLOW

This model represents
pre-war escalation posture,
not executed war truth.


# ============================================================
# 2. CORE ENTITY
# ============================================================

WarProbability

This model represents
the current probability posture
for interstate or polity-level war escalation.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- war_probability_id
- subject_scope_type
- subject_scope_id
- counterparty_scope_type where applicable
- counterparty_scope_id where applicable
- regional_scope_id where applicable
- probability_value
- risk_band
- trend_direction
- escalation_posture
- event_eligible_flag
- dominant_factor_summary
- mitigation_factor_summary
- recalculated_at
- effective_from where applicable
- effective_to where applicable
- notes where applicable


# ============================================================
# 4. SUBJECT SCOPE
# ============================================================

Supported subject scope examples:

- state
- polity
- alliance block where supported
- region where supported

This model is primarily interstate-facing,
not facility-facing.


# ============================================================
# 5. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- border pressure
- resource competition
- alliance instability
- military imbalance
- diplomatic hostility
- recent incident pressure
- internal instability spillover
- strategic chokepoint pressure
- unresolved prior conflict pressure


# ============================================================
# 6. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- stable_peace_posture
- guarded_tension_posture
- escalation_warning_posture
- war_eligible_posture

The exact enum may evolve,
but readable escalation posture is required.


# ============================================================
# 7. RELATION TO EXISTING WAR MODEL
# ============================================================

WAR_PROBABILITY_MODEL exists before WAR_MODEL.

Representative relation:

war_probability_posture
-> escalation eligibility
-> war decision flow
-> war declaration flow
-> WAR_MODEL activation

This model must not replace WAR_MODEL.

WAR_MODEL remains the active war-state model.


# ============================================================
# 8. FINAL RULE
# ============================================================

WarProbability must remain:

- pre-war
- escalation-readable
- interstate-centered
- factor-aware
- compatible with existing war design assets
