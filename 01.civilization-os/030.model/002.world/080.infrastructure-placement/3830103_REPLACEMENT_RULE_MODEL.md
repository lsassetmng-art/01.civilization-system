# ============================================================
# REPLACEMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: replacement-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REPLACEMENT TARGET STATES
# ============================================================

replacement_target_states:
- empty_lot
- same_family_replaceable
- cross_family_replaceable
- public_locked_nonreplaceable
- protected_nonreplaceable
- under_construction_replaceable
- view_object_nonreplaceable


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

replacement_rule_fields:
- existing_facility_type
- incoming_facility_type
- replacement_allowed
- replacement_review_required
- downtime_effect
- refund_or_salvage_supported
- tenant_eviction_supported
- infrastructure_reuse_supported


# ============================================================
# 3. FINAL RULE
# ============================================================

Replacement must define
whether the old object can be displaced,
what is lost,
and what carries forward.
