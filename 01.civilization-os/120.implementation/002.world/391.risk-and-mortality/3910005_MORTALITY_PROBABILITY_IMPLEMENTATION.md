# ============================================================
# MORTALITY PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: mortality-probability-implementation
component: mortality-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for mortality probability calculation
inside Civilization.

This implementation supplements,
but does not replace:

- CIVILIZATION_DEATH_RECORD_MODEL
- CIVILIZATION_DEATH_REGISTRATION_RUNTIME
- DEATH_AND_FUNERAL_EVENT_MODEL


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

Representative sequence:

cause-family exposure posture
-> mitigation posture
-> cause-specific mortality posture
-> total mortality posture
-> death-event eligibility where supported
-> downstream death record creation when death occurs

Mortality probability remains pre-death.

Death record remains post-event truth.


# ============================================================
# 3. PRIMARY SUBJECTS
# ============================================================

Primary calculation subjects include:

- population group
- district
- city
- individual where simulation requires

Individual support is allowed,
but public visibility is not required.


# ============================================================
# 4. CAUSE-BRANCH CALCULATION RULE
# ============================================================

Mortality implementation should preserve
distinct cause-sensitive branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality where applicable

These branches may later aggregate
into a total mortality posture.

Aggregation must not erase
cause-level availability.


# ============================================================
# 5. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- age or life-stage posture where applicable
- health burden
- epidemic exposure
- famine exposure
- war exposure
- disaster exposure
- sanitation weakness
- medical-support weakness
- shelter weakness
- support-access weakness
- environmental stress
- mitigation factors

Implementation should preserve
cause-family readability.


# ============================================================
# 6. TOTAL VS CAUSE RULE
# ============================================================

The implementation should distinguish between:

- cause-specific mortality posture
- total mortality posture

Total mortality posture is a combined output.

Cause-specific posture remains
structurally important for explanation
and downstream reasoning.


# ============================================================
# 7. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- epidemic surge
- famine surge
- war escalation
- disaster event
- medical-capacity change
- sanitation collapse
- support-system collapse
- major demographic shift where applicable
- scheduled mortality tick


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

Mortality probability may feed:

- death-event eligibility
- demographic warning systems
- health-support warning systems
- authority dashboards

Probability alone must not equal death execution.

Downstream gates and event logic still apply.


# ============================================================
# 9. EXISTING DEATH ASSET COMPATIBILITY
# ============================================================

This implementation must preserve
the canonical role of existing death assets.

Representative relation:

mortality_probability_posture
-> death-eligibility or trigger posture
-> death occurrence
-> CIVILIZATION_DEATH_RECORD_MODEL creation
-> death and funeral event flows

Death record remains canonical post-event truth.

This implementation is only the pre-death layer.


# ============================================================
# 10. FINAL RULE
# ============================================================

Mortality probability implementation must remain:

- pre-death
- cause-sensitive
- trend-aware
- factor-aware
- compatible with existing death-record systems
- non-destructive to existing death design assets
