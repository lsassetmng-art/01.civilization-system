# ============================================================
# POLICE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: police-operation-ui
component: police-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for police operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- police_overview_screen
- police_manage_screen
- police_issue_screen
- police_history_screen
- police_permission_screen

Optional where supported:

- police_linked_screen
- police_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: police_manage_screen
route_key: facility/police/manage

visible_tabs:
- summary_tab
- incident_and_intake_tab
- patrol_and_dispatch_tab
- case_and_process_tab
- custody_and_capacity_tab
- readiness_and_escalation_tab
- stability_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 4. FINAL RULE
# ============================================================

Police UI must remain:

- incident-aware
- dispatch-aware
- custody-aware
- escalation-aware
