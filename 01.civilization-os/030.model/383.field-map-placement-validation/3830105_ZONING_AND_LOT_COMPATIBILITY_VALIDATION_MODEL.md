# ============================================================
# ZONING AND LOT COMPATIBILITY VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: zoning-and-lot-compatibility-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LOT COMPATIBILITY CHECKS
# ============================================================

lot_compatibility_checks:
- zoning_tag_match
- forbidden_zoning_absence
- lot_scale_match
- adjacency_match
- district_profile_match
- protected_overlay_absence
- reserved_overlay_absence


# ============================================================
# 2. FINAL RULE
# ============================================================

Zoning compatibility must answer
whether this lot makes sense
for this facility type,
not only whether the user wants it.
