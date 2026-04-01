# ============================================================
# TIME FLOW UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: time-flow-ui
component: time-flow-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for time flow visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- time_flow_dashboard_screen
- calendar_and_clock_screen
- time_structure_screen
- simulation_speed_screen
- long_cycle_time_screen
- time_flow_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: time_flow_dashboard_screen
route_key: time-behavior/time-flow/dashboard

visible_sections:
- calendar_summary_section
- clock_summary_section
- Earth_equivalent_time_summary_section
- simulation_speed_summary_section
- long_cycle_summary_section

actions:
- open_calendar_and_clock
- open_time_structure
- open_simulation_speed
- open_long_cycle_time
- open_time_flow_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Time flow UI must remain:

- calendar-visible
- Earth-equivalent-time-visible
- simulation-speed-separated
- long-cycle-aware
