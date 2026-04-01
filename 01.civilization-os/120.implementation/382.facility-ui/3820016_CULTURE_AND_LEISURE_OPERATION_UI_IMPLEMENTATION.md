# ============================================================
# CULTURE AND LEISURE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: culture-and-leisure-operation-ui-implementation
component: culture-and-leisure-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for culture and leisure operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- CULTURE_AND_LEISURE_OPERATION_UI_ARCHITECTURE
- CULTURE_AND_LEISURE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Culture/leisure UI must implement:

- culture_leisure_overview_screen
- culture_leisure_manage_screen
- culture_leisure_issue_screen
- culture_leisure_history_screen
- culture_leisure_permission_screen

Optional where supported:

- culture_leisure_linked_screen
- culture_leisure_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Culture/leisure overview must prioritize:

1. facility identity
2. visitor posture
3. program posture
4. atmosphere/condition posture
5. appeal posture
6. upkeep summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Culture/leisure manage must default to:

- summary_tab

Fallback order:

- visitor_and_flow_tab
- program_and_activity_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. visitor_and_flow_tab
3. program_and_activity_tab
4. atmosphere_and_condition_tab
5. appeal_and_visibility_tab
6. staffing_and_upkeep_tab
7. money_visibility_tab
8. issue_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab


# ============================================================
# 6. FINAL RULE
# ============================================================

Culture and leisure UI implementation must remain:

- visitor-aware
- program-aware
- appeal-aware
- upkeep-aware
- issue-visible
