# ============================================================
# UI COMMON MATRIX IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: ui-common-matrix-implementation
component: ui-common-matrix-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define representative shared UI matrices
for Civilization.

# ============================================================
# 2. SCREEN / ROUTE FAMILY
# ============================================================

Representative shared fields:

- screen_id
- route_key
- default_tab
- history_screen
- permission_screen

# ============================================================
# 3. COMMON ACTION FAMILY
# ============================================================

Representative common actions:

- open_overview
- open_manage
- open_issue
- open_history
- open_permission
- open_linked
- open_intervention
- trigger_recalculation
- add_admin_note
- confirm_high_impact_action

# ============================================================
# 4. COMMON TAB FAMILY
# ============================================================

Representative common tabs:

- summary_tab
- issue_tab
- automation_tab
- kpi_tab
- history_tab
- permission_tab
- linked_tab

# ============================================================
# 5. FINAL RULE
# ============================================================

UI common matrix implementation must remain:

- reusable
- route-explicit
- action-explicit
- tab-explicit
