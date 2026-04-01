# ============================================================
# USER AND AI HUMAN INTERVENTION AND RECOVERY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: user-and-ai-human-intervention-and-recovery-ui
component: user-and-ai-human-intervention-and-recovery-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for user and Ai(Human) intervention and recovery
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- intervention_recovery_dashboard_screen
- avoidance_and_item_use_screen
- company_service_recovery_screen
- public_service_recovery_screen
- legal_release_and_bail_screen
- intervention_recovery_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: intervention_recovery_dashboard_screen
route_key: time-behavior/intervention/dashboard

visible_sections:
- avoidance_summary_section
- recovery_summary_section
- company_service_summary_section
- public_service_summary_section
- legal_release_summary_section

actions:
- open_avoidance_and_item_use
- open_company_service_recovery
- open_public_service_recovery
- open_legal_release_and_bail
- open_intervention_recovery_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Intervention and recovery UI must remain:

- recovery-aware
- service-aware
- legal-process-aware
- user-vs-Ai(Human)-difference-aware
