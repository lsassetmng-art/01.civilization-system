# ============================================================
# CITY BUILDER UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: city-builder-ui-interface
component: city-builder-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCREEN MAP
# ============================================================

Canonical screens:

- city_builder_start_screen
- city_template_selection_screen
- city_boundary_area_selection_screen
- city_core_selection_screen
- city_identity_setup_screen
- city_district_zone_planning_screen
- city_infrastructure_setup_screen
- city_initial_facility_setup_screen
- city_validation_review_screen
- city_create_complete_screen


# ============================================================
# 2. BOUNDARY AREA SELECTION SCREEN
# ============================================================

screen_id: city_boundary_area_selection_screen
route_key: builder/city/boundary

visible_sections:
- city_builder_map_canvas
- selected_city_cell_summary_panel
- scale_control_panel
- validation_warning_panel

fields:
- selected_city_cell_count
- selected_total_area
- boundary_state
- minimum_size_flag

actions:
- select_city_cell
- deselect_city_cell
- zoom_in
- zoom_out
- pan
- reset_zoom
- fit_selected_area
- continue_to_core_selection

canonical_unit:
- 1km_x_1km_city_cell


# ============================================================
# 3. INITIAL FACILITY SETUP SCREEN
# ============================================================

screen_id: city_initial_facility_setup_screen
route_key: builder/city/initial-facility

visible_sections:
- city_cell_capacity_panel
- facility_placement_map_canvas
- placement_scale_control_panel
- placement_validation_panel

fields:
- selected_city_cell
- city_cell_capacity_total
- city_cell_capacity_used
- city_cell_capacity_remaining
- selected_facility_size

actions:
- place_facility
- remove_facility
- zoom_in
- zoom_out
- pan
- reset_zoom
- fit_selected_area
- continue_to_validation

recommended_capacity_model:
- one_city_cell_equals_10_placement_capacity_units


# ============================================================
# 4. VALIDATION REVIEW SCREEN
# ============================================================

screen_id: city_validation_review_screen
route_key: builder/city/validation

visible_sections:
- city_validation_summary_section
- city_error_section
- city_confirm_action_section

actions:
- back_to_edit_step
- confirm_city_create


# ============================================================
# 5. COMPLETE SCREEN
# ============================================================

screen_id: city_create_complete_screen
route_key: builder/city/complete

actions:
- open_city_information
- back_to_city_map
