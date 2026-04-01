# ============================================================
# FIRE AND RESCUE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: fire-and-rescue-operation-ui-implementation
component: fire-and-rescue-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for fire and rescue operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- FIRE_AND_RESCUE_OPERATION_UI_ARCHITECTURE
- FIRE_AND_RESCUE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Fire/rescue UI must implement:

- fire_rescue_overview_screen
- fire_rescue_manage_screen
- fire_rescue_issue_screen
- fire_rescue_history_screen
- fire_rescue_permission_screen

Optional where supported:

- fire_rescue_linked_screen
- fire_rescue_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Fire/rescue overview must prioritize:

1. facility identity
2. dispatch posture
3. readiness posture
4. firefighting/rescue posture
5. equipment/supply posture
6. evacuation/public-safety summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Fire/rescue manage must default to:

- summary_tab

Fallback order:

- dispatch_tab
- readiness_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. dispatch_tab
3. readiness_tab
4. firefighting_and_rescue_tab
5. equipment_and_supply_tab
6. evacuation_and_public_safety_tab
7. issue_tab
8. automation_tab
9. kpi_tab
10. history_tab
11. permission_tab
12. linked_tab


# ============================================================
# 6. FINAL RULE
# ============================================================

Fire and rescue UI implementation must remain:

- dispatch-aware
- readiness-aware
- rescue-aware
- public-safety-aware
- issue-visible
