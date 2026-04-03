# ============================================================
# CULTURE AND LEISURE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: culture-and-leisure-operation-ui
component: culture-and-leisure-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for culture and leisure operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- culture_leisure_overview_screen
- culture_leisure_manage_screen
- culture_leisure_issue_screen
- culture_leisure_history_screen
- culture_leisure_permission_screen

Optional where supported:

- culture_leisure_linked_screen
- culture_leisure_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: culture_leisure_manage_screen
route_key: facility/culture-leisure/manage

visible_tabs:
- summary_tab
- visitor_and_flow_tab
- program_and_activity_tab
- atmosphere_and_condition_tab
- appeal_and_visibility_tab
- staffing_and_upkeep_tab
- money_visibility_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 4. FINAL RULE
# ============================================================

Culture and leisure UI must remain:

- visitor-aware
- program-aware
- appeal-aware
- upkeep-aware
