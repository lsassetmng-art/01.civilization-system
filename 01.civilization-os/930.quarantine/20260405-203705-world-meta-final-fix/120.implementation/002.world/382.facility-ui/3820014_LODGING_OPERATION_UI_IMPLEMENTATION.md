# ============================================================
# LODGING OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: lodging-operation-ui-implementation
component: lodging-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for lodging operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- LODGING_OPERATION_UI_ARCHITECTURE
- LODGING_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Lodging UI must implement:

- lodging_overview_screen
- lodging_manage_screen
- lodging_issue_screen
- lodging_history_screen
- lodging_permission_screen

Optional where supported:

- lodging_linked_screen
- lodging_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Lodging overview must prioritize:

1. facility identity
2. booking posture
3. occupancy posture
4. room/unit posture
5. cleaning/turnover posture
6. guest-support summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Lodging manage must default to:

- summary_tab

Fallback order:

- booking_and_assignment_tab
- occupancy_and_utilization_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. booking_and_assignment_tab
3. occupancy_and_utilization_tab
4. room_and_unit_tab
5. cleaning_and_turnover_tab
6. guest_and_support_tab
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

Lodging UI implementation must remain:

- booking-aware
- room-aware
- turnover-aware
- guest-support-aware
- issue-visible
