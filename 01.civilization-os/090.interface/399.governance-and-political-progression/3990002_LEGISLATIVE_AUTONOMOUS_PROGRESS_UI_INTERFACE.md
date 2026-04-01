# ============================================================
# LEGISLATIVE AUTONOMOUS PROGRESS UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: legislative-autonomous-progress-ui
component: legislative-autonomous-progress-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for legislative progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- legislative_dashboard_screen
- bill_pipeline_screen
- deliberation_and_amendment_screen
- voting_and_outcome_screen
- promulgation_and_effective_date_screen
- legislative_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: legislative_dashboard_screen
route_key: governance/legislative/dashboard

visible_sections:
- bill_pipeline_summary_section
- deliberation_summary_section
- amendment_summary_section
- voting_summary_section
- promulgation_summary_section

actions:
- open_bill_pipeline
- open_deliberation_and_amendment
- open_voting_and_outcome
- open_promulgation_and_effective_date
- open_legislative_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Legislative UI must remain:

- stage-aware
- amendment-aware
- voting-aware
- promulgation-aware
