# ============================================================
# EXECUTIVE AND ADMINISTRATIVE PROCESS PROGRESSION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: executive-and-administrative-process-progression-ui
component: executive-and-administrative-process-progression-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for executive and administrative process progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- executive_admin_dashboard_screen
- permit_and_approval_queue_screen
- enforcement_and_notice_screen
- administrative_backlog_screen
- emergency_redirection_screen
- executive_admin_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: executive_admin_dashboard_screen
route_key: governance/executive-admin/dashboard

visible_sections:
- permit_approval_summary_section
- enforcement_summary_section
- backlog_summary_section
- emergency_redirection_summary_section
- public_service_access_summary_section

actions:
- open_permit_and_approval_queue
- open_enforcement_and_notice
- open_administrative_backlog
- open_emergency_redirection
- open_executive_admin_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Executive and administrative UI must remain:

- queue-aware
- enforcement-aware
- backlog-aware
- emergency-redirection-aware
