# ============================================================
# MORTALITY PROBABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: mortality-probability
component: mortality-probability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for mortality probability calculation
inside Civilization.

This document defines
the probability family
for death-risk estimation
across multiple causes.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

Mortality probability is the architectural family
that estimates the likelihood
of death occurring
for a population unit or individual unit
within simulation context.

Mortality probability must not be modeled
as a single cause-blind chance only.

Cause distinction must remain possible.


# ============================================================
# 3. CAUSE FAMILIES
# ============================================================

Mortality probability should support
distinct mortality cause branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality where applicable

A combined mortality posture may exist,
but cause-sensitive branching must remain possible.


# ============================================================
# 4. CALCULATION LEVELS
# ============================================================

Mortality probability should support
at minimum:

- population-group level
- city level aggregated posture
- district level aggregated posture
- individual level where the simulation requires it

Mortality outputs may also aggregate upward
for broader visibility.


# ============================================================
# 5. INPUT FACTOR CATEGORIES
# ============================================================

Representative mortality probability inputs include:

- age or life-stage factors where applicable
- health burden
- epidemic exposure
- famine exposure
- war exposure
- disaster exposure
- medical capacity
- sanitation
- shelter condition
- support access
- environmental stress
- recent injury or instability factors where applicable

This document does not define coefficients,
only input-family legitimacy.


# ============================================================
# 6. OUTPUTS
# ============================================================

Mortality probability outputs may include:

- total mortality posture
- cause-specific mortality posture
- mortality trend
- high-risk-group visibility
- event-eligible death-risk state where supported


# ============================================================
# 7. EVENT RELATION
# ============================================================

Mortality probability must connect to:

- natural death events
- epidemic death events
- famine death events
- war death events
- disaster death events
- recovery or survival improvement loops where applicable

Probability does not equal death execution.

Execution remains downstream.


# ============================================================
# 8. VISIBILITY
# ============================================================

Mortality probability may be surfaced in:

- health-support views
- state information
- city and district warning views
- authority dashboards
- demographic simulation observers where applicable

Individual-level visibility must be handled carefully
and need not be public-facing.


# ============================================================
# 9. FINAL RULE
# ============================================================

Mortality probability architecture must remain:

- cause-sensitive
- level-aware
- health-aware
- famine-aware
- war-aware
- disaster-aware
- event-connected
- distinct from a single opaque death score
