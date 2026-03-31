# ============================================================
# FAMINE PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: famine-probability-model
component: famine-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for famine probability posture
inside Civilization.

This model represents:

- food insecurity escalation posture
- famine eligibility posture
- local hunger hotspot posture

This model is pre-event and pre-famine-record.


# ============================================================
# 2. CORE ENTITY
# ============================================================

FamineProbability

This model represents
the current food-system crisis posture
for a geographic or population scope.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- famine_probability_id
- subject_scope_type
- subject_scope_id
- food_system_scope_code where applicable
- probability_value
- food_insecurity_value where applicable
- risk_band
- trend_direction
- hotspot_flag
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
- city
- district
- population_group

This model should remain meaningful
at local and regional levels.


# ============================================================
# 5. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- food production weakness
- reserve weakness
- logistics disruption
- import dependency stress
- market access weakness
- affordability stress
- disaster aftermath
- conflict disruption
- climate stress
- relief mitigation


# ============================================================
# 6. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- food_stable_posture
- guarded_food_insecurity_posture
- elevated_famine_risk_posture
- famine_hotspot_posture

The exact enum may evolve,
but food-system readability is required.


# ============================================================
# 7. RELATION TO EXISTING AGRICULTURE / MARKET / DEATH DESIGN
# ============================================================

FAMINE_PROBABILITY_MODEL may feed:

- famine event eligibility
- market warning visibility
- agriculture warning visibility
- famine-linked mortality posture

This model does not replace
agriculture operation models,
market models,
or death records.

It precedes them.


# ============================================================
# 8. FINAL RULE
# ============================================================

FamineProbability must remain:

- pre-famine
- food-system-aware
- logistics-aware
- locality-aware
- factor-aware
- compatible with downstream event and mortality models
