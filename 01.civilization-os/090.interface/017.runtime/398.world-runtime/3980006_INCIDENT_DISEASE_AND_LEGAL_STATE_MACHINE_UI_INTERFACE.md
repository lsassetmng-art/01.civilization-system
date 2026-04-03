# ============================================================
# INCIDENT DISEASE AND LEGAL STATE MACHINE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: incident-disease-and-legal-state-machine-ui
component: incident-disease-and-legal-state-machine-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for incident, disease, and legal state machine runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- state_machine_dashboard_screen
- incident_progress_screen
- disease_progress_screen
- detention_bail_release_screen
- state_machine_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: state_machine_dashboard_screen
route_key: world-runtime/state-machine/dashboard

visible_sections:
- incident_summary_section
- disease_summary_section
- detention_summary_section
- bail_release_summary_section

actions:
- open_incident_progress
- open_disease_progress
- open_detention_bail_release
- open_state_machine_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Incident, disease, and legal state machine UI must remain:

- state-explicit
- intervention-aware
- legal-process-aware
- history-aware
