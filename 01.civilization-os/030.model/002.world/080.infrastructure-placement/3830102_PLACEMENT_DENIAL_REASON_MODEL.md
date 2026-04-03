# ============================================================
# PLACEMENT DENIAL REASON MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: placement-denial-reason

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HARD BLOCK REASONS
# ============================================================

hard_block_reasons:
- zoning_incompatible
- operator_not_allowed
- nation_restricted
- city_restricted
- protected_lot
- reserved_lot
- infrastructure_missing_hard
- scale_exceeds_lot
- facility_type_not_buildable
- non_placeable_view_object
- replacement_forbidden
- ownership_conflict
- review_failed


# ============================================================
# 2. SOFT WARNING REASONS
# ============================================================

soft_warning_reasons:
- adjacency_not_preferred
- infrastructure_suboptimal
- nation_style_mismatch
- district_balance_warning
- review_required_before_activation
- high_visibility_placement_warning
- replacement_disruption_warning


# ============================================================
# 3. FINAL RULE
# ============================================================

Denial reasons must be human-readable,
machine-stable,
and suitable for UI explanation.
