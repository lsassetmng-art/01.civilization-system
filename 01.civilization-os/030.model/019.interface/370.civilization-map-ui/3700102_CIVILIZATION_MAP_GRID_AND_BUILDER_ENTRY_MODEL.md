# ============================================================
# CIVILIZATION MAP GRID AND BUILDER ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: civilization-map-grid-and-builder-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CONTINENT MAP GRID
# ============================================================

continent_grid_type:
- nation_grid

continent_grid_states:
- empty_nation_slot
- locked_existing_nation
- editable_custom_nation
- restricted_region
- protected_border_region

continent_grid_actions:
- empty_nation_slot_tap -> create_nation
- editable_custom_nation_tap -> open_custom_nation
- locked_existing_nation_tap -> open_nation_overview
- restricted_region_tap -> no_create


# ============================================================
# 2. FIELD MAP GRID
# ============================================================

field_grid_type:
- placement_grid

field_grid_states:
- empty_lot
- company_lot
- housing_lot
- public_facility_lot
- mixed_use_building_lot
- restricted_lot
- infrastructure_lot
- under_construction_lot

field_grid_actions:
- empty_lot_tap -> open_build_menu
- company_lot_tap -> open_company_use_or_overview
- housing_lot_tap -> open_housing_use_or_overview
- public_facility_lot_tap -> open_facility_use
- mixed_use_building_lot_tap -> open_tenant_list
- restricted_lot_tap -> no_build
- infrastructure_lot_tap -> open_infrastructure_overview
- under_construction_lot_tap -> open_construction_status


# ============================================================
# 3. BUILDER ENTRY RULES
# ============================================================

builder_entry_rules:
- nation_builder is launched from empty_nation_slot or editable_custom_nation
- company_builder is launched from empty_lot build flow or manageable_company_lot
- housing_builder is launched from empty_lot build flow or manageable_housing_lot
- facility_builder is launched from empty_lot build flow or manageable_facility_lot


# ============================================================
# 4. BUILDER ENTRY MODES
# ============================================================

builder_entry_modes:
- create_mode
- edit_mode
- overview_mode

entry_mode_rules:
- empty slot opens create_mode
- owned editable object opens edit_mode through manage path
- non-editable object opens overview_mode only


# ============================================================
# 5. FINAL RULE
# ============================================================

Empty grid is for creation.
Occupied grid is for use or overview.
Editing must remain permission-aware.
