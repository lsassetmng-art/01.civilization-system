# ============================================================
# GLOBAL MAP UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: global-map-ui-interface
component: global-map-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCREEN MAP
# ============================================================

Canonical screens:

- global_map_screen
- continent_information_screen


# ============================================================
# 2. GLOBAL MAP SCREEN
# ============================================================

screen_id: global_map_screen
route_key: map/global

visible_sections:
- global_map_canvas_section
- continent_information_panel
- map_top_right_menu
- map_bottom_right_common_menu

actions:
- tap_continent
- open_continent_information
- open_common_menu_routes

states:
- loading
- ready
- error


# ============================================================
# 3. CONTINENT INFORMATION PANEL
# ============================================================

section_id: continent_information_panel
section_type: detail_panel

fields:
- continent_name
- continent_characteristics
- continent_population
- state_count
- other_continent_metadata where applicable

actions:
- open_continent_map


# ============================================================
# 4. ROUTE RULE
# ============================================================

global_map_screen
-> continent tap
-> continent_map_screen
