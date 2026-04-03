# ============================================================
# CITY MAP UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: city-map-ui-interface
component: city-map-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCREEN MAP
# ============================================================

Canonical screens:

- city_map_screen
- city_list_screen
- city_information_screen
- district_detail_information_screen


# ============================================================
# 2. CITY MAP SCREEN
# ============================================================

screen_id: city_map_screen
route_key: map/city

visible_sections:
- city_map_canvas_section
- city_overlay_section where applicable
- back_action_section
- map_top_right_menu
- map_bottom_right_common_menu

actions:
- tap_facility
- tap_district
- tap_empty_area
- open_city_list
- back_to_continent_map

states:
- loading
- ready
- error


# ============================================================
# 3. CITY LIST SCREEN
# ============================================================

screen_id: city_list_screen
route_key: map/city-list

visible_sections:
- city_list_section
- city_filter_section

actions:
- open_city_information
- back_to_city_map


# ============================================================
# 4. CITY INFORMATION SCREEN
# ============================================================

screen_id: city_information_screen
route_key: map/city-information

visible_sections:
- city_summary_section
- city_meta_section
- city_action_section

actions:
- back_to_city_map


# ============================================================
# 5. DISTRICT DETAIL INFORMATION SCREEN
# ============================================================

screen_id: district_detail_information_screen
route_key: map/district-detail

visible_sections:
- district_summary_section
- district_facility_list_section
- district_zone_or_policy_section
- district_statistics_section

actions:
- open_facility_jump
- back_to_city_map


# ============================================================
# 6. ROUTE RULE
# ============================================================

city_map_screen
-> facility tap
-> facility_overview_screen

city_map_screen
-> district tap
-> district_detail_information_screen

city_map_screen
-> empty area tap
-> city_builder_start_screen
