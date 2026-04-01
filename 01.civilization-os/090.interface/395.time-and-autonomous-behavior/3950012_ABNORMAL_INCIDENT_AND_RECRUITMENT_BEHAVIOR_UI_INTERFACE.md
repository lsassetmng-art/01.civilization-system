# ============================================================
# ABNORMAL INCIDENT AND RECRUITMENT BEHAVIOR UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: abnormal-incident-and-recruitment-behavior-ui
component: abnormal-incident-and-recruitment-behavior-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for abnormal behavior, incident involvement,
and recruitment behavior visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- abnormal_incident_recruitment_dashboard_screen
- abnormal_behavior_screen
- incident_involvement_screen
- victim_and_witness_screen
- recruitment_and_scouting_screen
- abnormal_incident_recruitment_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: abnormal_incident_recruitment_dashboard_screen
route_key: time-behavior/abnormal/dashboard

visible_sections:
- abnormal_behavior_summary_section
- incident_summary_section
- victim_witness_summary_section
- recruitment_summary_section
- scouting_summary_section

actions:
- open_abnormal_behavior
- open_incident_involvement
- open_victim_and_witness
- open_recruitment_and_scouting
- open_abnormal_incident_recruitment_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Abnormal, incident, and recruitment behavior UI must remain:

- non-routine-aware
- incident-aware
- recruitment-aware
- history-aware
