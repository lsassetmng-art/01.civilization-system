# ============================================================
# BUILDER RESPONSIBILITY BOUNDARY MODEL
# ============================================================

status: canonical
layer: model
scope: city-builder-rename
component: builder-responsibility-boundary

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NATION BUILDER
# ============================================================

nation_builder_scope:
- nation_type
- regime
- power_structure
- national_policy
- military_service_policy
- infrastructure_governance_policy
- city_hierarchy_rules
- capital_rules


# ============================================================
# 2. COMPANY BUILDER
# ============================================================

company_builder_scope:
- company_creation
- company_type
- company_facilities
- stores
- headquarters
- branches
- company_service_surfaces


# ============================================================
# 3. CITY BUILDER
# ============================================================

city_builder_scope:
- city_center_placement
- housing_and_block_layout
- urban_core_layout
- residential_expansion
- district_structure
- local_living_area_design


# ============================================================
# 4. FINAL RULE
# ============================================================

Nation Builder defines institutional structure.
Company Builder defines enterprise structure.
City Builder defines urban spatial structure.
