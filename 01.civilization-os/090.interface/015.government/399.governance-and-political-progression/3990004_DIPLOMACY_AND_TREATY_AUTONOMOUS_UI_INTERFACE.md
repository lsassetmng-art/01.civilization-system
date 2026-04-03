# ============================================================
# DIPLOMACY AND TREATY AUTONOMOUS UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: diplomacy-and-treaty-autonomous-ui
component: diplomacy-and-treaty-autonomous-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for diplomacy and treaty progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- diplomacy_dashboard_screen
- inter_state_relation_screen
- treaty_and_alliance_screen
- sanction_and_tension_screen
- trade_agreement_screen
- diplomacy_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: diplomacy_dashboard_screen
route_key: governance/diplomacy/dashboard

visible_sections:
- inter_state_relation_summary_section
- treaty_alliance_summary_section
- sanction_tension_summary_section
- trade_agreement_summary_section
- diplomacy_alert_section

actions:
- open_inter_state_relation
- open_treaty_and_alliance
- open_sanction_and_tension
- open_trade_agreement
- open_diplomacy_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Diplomacy UI must remain:

- inter-state-aware
- treaty-aware
- sanction-aware
- trade-aware
