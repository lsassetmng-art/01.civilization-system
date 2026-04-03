# ============================================================
# WORLD RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: world-runtime-ui
component: world-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the upper UI interface
for world runtime visibility
inside Civilization.


# ============================================================
# 2. TOP-LEVEL SCREENS
# ============================================================

Canonical screens:

- world_runtime_dashboard_screen
- tick_execution_entry_screen
- actor_scheduler_entry_screen
- pathfinding_movement_entry_screen
- facility_usage_queue_entry_screen
- incident_disease_legal_entry_screen
- ai_robot_abnormal_entry_screen
- intervention_runtime_entry_screen
- map_reflection_entry_screen
- world_runtime_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: world_runtime_dashboard_screen
route_key: world-runtime/dashboard

visible_sections:
- tick_execution_summary_section
- scheduler_summary_section
- movement_summary_section
- facility_usage_summary_section
- state_machine_summary_section
- intervention_summary_section
- map_reflection_summary_section

actions:
- open_tick_execution
- open_actor_scheduler
- open_pathfinding_movement
- open_facility_usage_queue
- open_incident_disease_legal
- open_ai_robot_abnormal
- open_intervention_runtime
- open_map_reflection
- open_world_runtime_history


# ============================================================
# 4. FINAL RULE
# ============================================================

World runtime UI must remain:

- runtime-aware
- scheduler-aware
- state-machine-aware
- summary-first
