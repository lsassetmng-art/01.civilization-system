# ============================================================
# CITY BUILDER SCOPE MODEL
# ============================================================

status: canonical
layer: model
scope: city-builder-rename
component: city-builder-scope

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CITY BUILDER RESPONSIBILITIES
# ============================================================

city_builder_responsibilities:
- housing_area_placement
- residential_block_placement
- urban_center_placement
- prefectural_capital_placement
- regional_capital_placement
- district_structure_placement
- living_area_layout
- city_core_layout


# ============================================================
# 2. INCLUDED OBJECT FAMILIES
# ============================================================

included_object_families:
- housing
- urban_blocks
- city_centers
- civic_core_zones
- mixed_living_districts
- settlement_expansion_zones


# ============================================================
# 3. FINAL RULE
# ============================================================

City Builder handles
city-scale spatial composition,
not housing-only placement.
