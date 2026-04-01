# ============================================================
# PERSONALITY RELATIONSHIP AND HISTORY BEHAVIOR MODULATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: personality-relationship-and-history-behavior-modulation-ui
component: personality-relationship-and-history-behavior-modulation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for personality, relationship, and history-based
behavior modulation visibility
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- behavior_modulation_dashboard_screen
- personality_modulation_screen
- relationship_influence_screen
- life_history_and_environment_screen
- behavior_bias_summary_screen
- behavior_modulation_history_screen


# ============================================================
# 3. DASHBOARD SCREEN
# ============================================================

screen_id: behavior_modulation_dashboard_screen
route_key: time-behavior/modulation/dashboard

visible_sections:
- personality_summary_section
- relationship_summary_section
- environment_summary_section
- life_history_summary_section
- behavior_bias_summary_section

actions:
- open_personality_modulation
- open_relationship_influence
- open_life_history_and_environment
- open_behavior_bias_summary
- open_behavior_modulation_history


# ============================================================
# 4. FINAL RULE
# ============================================================

Behavior modulation UI must remain:

- personality-aware
- relationship-aware
- history-aware
- environment-aware
