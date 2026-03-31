# ============================================================
# STATE BUILDER UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: state-builder-ui-interface
component: state-builder-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCREEN MAP
# ============================================================

Canonical screens:

- state_builder_start_screen
- state_template_selection_screen
- state_territory_area_selection_screen
- state_capital_selection_screen
- state_identity_setup_screen
- state_government_policy_setup_screen
- state_population_resource_setup_screen
- state_validation_review_screen
- state_create_complete_screen


# ============================================================
# 2. TERRITORY AREA SELECTION SCREEN
# ============================================================

screen_id: state_territory_area_selection_screen
route_key: builder/state/territory

visible_sections:
- state_builder_map_canvas
- selected_cell_summary_panel
- scale_control_panel
- validation_warning_panel

fields:
- selected_state_cell_count
- selected_total_area
- connected_state
- invalid_terrain_flag
- neighbor_boundary_flag
- minimum_size_flag

actions:
- select_state_cell
- deselect_state_cell
- zoom_in
- zoom_out
- pan
- reset_zoom
- fit_selected_area
- continue_to_capital_selection

canonical_unit:
- 10km_x_10km_state_cell


# ============================================================
# 3. VALIDATION REVIEW SCREEN
# ============================================================

screen_id: state_validation_review_screen
route_key: builder/state/validation

visible_sections:
- state_validation_summary_section
- state_error_section
- state_confirm_action_section

actions:
- back_to_edit_step
- confirm_state_create


# ============================================================
# 4. COMPLETE SCREEN
# ============================================================

screen_id: state_create_complete_screen
route_key: builder/state/complete

actions:
- open_state_information
- open_city_map
