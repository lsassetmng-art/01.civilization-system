# ============================================================
# EPIDEMIC PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: epidemic-probability-model
component: epidemic-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for epidemic probability posture
inside Civilization.

This model represents:

- outbreak probability posture
- spread probability posture
- hotspot posture

This model is pre-event and pre-outbreak-record.


# ============================================================
# 2. CORE ENTITY
# ============================================================

EpidemicProbability

This model represents
the current epidemic-risk posture
for a geographic or population scope.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- epidemic_probability_id
- subject_scope_type
- subject_scope_id
- disease_family_code where applicable
- probability_value
- spread_probability_value where applicable
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

This model may aggregate upward,
but should remain locally meaningful.


# ============================================================
# 5. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- population density
- crowding
- sanitation weakness
- hygiene weakness
- clean water weakness
- medical capacity weakness
- mobility pressure
- climate pressure
- seasonality pressure
- outbreak history pressure
- containment mitigation


# ============================================================
# 6. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- low_outbreak_posture
- guarded_outbreak_posture
- elevated_spread_posture
- epidemic_hotspot_posture

The exact enum may evolve,
but outbreak and spread readability is required.


# ============================================================
# 7. RELATION TO EXISTING HEALTH / DEATH DESIGN
# ============================================================

EPIDEMIC_PROBABILITY_MODEL may feed:

- outbreak event eligibility
- hospital burden visibility
- epidemic-linked mortality posture

This model does not replace
death records or hospital operation models.

It precedes them.


# ============================================================
# 8. FINAL RULE
# ============================================================

EpidemicProbability must remain:

- pre-outbreak
- spread-aware
- locality-aware
- factor-aware
- compatible with downstream health and mortality models
