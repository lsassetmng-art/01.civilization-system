# ============================================================
# AI ROBOT AUTONOMOUS AND ABNORMAL BEHAVIOR UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: ai-robot-autonomous-and-abnormal-behavior-ui
component: ai-robot-autonomous-and-abnormal-behavior-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for Ai(Robot) autonomous and abnormal behavior
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- ai_robot_behavior_dashboard_screen
- robot_normal_operation_screen
- contamination_and_override_screen
- abnormal_behavior_monitor_screen
- containment_and_recovery_screen
- ai_robot_behavior_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: ai_robot_behavior_dashboard_screen
route_key: time-behavior/ai-robot/dashboard

visible_sections:
- normal_operation_summary_section
- contamination_summary_section
- abnormal_behavior_summary_section
- containment_summary_section
- recovery_summary_section

actions:
- open_robot_normal_operation
- open_contamination_and_override
- open_abnormal_behavior_monitor
- open_containment_and_recovery
- open_ai_robot_behavior_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Ai(Robot) behavior UI must remain:

- robot-distinct
- contamination-aware
- abnormal-state-aware
- containment-capable
- recovery-aware
