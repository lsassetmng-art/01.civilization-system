# ============================================================
# FIELD PLACEMENT VALIDATION CODE MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: field-placement-validation-code

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HARD BLOCK CODES
# ============================================================

hard_block_codes:
- FMV-001 zoning_incompatible
- FMV-002 operator_not_allowed
- FMV-003 nation_restricted
- FMV-004 city_restricted
- FMV-005 protected_lot
- FMV-006 reserved_lot
- FMV-007 infrastructure_missing_hard
- FMV-008 scale_exceeds_lot
- FMV-009 facility_type_not_buildable
- FMV-010 non_placeable_view_object
- FMV-011 replacement_forbidden
- FMV-012 ownership_conflict
- FMV-013 review_failed


# ============================================================
# 2. WARNING CODES
# ============================================================

warning_codes:
- FMW-001 adjacency_not_preferred
- FMW-002 infrastructure_suboptimal
- FMW-003 nation_style_mismatch
- FMW-004 district_balance_warning
- FMW-005 review_required_before_activation
- FMW-006 high_visibility_placement_warning
- FMW-007 replacement_disruption_warning


# ============================================================
# 3. FINAL RULE
# ============================================================

Validation codes must stay stable enough
for UI, logs, and future implementation reuse.
