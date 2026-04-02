# ============================================================
# EPIDEMIC PROBABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: epidemic-probability
component: epidemic-probability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for epidemic probability calculation
inside Civilization.

This document defines
the probability family
for outbreak, spread, and epidemic escalation risk.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

Epidemic probability is the architectural family
that estimates the likelihood
of disease outbreak or spread escalation
becoming eligible in a population area.

Epidemic probability is not identical to:

- hospital load alone
- sanitation score alone
- mortality probability alone

It must remain
a disease-spread probability family.


# ============================================================
# 3. CALCULATION LEVELS
# ============================================================

Epidemic probability should support
at minimum:

- state level
- city level
- district level
- population-group level where applicable

It may aggregate upward
to continent or world posture
for broad warning visibility.


# ============================================================
# 4. INPUT FACTOR CATEGORIES
# ============================================================

Representative epidemic probability inputs include:

- population density
- crowding
- sanitation
- hygiene
- clean water availability
- medical capacity
- transport and mobility
- climate
- seasonality
- food condition where relevant
- prior outbreak history
- current health burden
- containment posture
- quarantine effectiveness where applicable

This document does not define coefficients,
only input-family legitimacy.


# ============================================================
# 5. OUTPUTS
# ============================================================

Epidemic probability outputs may include:

- outbreak probability posture
- spread probability posture
- hotspot visibility
- public-health risk band
- trend posture
- event-eligible outbreak state where supported


# ============================================================
# 6. EVENT RELATION
# ============================================================

Epidemic probability must connect to:

- outbreak events
- spread events
- containment events
- medical overload events
- recovery or suppression events

Probability does not equal outbreak execution.

Execution remains downstream.


# ============================================================
# 7. VISIBILITY
# ============================================================

Epidemic probability may be surfaced in:

- state information
- city information
- district detail
- hospital and health-support visibility
- alert systems
- authority dashboards


# ============================================================
# 8. FINAL RULE
# ============================================================

Epidemic probability architecture must remain:

- health-risk-centered
- spread-aware
- density-aware
- sanitation-aware
- medical-capacity-aware
- event-connected
- distinct from mortality-only models
