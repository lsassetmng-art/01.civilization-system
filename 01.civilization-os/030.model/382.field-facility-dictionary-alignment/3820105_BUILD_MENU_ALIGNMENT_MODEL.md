# ============================================================
# BUILD MENU ALIGNMENT MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-dictionary-alignment
component: build-menu-alignment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BUILD MENU RULES
# ============================================================

build_menu_alignment_rules:
- only buildable facilities may appear in build menu
- non_placeable_view_objects must not appear in build menu
- build menu grouping may differ from facility master grouping
- build menu grouping must not rename facility_type
- build menu disabled states must explain zoning, operator, or infrastructure restrictions


# ============================================================
# 2. FINAL RULE
# ============================================================

Build menu is a presentation layer
over canonical facility identities.
