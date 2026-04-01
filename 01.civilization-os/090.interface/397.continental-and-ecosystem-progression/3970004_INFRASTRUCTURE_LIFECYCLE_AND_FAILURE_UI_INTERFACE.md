# ============================================================
# INFRASTRUCTURE LIFECYCLE AND FAILURE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: infrastructure-lifecycle-and-failure-ui
component: infrastructure-lifecycle-and-failure-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for infrastructure lifecycle and failure
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- infrastructure_lifecycle_dashboard_screen
- load_and_degradation_screen
- outage_and_partial_failure_screen
- restoration_queue_screen
- dependency_impact_screen
- infrastructure_lifecycle_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: infrastructure_lifecycle_dashboard_screen
route_key: ecosystem/infrastructure/dashboard

visible_sections:
- load_summary_section
- degradation_summary_section
- outage_summary_section
- restoration_summary_section
- dependency_impact_summary_section

actions:
- open_load_and_degradation
- open_outage_and_partial_failure
- open_restoration_queue
- open_dependency_impact
- open_infrastructure_lifecycle_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Infrastructure lifecycle UI must remain:

- load-aware
- outage-aware
- restoration-aware
- dependency-aware
