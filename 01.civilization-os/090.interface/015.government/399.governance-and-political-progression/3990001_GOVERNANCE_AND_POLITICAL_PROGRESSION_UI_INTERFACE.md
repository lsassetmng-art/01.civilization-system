# ============================================================
# GOVERNANCE AND POLITICAL PROGRESSION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: governance-and-political-progression-ui
component: governance-and-political-progression-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the upper UI interface
for governance and political progression
inside Civilization.


# ============================================================
# 2. TOP-LEVEL SCREENS
# ============================================================

Canonical screens:

- governance_political_dashboard_screen
- legislative_progress_entry_screen
- political_activity_entry_screen
- diplomacy_treaty_entry_screen
- fiscal_budget_entry_screen
- executive_administrative_entry_screen
- governance_political_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: governance_political_dashboard_screen
route_key: governance/dashboard

visible_sections:
- legislative_summary_section
- political_sentiment_summary_section
- diplomacy_summary_section
- fiscal_summary_section
- executive_administrative_summary_section
- governance_alert_section

actions:
- open_legislative_progress
- open_political_activity
- open_diplomacy_treaty
- open_fiscal_budget
- open_executive_administrative
- open_governance_political_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Governance and political progression UI must remain:

- institution-aware
- legislation-visible
- diplomacy-visible
- fiscal-visible
- summary-first
