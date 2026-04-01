# ============================================================
# PLAYER INTERVENTION RUNTIME UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: player-intervention-runtime-ui
component: player-intervention-runtime-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for intervention and recovery runtime
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- intervention_runtime_dashboard_screen
- item_avoidance_and_recovery_screen
- service_based_intervention_screen
- bail_and_legal_release_runtime_screen
- intervention_runtime_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: intervention_runtime_dashboard_screen
route_key: world-runtime/intervention/dashboard

visible_sections:
- item_use_summary_section
- service_use_summary_section
- legal_release_summary_section
- user_vs_ai_human_difference_section

actions:
- open_item_avoidance_and_recovery
- open_service_based_intervention
- open_bail_and_legal_release_runtime
- open_intervention_runtime_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Player intervention runtime UI must remain:

- intervention-aware
- service-aware
- legal-process-aware
- user-vs-Ai(Human)-difference-aware
