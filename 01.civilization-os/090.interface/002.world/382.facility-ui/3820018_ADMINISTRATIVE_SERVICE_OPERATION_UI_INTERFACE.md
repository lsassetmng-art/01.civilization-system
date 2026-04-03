# ============================================================
# ADMINISTRATIVE SERVICE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: administrative-service-operation-ui
component: administrative-service-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for administrative service operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- administrative_service_overview_screen
- administrative_service_manage_screen
- administrative_service_issue_screen
- administrative_service_history_screen
- administrative_service_permission_screen

Optional where supported:

- administrative_service_linked_screen
- administrative_service_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: administrative_service_manage_screen
route_key: facility/administrative-service/manage

visible_tabs:
- summary_tab
- service_scope_tab
- counter_and_queue_tab
- case_and_process_tab
- document_and_notice_tab
- public_information_tab
- staffing_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 4. FINAL RULE
# ============================================================

Administrative service UI must remain:

- service-aware
- queue-aware
- case-aware
- public-information-aware
