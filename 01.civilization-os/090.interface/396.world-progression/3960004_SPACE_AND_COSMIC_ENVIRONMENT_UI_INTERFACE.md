# ============================================================
# SPACE AND COSMIC ENVIRONMENT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: space-and-cosmic-environment-ui
component: space-and-cosmic-environment-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for space-side and cosmic environment progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- space_and_cosmic_dashboard_screen
- orbital_environment_screen
- cosmic_event_monitor_screen
- long_cycle_external_risk_screen
- space_and_cosmic_history_screen


# ============================================================
# 3. SPACE AND COSMIC DASHBOARD SCREEN
# ============================================================

screen_id: space_and_cosmic_dashboard_screen
route_key: world-progression/space/dashboard

visible_sections:
- orbital_summary_section
- cosmic_event_summary_section
- external_risk_summary_section
- long_cycle_summary_section

actions:
- open_orbital_environment
- open_cosmic_event_monitor
- open_long_cycle_external_risk
- open_space_and_cosmic_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Space and cosmic environment UI must remain:

- lower-frequency-compatible
- long-cycle-aware
- externally-oriented
- extensible
