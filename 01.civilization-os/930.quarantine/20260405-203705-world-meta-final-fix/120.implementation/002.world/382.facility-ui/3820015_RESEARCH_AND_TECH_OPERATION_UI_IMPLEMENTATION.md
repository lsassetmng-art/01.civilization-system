# ============================================================
# RESEARCH AND TECH OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: research-and-tech-operation-ui-implementation
component: research-and-tech-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for research and tech operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- RESEARCH_AND_TECH_OPERATION_UI_ARCHITECTURE
- RESEARCH_AND_TECH_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Research/tech UI must implement:

- research_tech_overview_screen
- research_tech_manage_screen
- research_tech_issue_screen
- research_tech_history_screen
- research_tech_permission_screen

Optional where supported:

- research_tech_linked_screen
- research_tech_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Research/tech overview must prioritize:

1. facility identity
2. research program posture
3. lab/equipment posture
4. progress/output posture
5. staff/allocation posture
6. budget/support summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Research/tech manage must default to:

- summary_tab

Fallback order:

- program_and_focus_tab
- output_and_progress_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. program_and_focus_tab
3. laboratory_and_equipment_tab
4. output_and_progress_tab
5. staff_and_allocation_tab
6. budget_and_support_tab
7. issue_tab
8. automation_tab
9. kpi_tab
10. history_tab
11. permission_tab
12. linked_tab


# ============================================================
# 6. FINAL RULE
# ============================================================

Research and tech UI implementation must remain:

- program-aware
- equipment-aware
- progress-aware
- allocation-aware
- issue-visible
