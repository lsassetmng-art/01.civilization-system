# ============================================================
# CITY AUTONOMOUS PROGRESS UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: city-autonomous-progress-ui
component: city-autonomous-progress-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for city autonomous progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- city_progression_dashboard_screen
- city_growth_and_decline_screen
- district_change_screen
- congestion_and_infrastructure_burden_screen
- redevelopment_pressure_screen
- city_progression_history_screen


# ============================================================
# 3. CITY PROGRESSION DASHBOARD SCREEN
# ============================================================

screen_id: city_progression_dashboard_screen
route_key: world-progression/city/dashboard

visible_sections:
- city_scope_summary_section
- growth_decline_summary_section
- district_change_summary_section
- congestion_summary_section
- service_stress_summary_section

actions:
- open_city_growth_and_decline
- open_district_change
- open_congestion_and_infrastructure_burden
- open_redevelopment_pressure
- open_city_progression_history


# ============================================================
# 4. FINAL RULE
# ============================================================

City progression UI must remain:

- city-scale
- district-aware
- burden-visible
- growth-and-decline-visible
