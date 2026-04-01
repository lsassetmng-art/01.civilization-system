# ============================================================
# WORLD TICK AND SIMULATION RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: world-tick-and-simulation-runtime-ui
component: world-tick-and-simulation-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for world tick and simulation runtime visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- simulation_runtime_dashboard_screen
- tick_cadence_screen
- actor_update_granularity_screen
- background_vs_active_update_screen
- runtime_load_and_queue_screen
- simulation_runtime_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: simulation_runtime_dashboard_screen
route_key: time-behavior/runtime/dashboard

visible_sections:
- tick_summary_section
- cadence_summary_section
- active_update_summary_section
- background_update_summary_section
- runtime_load_summary_section

actions:
- open_tick_cadence
- open_actor_update_granularity
- open_background_vs_active_update
- open_runtime_load_and_queue
- open_simulation_runtime_history


# ============================================================
# 4. FINAL RULE
# ============================================================

World tick and simulation runtime UI must remain:

- tick-aware
- cadence-aware
- load-visible
- granularity-aware
