# ============================================================
# CORPORATE AUTONOMOUS OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: corporate-autonomous-operation-ui
component: corporate-autonomous-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for autonomous corporate operation
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- corporate_autonomy_dashboard_screen
- production_and_service_activity_screen
- staffing_and_recruitment_screen
- pricing_and_investment_screen
- distress_and_contraction_screen
- corporate_autonomy_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: corporate_autonomy_dashboard_screen
route_key: time-behavior/corporate/dashboard

visible_sections:
- production_service_summary_section
- staffing_summary_section
- pricing_summary_section
- investment_summary_section
- distress_summary_section

actions:
- open_production_and_service_activity
- open_staffing_and_recruitment
- open_pricing_and_investment
- open_distress_and_contraction
- open_corporate_autonomy_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Corporate autonomous operation UI must remain:

- market-aware
- staffing-aware
- pricing-aware
- distress-aware
