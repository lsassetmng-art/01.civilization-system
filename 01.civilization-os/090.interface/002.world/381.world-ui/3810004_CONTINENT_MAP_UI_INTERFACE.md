# ============================================================
# CONTINENT MAP UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: continent-map-ui-interface
component: continent-map-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCREEN MAP
# ============================================================

Canonical screens:

- continent_map_screen
- state_list_screen
- state_information_screen


# ============================================================
# 2. CONTINENT MAP SCREEN
# ============================================================

screen_id: continent_map_screen
route_key: map/continent

visible_sections:
- continent_map_canvas_section
- state_summary_overlay where applicable
- back_action_section
- map_top_right_menu
- map_bottom_right_common_menu

actions:
- tap_state
- tap_empty_area
- open_state_list
- back_to_global_map

states:
- loading
- ready
- error


# ============================================================
# 3. STATE LIST SCREEN
# ============================================================

screen_id: state_list_screen
route_key: map/state-list

visible_sections:
- state_list_section
- state_filter_section

actions:
- open_state_information
- back_to_continent_map


# ============================================================
# 4. STATE INFORMATION SCREEN
# ============================================================

screen_id: state_information_screen
route_key: map/state-information

visible_sections:
- state_summary_section
- state_meta_section
- state_action_section

actions:
- open_city_map
- back_to_state_list
- back_to_continent_map


# ============================================================
# 5. BUILDER ENTRY RULE
# ============================================================

continent_map_screen
-> empty area tap
-> state_builder_start_screen
