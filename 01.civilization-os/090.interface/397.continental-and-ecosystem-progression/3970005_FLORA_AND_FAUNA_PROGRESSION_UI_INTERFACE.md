# ============================================================
# FLORA AND FAUNA PROGRESSION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: flora-and-fauna-progression-ui
component: flora-and-fauna-progression-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for flora and fauna progression
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- flora_fauna_dashboard_screen
- growth_and_reproduction_screen
- illness_and_decline_screen
- habitat_and_movement_screen
- agricultural_and_ecosystem_effect_screen
- flora_fauna_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: flora_fauna_dashboard_screen
route_key: ecosystem/flora-fauna/dashboard

visible_sections:
- growth_summary_section
- reproduction_summary_section
- illness_decline_summary_section
- habitat_summary_section
- agricultural_effect_summary_section

actions:
- open_growth_and_reproduction
- open_illness_and_decline
- open_habitat_and_movement
- open_agricultural_and_ecosystem_effect
- open_flora_fauna_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Flora and fauna UI must remain:

- life-cycle-aware
- habitat-aware
- ecosystem-aware
- agriculture-relevant
