# ============================================================
# PUBLIC AUTHORITY ACTIVITY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: public-authority-activity-ui
component: public-authority-activity-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for public authority autonomous activity
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- public_authority_dashboard_screen
- administration_activity_screen
- judiciary_activity_screen
- police_activity_screen
- fire_and_rescue_activity_screen
- authority_activity_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: public_authority_dashboard_screen
route_key: time-behavior/public-authority/dashboard

visible_sections:
- administration_summary_section
- judiciary_summary_section
- police_summary_section
- fire_rescue_summary_section
- emergency_priority_summary_section

actions:
- open_administration_activity
- open_judiciary_activity
- open_police_activity
- open_fire_and_rescue_activity
- open_authority_activity_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Public authority activity UI must remain:

- authority-aware
- queue-aware
- emergency-priority-aware
- legally connected
