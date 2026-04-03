# ============================================================
# MILITARY BASE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: military-base-operation-ui
component: military-base-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for military base operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- military_base_overview_screen
- military_base_manage_screen
- military_base_issue_screen
- military_base_history_screen
- military_base_permission_screen

Optional where supported:

- military_base_linked_screen
- military_base_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: military_base_manage_screen
route_key: facility/military-base/manage

visible_tabs:
- summary_tab
- readiness_and_alert_tab
- force_organization_tab
- equipment_tab
- supply_and_support_tab
- training_tab
- deployment_support_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 4. FINAL RULE
# ============================================================

Military base UI must remain:

- readiness-aware
- equipment-aware
- support-aware
- deployment-aware
