# ============================================================
# ACTOR SCHEDULER RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: actor-scheduler-runtime-ui
component: actor-scheduler-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for actor scheduler runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- actor_scheduler_dashboard_screen
- active_actor_update_screen
- background_actor_update_screen
- cadence_and_priority_screen
- scheduler_runtime_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: actor_scheduler_dashboard_screen
route_key: world-runtime/scheduler/dashboard

visible_sections:
- active_actor_summary_section
- background_actor_summary_section
- cadence_summary_section
- priority_summary_section

actions:
- open_active_actor_update
- open_background_actor_update
- open_cadence_and_priority
- open_scheduler_runtime_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Actor scheduler UI must remain:

- cadence-aware
- priority-aware
- active-vs-background-aware
