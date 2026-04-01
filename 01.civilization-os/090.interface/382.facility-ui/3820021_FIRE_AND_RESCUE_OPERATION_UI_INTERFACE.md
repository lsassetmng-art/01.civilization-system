# ============================================================
# FIRE AND RESCUE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: fire-and-rescue-operation-ui
component: fire-and-rescue-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for fire and rescue operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- fire_rescue_overview_screen
- fire_rescue_manage_screen
- fire_rescue_issue_screen
- fire_rescue_history_screen
- fire_rescue_permission_screen

Optional where supported:

- fire_rescue_linked_screen
- fire_rescue_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: fire_rescue_manage_screen
route_key: facility/fire-rescue/manage

visible_tabs:
- summary_tab
- dispatch_tab
- readiness_tab
- firefighting_and_rescue_tab
- equipment_and_supply_tab
- evacuation_and_public_safety_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 4. FINAL RULE
# ============================================================

Fire and rescue UI must remain:

- dispatch-aware
- readiness-aware
- rescue-aware
- public-safety-aware
