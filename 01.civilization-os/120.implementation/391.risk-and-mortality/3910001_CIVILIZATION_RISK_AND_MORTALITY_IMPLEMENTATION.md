# ============================================================
# CIVILIZATION RISK AND MORTALITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: civilization-risk-and-mortality-implementation
component: civilization-risk-and-mortality-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for major-risk probability
and mortality probability
inside Civilization.

This document must align with:

- CIVILIZATION_RISK_AND_MORTALITY_ARCHITECTURE
- CIVILIZATION_RISK_AND_MORTALITY_MODEL
- WAR_PROBABILITY_ARCHITECTURE
- EPIDEMIC_PROBABILITY_ARCHITECTURE
- FAMINE_PROBABILITY_ARCHITECTURE
- MORTALITY_PROBABILITY_ARCHITECTURE

This document defines:

- recalculation timing
- input aggregation behavior
- normalization posture
- event-eligibility handoff
- visibility handoff
- compatibility with existing war and death systems

This document does not redefine:

- existing WAR_MODEL execution truth
- existing death-record truth
- event record truth
- UI field contracts


# ============================================================
# 2. IMPLEMENTATION POSITION
# ============================================================

Risk probability implementation
sits before event execution
and before post-event records.

Representative sequence:

factor aggregation
-> probability calculation
-> banding and trend update
-> event eligibility output
-> downstream event system
-> downstream record system

Probability calculation must remain
pre-event and non-destructive
to existing event or record models.


# ============================================================
# 3. REQUIRED CHILD IMPLEMENTATIONS
# ============================================================

This document requires child implementations for:

- WAR_PROBABILITY_IMPLEMENTATION
- EPIDEMIC_PROBABILITY_IMPLEMENTATION
- FAMINE_PROBABILITY_IMPLEMENTATION
- MORTALITY_PROBABILITY_IMPLEMENTATION


# ============================================================
# 4. SHARED CALCULATION PHASES
# ============================================================

All probability families should follow
a shared high-level phase structure.

Phase 1:
collect input factors

Phase 2:
normalize factor posture

Phase 3:
apply family-specific weighting

Phase 4:
produce probability posture

Phase 5:
produce risk band

Phase 6:
produce trend direction

Phase 7:
produce event eligibility posture where supported

Phase 8:
persist or expose outputs

Not all families must have identical formulas,
but they should preserve this implementation order.


# ============================================================
# 5. INPUT AGGREGATION RULE
# ============================================================

Input factors may come from multiple layers.

Representative sources include:

- geography
- state posture
- city posture
- district posture
- infrastructure posture
- agriculture posture
- health posture
- military posture
- logistics posture
- historical event posture

Input aggregation must be explicit.

Hidden or untracked implicit inputs
should be avoided.


# ============================================================
# 6. NORMALIZATION RULE
# ============================================================

Before final family-specific calculation,
inputs should be normalized
into consistent internal postures
where possible.

Normalization may include:

- scaling to a common range
- converting categorical conditions to weighted posture
- smoothing extreme swings where policy requires
- separating acute shock from structural baseline

Normalization must not erase
major-cause visibility.


# ============================================================
# 7. BANDING RULE
# ============================================================

After final probability posture is produced,
the implementation should map
probability values into readable bands.

Banding must be deterministic
for the same inputs and coefficients.

Banding should remain stable enough
for UI and alert interpretation.


# ============================================================
# 8. TREND RULE
# ============================================================

Trend direction should compare
current posture against recent prior posture.

Trend should not be inferred
from one isolated value only
when prior calculation history exists.

Representative trend states include:

- decreasing
- stable
- rising
- sharply_rising


# ============================================================
# 9. EVENT ELIGIBILITY RULE
# ============================================================

Probability output may feed
event eligibility logic.

However:

- high probability is not automatic execution
- event execution remains downstream
- cooldown and gating logic may still apply
- mitigation systems may still suppress execution

This keeps probability and execution separate.


# ============================================================
# 10. RECALCULATION TIMING RULE
# ============================================================

Probability families should support
both periodic recalculation
and event-driven recalculation.

Representative triggers include:

- scheduled recalculation tick
- major policy change
- disaster occurrence
- supply disruption
- war or diplomatic incident
- medical overload
- harvest outcome
- death surge
- city / district status change

Event-driven recalculation should be used
when a major factor changes materially.


# ============================================================
# 11. VISIBILITY HANDOFF RULE
# ============================================================

Probability outputs may be exposed to:

- authority dashboards
- map warning layers
- state and city information
- district detail
- selected facility warning contexts
- issue and alert systems

Visibility is a consumer layer only.

This implementation layer owns
probability production,
not final UI composition.


# ============================================================
# 12. EXISTING MODEL COMPATIBILITY RULE
# ============================================================

This implementation family must not replace
existing war and death assets.

Representative compatibility:

- war probability feeds war decision eligibility
  before active war-state models

- mortality probability feeds death-risk posture
  before death-record creation

Existing post-event truth remains canonical.


# ============================================================
# 13. FAILURE HANDLING RULE
# ============================================================

Probability calculation failures must be explicit.

Representative failure states include:

- missing input subset
- partial calculation
- stale calculation
- blocked calculation
- hard failure

If partial calculation is used,
the resulting posture must be marked accordingly.


# ============================================================
# 14. FINAL RULE
# ============================================================

Risk and mortality implementation must remain:

- pre-event
- deterministic where intended
- factor-aware
- trend-aware
- band-readable
- event-compatible
- non-destructive to existing war and death systems
