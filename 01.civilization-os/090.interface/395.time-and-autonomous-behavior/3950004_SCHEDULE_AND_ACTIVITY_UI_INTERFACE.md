# ============================================================
# SCHEDULE AND ACTIVITY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: schedule-and-activity-ui
component: schedule-and-activity-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for schedule and activity visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- schedule_activity_dashboard_screen
- daily_cycle_screen
- work_and_school_schedule_screen
- household_and_life_activity_screen
- political_and_social_activity_screen
- health_and_disruption_activity_screen
- schedule_activity_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: schedule_activity_dashboard_screen
route_key: time-behavior/schedule/dashboard

visible_sections:
- daily_cycle_summary_section
- work_school_summary_section
- household_activity_summary_section
- political_social_summary_section
- disruption_activity_summary_section

actions:
- open_daily_cycle
- open_work_and_school_schedule
- open_household_and_life_activity
- open_political_and_social_activity
- open_health_and_disruption_activity
- open_schedule_activity_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Schedule and activity UI must remain:

- daily-cycle-aware
- work-aware
- school-aware
- social-activity-aware
- disruption-aware
