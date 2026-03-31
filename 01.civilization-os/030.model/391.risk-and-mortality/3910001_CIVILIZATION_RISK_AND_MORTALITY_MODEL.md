# ============================================================
# CIVILIZATION RISK AND MORTALITY MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-risk-and-mortality-model
component: civilization-risk-and-mortality-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model layer
for major-risk probability
and mortality probability
inside Civilization.

This model family is a supplement layer.

It does not replace existing:

- WAR_MODEL
- BATTLE_MODEL
- CIVILIZATION_DEATH_RECORD_MODEL
- DEATH_AND_FUNERAL_EVENT_MODEL

Instead,
it provides pre-event probability posture
that can feed those existing models and flows.

This model family covers:

- war probability
- epidemic probability
- famine probability
- mortality probability


# ============================================================
# 2. MODEL POSITION
# ============================================================

This model family sits before:

- war execution models
- death record models
- post-event flow models

This family exists to represent:

- probability posture
- current risk band
- active contributing factors
- trend direction
- event eligibility posture where supported

These models are not final event records.

They are pre-event state models.


# ============================================================
# 3. REQUIRED CHILD MODELS
# ============================================================

This parent model requires:

- WAR_PROBABILITY_MODEL
- EPIDEMIC_PROBABILITY_MODEL
- FAMINE_PROBABILITY_MODEL
- MORTALITY_PROBABILITY_MODEL


# ============================================================
# 4. SHARED MODEL PRINCIPLES
# ============================================================

All child probability models should support
the following shared concepts where applicable.

- subject scope
- calculation level
- probability posture
- severity band
- trend direction
- factor summary
- recalculated_at
- source period or effective window where supported
- event eligibility posture where supported

Probability models must not be treated as
executed event records.

Executed events remain separate.


# ============================================================
# 5. CALCULATION LEVEL CONCEPT
# ============================================================

Probability models may apply to:

- world
- continent
- state
- city
- district
- population group
- individual

Not every child model must support
every level identically.

But level-aware application must remain possible.


# ============================================================
# 6. RISK BAND CONCEPT
# ============================================================

All child models may use
a normalized risk band concept.

Representative bands may include:

- negligible
- low
- guarded
- elevated
- high
- critical

This document does not force
the final enum implementation,
but the architecture expects
banded readability.


# ============================================================
# 7. TREND CONCEPT
# ============================================================

All child models may expose
trend posture such as:

- decreasing
- stable
- rising
- sharply_rising

This is for visibility and control.

Trend is not identical to probability value.


# ============================================================
# 8. FACTOR SUMMARY CONCEPT
# ============================================================

Child probability models should allow
factor visibility in model form.

This may include:

- dominant_factors
- contributing_factors
- suppressed_factors
- mitigation_factors

The exact structure may differ per child model.

But opaque probability-only modeling
should be avoided.


# ============================================================
# 9. RELATION TO EXISTING MODELS
# ============================================================

This model family supplements existing models.

Representative relation:

- WAR_PROBABILITY_MODEL
  feeds war-eligibility and escalation posture
  before WAR_MODEL becomes active

- MORTALITY_PROBABILITY_MODEL
  feeds death-risk posture
  before CIVILIZATION_DEATH_RECORD_MODEL is created

- EPIDEMIC_PROBABILITY_MODEL
  feeds outbreak and spread posture
  before disease-event and mortality flows

- FAMINE_PROBABILITY_MODEL
  feeds food-system crisis posture
  before famine event and famine-linked mortality flows


# ============================================================
# 10. FINAL RULE
# ============================================================

Civilization risk and mortality models must remain:

- pre-event
- cause-sensitive
- probability-centered
- factor-readable
- compatible with existing war and death models
- non-destructive to existing design assets
