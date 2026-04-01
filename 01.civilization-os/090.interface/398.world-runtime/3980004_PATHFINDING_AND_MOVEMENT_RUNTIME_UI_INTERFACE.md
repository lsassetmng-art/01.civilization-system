# ============================================================
# PATHFINDING AND MOVEMENT RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: pathfinding-and-movement-runtime-ui
component: pathfinding-and-movement-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for pathfinding and movement runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- movement_runtime_dashboard_screen
- route_resolution_screen
- disruption_and_blockage_screen
- emergency_route_deviation_screen
- movement_runtime_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: movement_runtime_dashboard_screen
route_key: world-runtime/movement/dashboard

visible_sections:
- route_summary_section
- blockage_summary_section
- emergency_deviation_summary_section
- movement_failure_summary_section

actions:
- open_route_resolution
- open_disruption_and_blockage
- open_emergency_route_deviation
- open_movement_runtime_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Movement runtime UI must remain:

- route-aware
- blockage-aware
- emergency-aware
