# ============================================================
# AUTONOMOUS BEHAVIOR UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: autonomous-behavior-ui
component: autonomous-behavior-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for autonomous behavior visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- autonomous_behavior_dashboard_screen
- actor_behavior_state_screen
- movement_and_route_screen
- need_and_motivation_screen
- event_participation_screen
- emergency_deviation_screen
- autonomous_behavior_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: autonomous_behavior_dashboard_screen
route_key: time-behavior/autonomous/dashboard

visible_sections:
- actor_state_summary_section
- movement_summary_section
- need_summary_section
- event_participation_summary_section
- emergency_deviation_summary_section

actions:
- open_actor_behavior_state
- open_movement_and_route
- open_need_and_motivation
- open_event_participation
- open_emergency_deviation
- open_autonomous_behavior_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Autonomous behavior UI must remain:

- actor-aware
- route-aware
- need-aware
- event-aware
- deviation-aware
