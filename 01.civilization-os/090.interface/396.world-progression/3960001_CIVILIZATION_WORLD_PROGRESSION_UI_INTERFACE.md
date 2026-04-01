# ============================================================
# CIVILIZATION WORLD PROGRESSION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: civilization-world-progression-ui
component: civilization-world-progression-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the upper UI interface
for world-progression visibility
inside Civilization.

This document covers the top-level entry
for world progression domains such as:

- city progression
- planetary environment and disaster
- space and cosmic environment
- state and society progression


# ============================================================
# 2. TOP-LEVEL SCREENS
# ============================================================

Canonical screens:

- world_progression_dashboard_screen
- city_progression_entry_screen
- planetary_environment_entry_screen
- space_and_cosmic_entry_screen
- state_and_society_entry_screen
- world_progression_history_screen


# ============================================================
# 3. WORLD PROGRESSION DASHBOARD SCREEN
# ============================================================

screen_id: world_progression_dashboard_screen
route_key: world-progression/dashboard

visible_sections:
- time_summary_section
- city_progression_summary_section
- environment_summary_section
- disaster_summary_section
- state_and_society_summary_section
- space_and_cosmic_summary_section
- progression_alert_section

actions:
- open_city_progression
- open_planetary_environment
- open_space_and_cosmic
- open_state_and_society
- open_world_progression_history


# ============================================================
# 4. FINAL RULE
# ============================================================

World progression UI must remain:

- world-level
- domain-separated
- alert-visible
- time-aware
- summary-first
