# ============================================================
# MORTALITY PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: mortality-probability-model
component: mortality-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for mortality probability posture
inside Civilization.

This model supplements:

- CIVILIZATION_DEATH_RECORD_MODEL
- DEATH_AND_FUNERAL_EVENT_MODEL

This model represents
pre-death probability posture,
not death records themselves.


# ============================================================
# 2. CORE ENTITY
# ============================================================

MortalityProbability

This model represents
the current death-risk posture
for a population scope or individual scope
where the simulation requires it.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- mortality_probability_id
- subject_scope_type
- subject_scope_id
- subject_population_group_code where applicable
- total_probability_value
- risk_band
- trend_direction
- natural_mortality_value where applicable
- epidemic_mortality_value where applicable
- famine_mortality_value where applicable
- war_mortality_value where applicable
- disaster_mortality_value where applicable
- security_related_mortality_value where applicable
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

- population_group
- district
- city
- individual where applicable

Individual support is allowed,
but public visibility is not required.


# ============================================================
# 5. CAUSE BRANCHES
# ============================================================

MortalityProbability should preserve
cause-sensitive branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality

A total mortality posture may aggregate them,
but cause distinction must remain possible.


# ============================================================
# 6. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- age or life-stage pressure where applicable
- health burden
- epidemic exposure
- famine exposure
- war exposure
- disaster exposure
- medical support weakness
- sanitation weakness
- shelter weakness
- support access weakness
- environmental stress
- protective mitigation


# ============================================================
# 7. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- ordinary_mortality_posture
- guarded_mortality_posture
- elevated_mortality_posture
- critical_mortality_posture

Cause-specific visibility may also exist.


# ============================================================
# 8. RELATION TO EXISTING DEATH RECORD MODEL
# ============================================================

MORTALITY_PROBABILITY_MODEL exists before
CIVILIZATION_DEATH_RECORD_MODEL.

Representative relation:

mortality_probability_posture
-> death event eligibility or trigger logic
-> death occurrence
-> death record creation
-> death-related flows

This model must not replace
death records.

Death records remain post-event truth.


# ============================================================
# 9. FINAL RULE
# ============================================================

MortalityProbability must remain:

- pre-death
- cause-sensitive
- factor-aware
- compatible with existing death records
- non-destructive to existing death design assets
