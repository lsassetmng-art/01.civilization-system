# ============================================================
# ORGANIZATIONAL AUTONOMOUS OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: organizational-autonomous-operation-ui
component: organizational-autonomous-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for organization-level autonomous operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- organizational_autonomy_dashboard_screen
- public_organization_activity_screen
- company_activity_screen
- queue_and_service_progress_screen
- emergency_preemption_screen
- organizational_autonomy_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: organizational_autonomy_dashboard_screen
route_key: time-behavior/organization/dashboard

visible_sections:
- organization_summary_section
- public_authority_summary_section
- company_summary_section
- queue_progress_summary_section
- emergency_preemption_summary_section

actions:
- open_public_organization_activity
- open_company_activity
- open_queue_and_service_progress
- open_emergency_preemption
- open_organizational_autonomy_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Organizational autonomous operation UI must remain:

- organization-aware
- queue-aware
- emergency-aware
- traceable
