# ============================================================
# COMMITTEE AND INTERNAL OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: legislature-builder
component: committee-and-internal-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMITTEE TYPES
# ============================================================

committee_types:
- budget_committee
- law_committee
- security_committee
- education_committee
- industry_committee
- transport_committee
- religion_committee
- ethics_committee
- constitutional_committee
- emergency_review_committee
- audit_committee
- appointment_review_committee


# ============================================================
# 2. INTERNAL OPERATION FIELDS
# ============================================================

internal_operation_fields:
- committee_system_strength
- committee_gatekeeping_strength
- floor_debate_visibility
- party_discipline_strength
- faction_discipline_strength
- crossbench_independence_strength
- elite_capture_strength
- procedural_delay_strength
- budget_bargaining_intensity
- scandal_review_visibility


# ============================================================
# 3. FINAL RULE
# ============================================================

Legislatures must define
not only what powers exist,
but how internally usable or blocked
those powers are.
