# ============================================================
# PLANETARY ENVIRONMENT AND DISASTER UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: planetary-environment-and-disaster-ui
component: planetary-environment-and-disaster-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for planetary environment and disaster progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- planetary_environment_dashboard_screen
- season_and_weather_screen
- climate_and_environment_stress_screen
- disaster_monitor_screen
- regional_impact_screen
- planetary_environment_history_screen


# ============================================================
# 3. PLANETARY ENVIRONMENT DASHBOARD SCREEN
# ============================================================

screen_id: planetary_environment_dashboard_screen
route_key: world-progression/planetary/dashboard

visible_sections:
- season_summary_section
- weather_summary_section
- climate_stress_summary_section
- disaster_alert_summary_section
- regional_impact_summary_section

actions:
- open_season_and_weather
- open_climate_and_environment_stress
- open_disaster_monitor
- open_regional_impact
- open_planetary_environment_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Planetary environment and disaster UI must remain:

- season-aware
- weather-aware
- disaster-alert-capable
- region-aware
