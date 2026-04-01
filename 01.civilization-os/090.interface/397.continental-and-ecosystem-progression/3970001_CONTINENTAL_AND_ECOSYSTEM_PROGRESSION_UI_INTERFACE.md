# ============================================================
# CONTINENTAL AND ECOSYSTEM PROGRESSION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: continental-and-ecosystem-progression-ui
component: continental-and-ecosystem-progression-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the upper UI interface
for continental and ecosystem progression
inside Civilization.


# ============================================================
# 2. TOP-LEVEL SCREENS
# ============================================================

Canonical screens:

- continental_ecosystem_dashboard_screen
- continental_progression_entry_screen
- facility_autonomous_operation_entry_screen
- infrastructure_lifecycle_entry_screen
- flora_fauna_progression_entry_screen
- multi_layer_propagation_entry_screen
- continental_ecosystem_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: continental_ecosystem_dashboard_screen
route_key: ecosystem/dashboard

visible_sections:
- continental_summary_section
- facility_summary_section
- infrastructure_summary_section
- flora_fauna_summary_section
- propagation_alert_section

actions:
- open_continental_progression
- open_facility_autonomous_operation
- open_infrastructure_lifecycle
- open_flora_fauna_progression
- open_multi_layer_propagation
- open_continental_ecosystem_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Continental and ecosystem UI must remain:

- multi-layered
- alert-visible
- ecology-aware
- summary-first
