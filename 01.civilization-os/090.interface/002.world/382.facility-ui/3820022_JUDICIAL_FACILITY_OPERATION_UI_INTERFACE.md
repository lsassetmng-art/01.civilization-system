# ============================================================
# JUDICIAL FACILITY OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: judicial-facility-operation-ui
component: judicial-facility-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for judicial facility operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- judicial_overview_screen
- judicial_manage_screen
- judicial_issue_screen
- judicial_history_screen
- judicial_permission_screen

Optional where supported:

- judicial_linked_screen
- judicial_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: judicial_manage_screen
route_key: facility/judicial/manage

visible_tabs:
- summary_tab
- case_intake_tab
- hearing_and_process_tab
- detention_and_release_relation_tab
- judgment_and_outcome_tab
- backlog_and_queue_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 4. FINAL RULE
# ============================================================

Judicial facility UI must remain:

- case-aware
- hearing-aware
- judgment-aware
- backlog-aware
