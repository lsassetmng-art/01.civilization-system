# ============================================================
# AI ROBOT ABNORMAL RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: ai-robot-abnormal-runtime-ui
component: ai-robot-abnormal-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for Ai(Robot) abnormal runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- ai_robot_runtime_dashboard_screen
- contamination_state_screen
- runaway_and_override_state_screen
- containment_state_screen
- recovery_and_revalidation_screen
- ai_robot_runtime_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: ai_robot_runtime_dashboard_screen
route_key: world-runtime/ai-robot/dashboard

visible_sections:
- contamination_summary_section
- runaway_summary_section
- containment_summary_section
- recovery_summary_section

actions:
- open_contamination_state
- open_runaway_and_override_state
- open_containment_state
- open_recovery_and_revalidation
- open_ai_robot_runtime_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Ai(Robot) abnormal runtime UI must remain:

- robot-specific
- contamination-aware
- containment-aware
- recovery-aware
