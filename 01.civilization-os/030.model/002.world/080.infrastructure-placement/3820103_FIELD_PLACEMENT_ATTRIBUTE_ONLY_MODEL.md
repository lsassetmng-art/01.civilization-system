# ============================================================
# FIELD PLACEMENT ATTRIBUTE ONLY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-dictionary-alignment
component: field-placement-attribute-only

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PLACEMENT-ONLY ATTRIBUTES
# ============================================================

placement_only_attributes:
- buildable_flag
- placement_scale
- minimum_lot_requirement
- required_zoning_tags
- forbidden_zoning_tags
- adjacency_preferences
- adjacency_restrictions
- infrastructure_requirements
- review_required_before_build
- replace_existing_supported


# ============================================================
# 2. FINAL RULE
# ============================================================

These attributes may be added locally
without changing facility identity.
