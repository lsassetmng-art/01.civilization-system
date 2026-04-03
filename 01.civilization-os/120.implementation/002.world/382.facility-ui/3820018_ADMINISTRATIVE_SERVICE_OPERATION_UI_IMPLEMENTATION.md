# ============================================================
# ADMINISTRATIVE SERVICE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: administrative-service-operation-ui-implementation
component: administrative-service-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for administrative service operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- ADMINISTRATIVE_SERVICE_OPERATION_UI_ARCHITECTURE
- ADMINISTRATIVE_SERVICE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Administrative-service UI must implement:

- administrative_service_overview_screen
- administrative_service_manage_screen
- administrative_service_issue_screen
- administrative_service_history_screen
- administrative_service_permission_screen

Optional where supported:

- administrative_service_linked_screen
- administrative_service_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Administrative-service overview must prioritize:

1. facility identity
2. service-scope posture
3. counter/queue posture
4. case/process posture
5. document/notice posture
6. public-information/staffing summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Administrative-service manage must default to:

- summary_tab

Fallback order:

- service_scope_tab
- counter_and_queue_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. service_scope_tab
3. counter_and_queue_tab
4. case_and_process_tab
5. document_and_notice_tab
6. public_information_tab
7. staffing_tab
8. issue_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab


# ============================================================
# 6. FINAL RULE
# ============================================================

Administrative service UI implementation must remain:

- service-aware
- queue-aware
- case-aware
- public-information-aware
- issue-visible
