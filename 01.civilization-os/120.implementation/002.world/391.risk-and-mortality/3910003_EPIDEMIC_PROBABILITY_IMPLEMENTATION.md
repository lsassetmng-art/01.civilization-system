# ============================================================
# EPIDEMIC PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: epidemic-probability-implementation
component: epidemic-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for epidemic probability calculation
inside Civilization.

This implementation covers:

- outbreak posture
- spread posture
- hotspot posture

This implementation remains pre-outbreak
and pre-death-record.


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

Representative sequence:

population and sanitation posture
-> mobility and seasonality posture
-> medical mitigation posture
-> outbreak probability posture
-> spread probability posture
-> hotspot eligibility where supported
-> downstream event handoff


# ============================================================
# 3. PRIMARY SUBJECTS
# ============================================================

Primary calculation subjects include:

- state
- city
- district
- population group where supported

District and city calculations
should be especially important
for hotspot emergence.


# ============================================================
# 4. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- density
- crowding
- sanitation weakness
- hygiene weakness
- water quality weakness
- medical capacity weakness
- mobility pressure
- climate and seasonality pressure
- prior outbreak history
- containment mitigation

Implementation should preserve
outbreak and spread distinction.


# ============================================================
# 5. OUTBREAK VS SPREAD RULE
# ============================================================

The implementation should distinguish between:

- outbreak probability
- spread probability

A location may have
moderate outbreak probability
but high spread probability once active.

These postures should remain separately visible
where model supports both.


# ============================================================
# 6. HOTSPOT RULE
# ============================================================

Hotspot posture should be derived
from concentrated epidemic pressure.

Hotspot identification may consider:

- repeated elevated risk
- multiple reinforcing factors
- high spread posture
- weak mitigation posture

Hotspot must remain a derived posture,
not the base probability itself.


# ============================================================
# 7. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- sanitation collapse
- water disruption
- medical overload
- seasonal shift
- mobility surge
- containment change
- district density change
- outbreak event
- scheduled health tick


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

Epidemic probability may feed:

- outbreak event eligibility
- spread escalation eligibility
- health alert systems
- hospital burden alerts

Probability alone must not equal outbreak execution.

Downstream gates still apply.


# ============================================================
# 9. MORTALITY RELATION
# ============================================================

Epidemic probability may influence
epidemic mortality posture downstream.

However,
epidemic probability is not itself
the mortality model.

Mortality remains a separate family.


# ============================================================
# 10. FINAL RULE
# ============================================================

Epidemic probability implementation must remain:

- outbreak-aware
- spread-aware
- locality-aware
- sanitation-aware
- medical-mitigation-aware
- compatible with downstream health and mortality systems
