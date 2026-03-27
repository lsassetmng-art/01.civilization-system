# ============================================================
# BUILDING EXTERIOR DESIGN PRODUCT MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: building-exterior-design-product

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the product model for building_exterior_design.


# ============================================================
# 2. PRODUCT ROLE
# ============================================================

building_exterior_design is a design package product
that specifies exterior concept, style, form language,
and handoff-grade construction-facing design intent.


# ============================================================
# 3. PRODUCT FIELDS
# ============================================================

Recommended fields:
- product_id
- design_style
- intended_building_type
- facade_language
- material_direction
- revision_count
- approval_state
- construction_handoff_compatible


# ============================================================
# 4. FINAL RULE
# ============================================================

This product is a design output.
It is not a building and not a construction execution record.
