# ============================================================
# FIELD MAP PLACEMENT VALIDATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-map-placement-validation
component: field-map-placement-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical validation architecture
for field-map facility placement,
placement denial reasoning,
and replacement behavior
inside Civilization.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Placement validation must separate:

- build eligibility
- zoning eligibility
- operator eligibility
- infrastructure readiness
- protected lot restrictions
- replacement eligibility
- review-required state

A failed placement attempt
must always explain why it failed.


# ============================================================
# 3. VALIDATION OUTPUT PRINCIPLE
# ============================================================

Validation must produce one of:

- place_allowed
- place_allowed_with_review
- place_blocked
- replace_allowed
- replace_blocked

Each blocked or review state
must carry explicit reason codes.


# ============================================================
# 4. FINAL RULE
# ============================================================

Field placement validation must be
predictable, explainable,
and safe against silent inconsistency.
