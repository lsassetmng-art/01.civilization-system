# ============================================================
# USER AND AI HUMAN LIFE CYCLE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: user-and-ai-human-life-cycle-ui
component: user-and-ai-human-life-cycle-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for user and Ai(Human) life-cycle visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- life_cycle_dashboard_screen
- daily_life_status_screen
- work_study_and_role_screen
- health_and_recovery_screen
- social_and_participation_screen
- long_cycle_progression_screen
- life_cycle_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: life_cycle_dashboard_screen
route_key: time-behavior/life-cycle/dashboard

visible_sections:
- daily_life_summary_section
- role_summary_section
- health_summary_section
- participation_summary_section
- long_cycle_summary_section

actions:
- open_daily_life_status
- open_work_study_and_role
- open_health_and_recovery
- open_social_and_participation
- open_long_cycle_progression
- open_life_cycle_history


# ============================================================
# 4. FINAL RULE
# ============================================================

User and Ai(Human) life-cycle UI must remain:

- life-aware
- role-aware
- health-aware
- long-cycle-aware
