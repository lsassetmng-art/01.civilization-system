# ============================================================
# CIVILIZATION TIME AND AUTONOMOUS BEHAVIOR UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: civilization-time-and-autonomous-behavior-ui
component: civilization-time-and-autonomous-behavior-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the upper UI interface
for time flow and autonomous behavior visibility
inside Civilization.


# ============================================================
# 2. TOP-LEVEL SCREENS
# ============================================================

Canonical screens:

- time_and_behavior_dashboard_screen
- time_flow_entry_screen
- autonomous_behavior_entry_screen
- schedule_and_activity_entry_screen
- simulation_runtime_entry_screen
- life_cycle_entry_screen
- organization_autonomy_entry_screen
- public_authority_activity_entry_screen
- corporate_autonomy_entry_screen
- ai_robot_behavior_entry_screen
- behavior_modulation_entry_screen
- abnormal_and_recruitment_entry_screen
- intervention_and_recovery_entry_screen
- time_and_behavior_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: time_and_behavior_dashboard_screen
route_key: time-behavior/dashboard

visible_sections:
- calendar_and_time_summary_section
- autonomous_actor_summary_section
- schedule_summary_section
- abnormal_behavior_summary_section
- intervention_summary_section
- organization_activity_summary_section

actions:
- open_time_flow
- open_autonomous_behavior
- open_schedule_and_activity
- open_simulation_runtime
- open_life_cycle
- open_organization_autonomy
- open_public_authority_activity
- open_corporate_autonomy
- open_ai_robot_behavior
- open_behavior_modulation
- open_abnormal_and_recruitment
- open_intervention_and_recovery
- open_time_and_behavior_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Time and autonomous behavior UI must remain:

- time-aware
- actor-aware
- abnormal-state-aware
- intervention-aware
- summary-first
