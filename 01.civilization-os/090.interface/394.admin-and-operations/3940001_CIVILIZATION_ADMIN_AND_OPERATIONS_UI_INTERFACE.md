# ============================================================
# CIVILIZATION ADMIN AND OPERATIONS UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: civilization-admin-and-operations-ui
component: civilization-admin-and-operations-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the upper UI interface
for Civilization administrative
and operational tooling.

This document defines
the top-level admin entry structure
and required admin tool families.


# ============================================================
# 2. TOP-LEVEL SCREENS
# ============================================================

Canonical top-level screens:

- admin_dashboard_screen
- user_and_identity_admin_entry_screen
- marketplace_admin_entry_screen
- world_and_builder_operations_entry_screen
- infrastructure_system_operations_entry_screen
- economy_and_market_control_entry_screen
- risk_and_event_control_entry_screen
- admin_audit_and_history_entry_screen


# ============================================================
# 3. ADMIN DASHBOARD SCREEN
# ============================================================

screen_id: admin_dashboard_screen
route_key: admin/dashboard

visible_sections:
- authority_summary_section
- active_alert_summary_section
- review_queue_summary_section
- hold_summary_section
- market_and_risk_summary_section
- recent_admin_action_summary_section

actions:
- open_user_and_identity_admin
- open_marketplace_admin
- open_world_and_builder_operations
- open_infrastructure_system_operations
- open_economy_and_market_control
- open_risk_and_event_control
- open_admin_audit_and_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Admin and operations UI must remain:

- authority-separated
- dashboard-rooted
- queue-visible
- alert-visible
- audit-aware
