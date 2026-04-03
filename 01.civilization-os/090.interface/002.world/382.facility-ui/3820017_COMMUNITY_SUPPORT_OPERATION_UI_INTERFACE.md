# ============================================================
# COMMUNITY SUPPORT OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: community-support-operation-ui
component: community-support-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for community support operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- community_support_overview_screen
- community_support_manage_screen
- community_support_issue_screen
- community_support_history_screen
- community_support_permission_screen

Optional where supported:

- community_support_linked_screen
- community_support_intervention_screen


# ============================================================
# 3. MANAGE SCREEN TABS
# ============================================================

screen_id: community_support_manage_screen
route_key: facility/community-support/manage

visible_tabs:
- summary_tab
- access_and_eligibility_tab
- case_load_tab
- continuity_tab
- service_scope_tab
- linkage_tab
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

Community support UI must remain:

- support-aware
- case-load-aware
- continuity-aware
- linkage-aware
