# ============================================================
# CIVILIZATION RISK AND MORTALITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: civilization-risk-and-mortality
component: civilization-risk-and-mortality

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for major-risk probability calculation
and mortality probability calculation
inside Civilization.

This document covers
the upper architecture for:

- war probability
- epidemic probability
- famine probability
- mortality probability

This document defines:

- architectural separation
- probability family boundaries
- input domain categories
- calculation hierarchy
- visibility boundaries
- event connection points

This document does not define:

- exact formulas
- exact coefficients
- exact data schemas
- UI field-level contracts
- implementation-specific random mechanics


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization must support
structured probability calculation
for major civilization risks.

At minimum,
the system must support
independent but connectable calculation families for:

- war
- epidemic
- famine
- mortality

These probability families must not be collapsed
into a single opaque risk number only.

Each family must remain:

- independently explainable
- independently tunable
- independently visible where required
- composable into higher-level civilization risk views


# ============================================================
# 3. ARCHITECTURAL POSITION
# ============================================================

Risk and mortality architecture
belongs to the world simulation side
of Civilization.

It interacts with:

- world model
- geography
- states
- cities
- districts
- population
- economy
- food systems
- military systems
- health systems
- disaster systems
- event systems

It may influence UI visibility,
but UI is not the owner of risk truth.

It may influence runtime behavior,
but runtime does not define architectural boundaries.


# ============================================================
# 4. PROBABILITY FAMILY SEPARATION
# ============================================================

The following families must remain distinct.

1. war probability
2. epidemic probability
3. famine probability
4. mortality probability

War probability is not the same as
general unrest probability.

Epidemic probability is not the same as
general health burden only.

Famine probability is not the same as
general poverty only.

Mortality probability is not the same as
a single undifferentiated death flag.

The system must preserve
cause-sensitive separation.


# ============================================================
# 5. CALCULATION LEVELS
# ============================================================

Probability calculation must support
multiple spatial and societal levels.

At minimum:

- world level
- continent level where applicable
- state level
- city level
- district level
- population-group level where applicable
- individual level where applicable

Not every probability family
must calculate in exactly the same way
at every level,
but the architecture must support
level-aware calculation.


# ============================================================
# 6. INPUT FACTOR CATEGORIES
# ============================================================

Major-risk probability families
must be allowed to consume
multiple categories of input factors.

Representative categories include:

- geography
- climate
- seasonality
- food production
- food reserves
- infrastructure condition
- sanitation and hygiene
- medical capacity
- population density
- crowding
- mobility and transport
- state relations
- military posture
- resource competition
- alliance structure
- internal instability
- economic stress
- historical memory
- prior event history

This document does not fix
the final field list.

It fixes the architectural allowance
for multi-domain inputs.


# ============================================================
# 7. OUTPUT STRUCTURE
# ============================================================

Each risk family must support
at minimum the following outputs.

- current probability posture
- directional trend where supported
- severity band where supported
- active factor visibility where supported
- downstream event eligibility where supported

The system may also support:

- forecast windows
- risk category summaries
- localized hot-spot outputs
- causal explanation summaries

Outputs must be usable by:

- runtime
- UI visibility layers
- alert systems
- policy systems
- simulation observers


# ============================================================
# 8. EVENT RELATION
# ============================================================

Probability calculation is not identical to event execution.

The architecture must distinguish between:

- risk probability
- event trigger eligibility
- event execution
- post-event aftermath

A high probability does not necessarily mean
an event has occurred.

An executed event may change
future probability calculations.

Risk and event layers must remain connected
but not collapsed.


# ============================================================
# 9. MORTALITY ARCHITECTURE POSITION
# ============================================================

Mortality probability is the upper death-risk family.

Mortality must not be modeled
only as a single flat chance.

The architecture should allow
cause-sensitive mortality branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality where applicable

A final mortality posture
may aggregate multiple causes,
but cause-level distinction must remain possible.


# ============================================================
# 10. UI VISIBILITY BOUNDARY
# ============================================================

Risk truth may be partially visible in UI.

Representative visibility targets include:

- global map
- continent map
- state information
- city information
- district detail
- facility overview where relevant
- issue and alert surfaces
- policy and authority surfaces

However,
UI visibility must remain a consumer
of risk architecture,
not the owner of risk truth.


# ============================================================
# 11. RUNTIME VISIBILITY BOUNDARY
# ============================================================

Runtime may use risk outputs for:

- event scheduling
- alert generation
- trend recalculation
- simulation steering
- intervention recommendation

However,
runtime must not redefine
the structural separation
between war, epidemic, famine, and mortality.


# ============================================================
# 12. POLICY RELATION
# ============================================================

Risk architecture may be affected by policy,
but must not be replaced by policy.

Policy may:

- reduce or increase risk
- shift thresholds
- improve resilience
- alter preparedness

But policy is one input family,
not the risk family itself.


# ============================================================
# 13. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires child architectures for:

- WAR_PROBABILITY_ARCHITECTURE
- EPIDEMIC_PROBABILITY_ARCHITECTURE
- FAMINE_PROBABILITY_ARCHITECTURE
- MORTALITY_PROBABILITY_ARCHITECTURE


# ============================================================
# 14. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture should be followed by:

- model documents for risk factors and outputs
- runtime documents for recalculation timing and triggers
- implementation documents for formulas and weighting
- interface documents for visibility exposure where needed

The exact layer split may evolve,
but the separation principle must remain fixed.


# ============================================================
# 15. FINAL RULE
# ============================================================

Civilization major-risk architecture must remain:

- multi-family
- cause-sensitive
- level-aware
- event-connected
- UI-consumable
- runtime-consumable
- structurally explainable

War, epidemic, famine, and mortality
must remain distinct architectural families.
