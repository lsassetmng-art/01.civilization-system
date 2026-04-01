# ============================================================
# CONTINENTAL PROGRESSION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: continental-progression-ui
component: continental-progression-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for continental progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- continental_progression_dashboard_screen
- climate_and_region_trend_screen
- migration_and_population_drift_screen
- trade_and_conflict_zone_screen
- resource_and_instability_screen
- continental_progression_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: continental_progression_dashboard_screen
route_key: ecosystem/continent/dashboard

visible_sections:
- climate_trend_summary_section
- migration_summary_section
- trade_zone_summary_section
- conflict_zone_summary_section
- resource_instability_summary_section

actions:
- open_climate_and_region_trend
- open_migration_and_population_drift
- open_trade_and_conflict_zone
- open_resource_and_instability
- open_continental_progression_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Continental progression UI must remain:

- macro-geographic
- migration-aware
- trade-aware
- instability-aware
