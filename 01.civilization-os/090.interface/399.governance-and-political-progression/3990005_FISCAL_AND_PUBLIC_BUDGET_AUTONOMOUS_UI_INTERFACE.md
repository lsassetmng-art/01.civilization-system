# ============================================================
# FISCAL AND PUBLIC BUDGET AUTONOMOUS UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: fiscal-and-public-budget-autonomous-ui
component: fiscal-and-public-budget-autonomous-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for fiscal and public budget progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- fiscal_budget_dashboard_screen
- tax_and_revenue_screen
- expenditure_and_public_service_screen
- debt_and_borrowing_screen
- budget_stress_and_reallocation_screen
- fiscal_budget_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: fiscal_budget_dashboard_screen
route_key: governance/fiscal/dashboard

visible_sections:
- tax_revenue_summary_section
- expenditure_summary_section
- debt_borrowing_summary_section
- public_service_summary_section
- budget_stress_summary_section

actions:
- open_tax_and_revenue
- open_expenditure_and_public_service
- open_debt_and_borrowing
- open_budget_stress_and_reallocation
- open_fiscal_budget_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Fiscal and public budget UI must remain:

- tax-aware
- debt-aware
- public-service-aware
- stress-aware
