# ============================================================
# MAP REFLECTION AND WORLD VISUAL RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: map-reflection-and-world-visual-runtime-ui
component: map-reflection-and-world-visual-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for map reflection and world visual runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- map_reflection_dashboard_screen
- facility_state_reflection_screen
- infrastructure_reflection_screen
- city_change_reflection_screen
- disaster_reflection_screen
- map_reflection_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: map_reflection_dashboard_screen
route_key: world-runtime/map-reflection/dashboard

visible_sections:
- facility_reflection_summary_section
- infrastructure_reflection_summary_section
- city_change_summary_section
- disaster_reflection_summary_section

actions:
- open_facility_state_reflection
- open_infrastructure_reflection
- open_city_change_reflection
- open_disaster_reflection
- open_map_reflection_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Map reflection UI must remain:

- state-reflective
- map-aware
- change-visible
- disaster-aware
