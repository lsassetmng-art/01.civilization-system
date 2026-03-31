# ============================================================
# FAMINE PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: famine-probability-implementation
component: famine-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for famine probability calculation
inside Civilization.

This implementation covers:

- food insecurity posture
- famine escalation posture
- hotspot posture

This implementation remains pre-famine
and pre-famine-death-record.


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

Representative sequence:

food production posture
-> reserve and logistics posture
-> affordability and access posture
-> famine probability posture
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
for hunger hotspot emergence.


# ============================================================
# 4. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- production weakness
- reserve weakness
- logistics disruption
- import dependency
- market access weakness
- affordability stress
- climate stress
- drought or disaster aftermath
- conflict disruption
- relief mitigation

Implementation should preserve
food-system readability.


# ============================================================
# 5. FOOD INSECURITY VS FAMINE RULE
# ============================================================

The implementation should distinguish between:

- food insecurity posture
- famine escalation posture

A scope may have
persistent food insecurity
without yet crossing famine eligibility.

These postures should remain separately meaningful
where model supports both.


# ============================================================
# 6. HOTSPOT RULE
# ============================================================

Hotspot posture should be derived
from concentrated hunger-system pressure.

Hotspot identification may consider:

- repeated elevated risk
- supply disruption overlap
- affordability collapse
- weak mitigation posture
- localized burden concentration

Hotspot must remain a derived posture,
not the base probability itself.


# ============================================================
# 7. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- harvest outcome change
- reserve change
- logistics breakdown
- market disruption
- import loss
- war disruption
- disaster aftermath
- relief deployment
- scheduled food-system tick


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

Famine probability may feed:

- shortage event eligibility
- famine escalation eligibility
- food alert systems
- state and city warning systems

Probability alone must not equal famine execution.

Downstream gates still apply.


# ============================================================
# 9. MORTALITY RELATION
# ============================================================

Famine probability may influence
famine mortality posture downstream.

However,
famine probability is not itself
the mortality model.

Mortality remains a separate family.


# ============================================================
# 10. FINAL RULE
# ============================================================

Famine probability implementation must remain:

- food-system-aware
- logistics-aware
- affordability-aware
- locality-aware
- hotspot-aware
- compatible with downstream event and mortality systems
