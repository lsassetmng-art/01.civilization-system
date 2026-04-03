# ============================================================
# FIELD MAP BUILD MENU MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-facility-dictionary-and-placement
component: field-map-build-menu

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BUILD MENU GROUPS
# ============================================================

build_menu_groups:
- marketplace_and_commerce
- finance_and_market
- public_and_civic
- education_and_medical
- religion_and_memorial
- transport_and_infrastructure
- company_and_housing
- mixed_use_and_tenant


# ============================================================
# 2. BUILD MENU RULES
# ============================================================

build_menu_rules:
- only buildable facilities appear in build menu
- non_placeable_view_objects do not appear in build menu
- zoning-incompatible facilities are hidden or disabled with explanation
- operator-restricted facilities are hidden or disabled with explanation
- review-required facilities show review badge before creation


# ============================================================
# 3. FINAL RULE
# ============================================================

Build menu must expose
what can be placed now,
what is blocked,
and why.
