# ============================================================
# FACILITY USAGE AND QUEUE RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: facility-usage-and-queue-runtime-ui
component: facility-usage-and-queue-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for facility usage and queue runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- facility_usage_runtime_dashboard_screen
- capacity_and_entry_screen
- queue_progress_screen
- diversion_and_rejection_screen
- facility_usage_runtime_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: facility_usage_runtime_dashboard_screen
route_key: world-runtime/facility-usage/dashboard

visible_sections:
- capacity_summary_section
- queue_summary_section
- diversion_summary_section
- service_completion_summary_section

actions:
- open_capacity_and_entry
- open_queue_progress
- open_diversion_and_rejection
- open_facility_usage_runtime_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Facility usage runtime UI must remain:

- capacity-aware
- queue-aware
- diversion-aware
- service-aware
