# ============================================================
# JUDICIAL FACILITY OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: judicial-facility-operation-ui-implementation
component: judicial-facility-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for judicial facility operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- JUDICIAL_FACILITY_OPERATION_UI_ARCHITECTURE
- JUDICIAL_FACILITY_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Judicial UI must implement:

- judicial_overview_screen
- judicial_manage_screen
- judicial_issue_screen
- judicial_history_screen
- judicial_permission_screen

Optional where supported:

- judicial_linked_screen
- judicial_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Judicial overview must prioritize:

1. facility identity
2. case-intake posture
3. hearing/process posture
4. detention/release relation posture
5. judgment/outcome posture
6. backlog summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Judicial manage must default to:

- summary_tab

Fallback order:

- case_intake_tab
- hearing_and_process_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. case_intake_tab
3. hearing_and_process_tab
4. detention_and_release_relation_tab
5. judgment_and_outcome_tab
6. backlog_and_queue_tab
7. issue_tab
8. automation_tab
9. kpi_tab
10. history_tab
11. permission_tab
12. linked_tab


# ============================================================
# 6. FINAL RULE
# ============================================================

Judicial facility UI implementation must remain:

- case-aware
- hearing-aware
- judgment-aware
- backlog-aware
- issue-visible
