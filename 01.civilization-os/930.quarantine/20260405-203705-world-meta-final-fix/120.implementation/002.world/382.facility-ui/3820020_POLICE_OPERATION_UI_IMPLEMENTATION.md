# ============================================================
# POLICE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: police-operation-ui-implementation
component: police-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for police operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- POLICE_OPERATION_UI_ARCHITECTURE
- POLICE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Police UI must implement:

- police_overview_screen
- police_manage_screen
- police_issue_screen
- police_history_screen
- police_permission_screen

Optional where supported:

- police_linked_screen
- police_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Police overview must prioritize:

1. facility identity
2. incident/intake posture
3. patrol/dispatch posture
4. case progression posture
5. custody/capacity posture
6. readiness/stability summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Police manage must default to:

- summary_tab

Fallback order:

- incident_and_intake_tab
- patrol_and_dispatch_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. incident_and_intake_tab
3. patrol_and_dispatch_tab
4. case_and_process_tab
5. custody_and_capacity_tab
6. readiness_and_escalation_tab
7. stability_tab
8. issue_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab


# ============================================================
# 6. FINAL RULE
# ============================================================

Police UI implementation must remain:

- incident-aware
- dispatch-aware
- custody-aware
- escalation-aware
- issue-visible
