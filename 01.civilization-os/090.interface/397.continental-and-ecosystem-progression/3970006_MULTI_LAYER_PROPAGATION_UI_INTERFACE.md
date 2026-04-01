# ============================================================
# MULTI LAYER PROPAGATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: multi-layer-propagation-ui
component: multi-layer-propagation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for multi-layer propagation visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- propagation_dashboard_screen
- disaster_propagation_screen
- epidemic_propagation_screen
- infrastructure_failure_propagation_screen
- economic_and_instability_propagation_screen
- propagation_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: propagation_dashboard_screen
route_key: ecosystem/propagation/dashboard

visible_sections:
- disaster_propagation_summary_section
- epidemic_propagation_summary_section
- infrastructure_failure_summary_section
- economic_instability_summary_section
- migration_and_logistics_summary_section

actions:
- open_disaster_propagation
- open_epidemic_propagation
- open_infrastructure_failure_propagation
- open_economic_and_instability_propagation
- open_propagation_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Multi-layer propagation UI must remain:

- cross-layer-aware
- failure-aware
- epidemic-aware
- shock-aware
