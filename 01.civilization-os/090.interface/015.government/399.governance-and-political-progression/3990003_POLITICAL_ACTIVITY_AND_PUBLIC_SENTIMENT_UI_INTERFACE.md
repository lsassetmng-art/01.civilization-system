# ============================================================
# POLITICAL ACTIVITY AND PUBLIC SENTIMENT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: political-activity-and-public-sentiment-ui
component: political-activity-and-public-sentiment-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for political activity and public sentiment
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- political_sentiment_dashboard_screen
- campaign_and_rally_screen
- demonstration_and_mobilization_screen
- approval_and_issue_salience_screen
- instability_and_pressure_screen
- political_sentiment_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: political_sentiment_dashboard_screen
route_key: governance/politics/dashboard

visible_sections:
- campaign_summary_section
- demonstration_summary_section
- approval_summary_section
- issue_salience_summary_section
- instability_pressure_summary_section

actions:
- open_campaign_and_rally
- open_demonstration_and_mobilization
- open_approval_and_issue_salience
- open_instability_and_pressure
- open_political_sentiment_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Political activity and public sentiment UI must remain:

- campaign-aware
- protest-aware
- approval-aware
- instability-aware
