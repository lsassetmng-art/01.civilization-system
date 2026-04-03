# ============================================================
# CIVILIZATION MAP TRANSITION AND BUILDER ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: civilization-map-transition-and-builder-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MAP TRANSITIONS
# ============================================================

map_transitions:
- global_map_continent_tap -> continent_map
- continent_map_nation_tap -> nation_overview
- continent_map_empty_nation_slot_tap -> nation_builder_create
- continent_map_editable_custom_nation_tap -> nation_builder_edit_or_nation_overview
- nation_overview_enter_field -> field_map
- field_map_empty_lot_tap -> build_menu
- field_map_company_lot_tap -> company_overview_or_use
- field_map_housing_lot_tap -> housing_overview_or_use
- field_map_public_facility_tap -> facility_use
- field_map_multi_tenant_building_tap -> tenant_list


# ============================================================
# 2. BUILDER ENTRY PRIORITY
# ============================================================

builder_entry_priority_rules:
- normal user flow prioritizes use
- creator or manager flow may enter edit through explicit management action
- non-owned locked nations do not open nation builder edit
- non-owned locked facilities do not open builder edit
- empty slots and buildable lots open creation flow


# ============================================================
# 3. MANAGEMENT ENTRY METHODS
# ============================================================

management_entry_methods:
- management_button
- long_press
- management_mode_toggle
- context_menu_entry


# ============================================================
# 4. FINAL RULE
# ============================================================

Map transitions must remain
predictable enough that users know
whether they are entering
overview, use, or build flow.
