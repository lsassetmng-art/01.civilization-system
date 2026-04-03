# ============================================================
# MILITARY BASE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: military-base-operation-ui-implementation
component: military-base-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for military base operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- MILITARY_BASE_OPERATION_UI_ARCHITECTURE
- MILITARY_BASE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Military-base UI must implement:

- military_base_overview_screen
- military_base_manage_screen
- military_base_issue_screen
- military_base_history_screen
- military_base_permission_screen

Optional where supported:

- military_base_linked_screen
- military_base_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Military-base overview must prioritize:

1. facility identity
2. readiness/alert posture
3. force-organization posture
4. equipment posture
5. supply/support posture
6. training/deployment summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Military-base manage must default to:

- summary_tab

Fallback order:

- readiness_and_alert_tab
- force_organization_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. readiness_and_alert_tab
3. force_organization_tab
4. equipment_tab
5. supply_and_support_tab
6. training_tab
7. deployment_support_tab
8. issue_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab


# ============================================================
# 6. FINAL RULE
# ============================================================

Military base UI implementation must remain:

- readiness-aware
- equipment-aware
- support-aware
- deployment-aware
- issue-visible
