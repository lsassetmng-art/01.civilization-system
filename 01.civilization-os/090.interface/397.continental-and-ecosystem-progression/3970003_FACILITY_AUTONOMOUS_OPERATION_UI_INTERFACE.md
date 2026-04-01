# ============================================================
# FACILITY AUTONOMOUS OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: facility-autonomous-operation-ui
component: facility-autonomous-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for facility autonomous progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- facility_autonomy_dashboard_screen
- facility_operation_state_screen
- maintenance_and_degradation_screen
- overload_and_failure_screen
- restoration_and_repurpose_screen
- facility_autonomy_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: facility_autonomy_dashboard_screen
route_key: ecosystem/facility/dashboard

visible_sections:
- operating_state_summary_section
- maintenance_summary_section
- overload_summary_section
- failure_summary_section
- restoration_summary_section

actions:
- open_facility_operation_state
- open_maintenance_and_degradation
- open_overload_and_failure
- open_restoration_and_repurpose
- open_facility_autonomy_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Facility autonomous operation UI must remain:

- facility-scale
- maintenance-aware
- failure-aware
- restoration-aware
