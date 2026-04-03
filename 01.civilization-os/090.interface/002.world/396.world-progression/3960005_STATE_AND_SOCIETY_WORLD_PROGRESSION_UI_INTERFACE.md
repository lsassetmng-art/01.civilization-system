# ============================================================
# STATE AND SOCIETY WORLD PROGRESSION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: state-and-society-world-progression-ui
component: state-and-society-world-progression-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for state and society world progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- state_and_society_dashboard_screen
- legislation_progress_screen
- public_sentiment_and_political_activity_screen
- diplomacy_and_security_posture_screen
- fiscal_and_public_service_posture_screen
- state_and_society_history_screen


# ============================================================
# 3. STATE AND SOCIETY DASHBOARD SCREEN
# ============================================================

screen_id: state_and_society_dashboard_screen
route_key: world-progression/state-society/dashboard

visible_sections:
- legislation_summary_section
- public_sentiment_summary_section
- political_activity_summary_section
- diplomacy_summary_section
- fiscal_summary_section
- public_service_summary_section

actions:
- open_legislation_progress
- open_public_sentiment_and_political_activity
- open_diplomacy_and_security_posture
- open_fiscal_and_public_service_posture
- open_state_and_society_history


# ============================================================
# 4. FINAL RULE
# ============================================================

State and society progression UI must remain:

- legislation-visible
- public-sentiment-visible
- diplomacy-visible
- fiscal-visible
- society-aware
