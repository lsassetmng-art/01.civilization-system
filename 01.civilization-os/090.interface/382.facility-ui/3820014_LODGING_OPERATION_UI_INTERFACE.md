# ============================================================
# LODGING OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: lodging-operation-ui
component: lodging-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for lodging operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- lodging_overview_screen
- lodging_manage_screen
- lodging_issue_screen
- lodging_history_screen
- lodging_permission_screen

Optional where supported:

- lodging_linked_screen
- lodging_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: lodging_manage_screen
route_key: facility/lodging/manage

visible_tabs:
- summary_tab
- booking_and_assignment_tab
- occupancy_and_utilization_tab
- room_and_unit_tab
- cleaning_and_turnover_tab
- guest_and_support_tab
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

Lodging UI must remain:

- booking-aware
- room-aware
- turnover-aware
- guest-support-aware
