# ============================================================
# RESEARCH AND TECH OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: research-and-tech-operation-ui
component: research-and-tech-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for research and tech operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- research_tech_overview_screen
- research_tech_manage_screen
- research_tech_issue_screen
- research_tech_history_screen
- research_tech_permission_screen

Optional where supported:

- research_tech_linked_screen
- research_tech_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: research_tech_manage_screen
route_key: facility/research-tech/manage

visible_tabs:
- summary_tab
- program_and_focus_tab
- laboratory_and_equipment_tab
- output_and_progress_tab
- staff_and_allocation_tab
- budget_and_support_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 4. FINAL RULE
# ============================================================

Research and tech UI must remain:

- program-aware
- equipment-aware
- progress-aware
- allocation-aware
