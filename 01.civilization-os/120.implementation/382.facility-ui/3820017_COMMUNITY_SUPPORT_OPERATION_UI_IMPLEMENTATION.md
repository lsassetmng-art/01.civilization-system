# ============================================================
# COMMUNITY SUPPORT OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: community-support-operation-ui-implementation
component: community-support-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for community support operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- COMMUNITY_SUPPORT_OPERATION_UI_ARCHITECTURE
- COMMUNITY_SUPPORT_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Community-support UI must implement:

- community_support_overview_screen
- community_support_manage_screen
- community_support_issue_screen
- community_support_history_screen
- community_support_permission_screen

Optional where supported:

- community_support_linked_screen
- community_support_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Community-support overview must prioritize:

1. facility identity
2. access/eligibility posture
3. case-load posture
4. continuity posture
5. service-scope posture
6. linkage/staffing summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Community-support manage must default to:

- summary_tab

Fallback order:

- access_and_eligibility_tab
- case_load_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. access_and_eligibility_tab
3. case_load_tab
4. continuity_tab
5. service_scope_tab
6. linkage_tab
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

Community support UI implementation must remain:

- support-aware
- case-load-aware
- continuity-aware
- linkage-aware
- issue-visible
