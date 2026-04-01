# ============================================================
# RISK AND EVENT CONTROL UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: risk-and-event-control-ui
component: risk-and-event-control-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for risk and event control
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- risk_event_dashboard_screen
- war_risk_control_screen
- epidemic_risk_control_screen
- famine_risk_control_screen
- mortality_risk_control_screen
- event_eligibility_supervision_screen
- emergency_override_screen
- risk_event_history_screen


# ============================================================
# 3. RISK CONTROL SCREENS
# ============================================================

Each risk control screen should expose:

- current risk posture section
- trend section
- hotspot or affected-area section where applicable
- eligibility visibility section
- intervention action section where policy allows

Representative actions:
- trigger_recalculation
- hold_event_eligibility where allowed
- release_event_eligibility where allowed
- add_admin_note


# ============================================================
# 4. EMERGENCY OVERRIDE SCREEN
# ============================================================

screen_id: emergency_override_screen
route_key: admin/risk-event/emergency-override

visible_sections:
- override_target_section
- current_state_section
- requested_override_section
- impact_summary_section
- confirmation_action_section

actions:
- preview_override
- confirm_override
- cancel_override


# ============================================================
# 5. FINAL RULE
# ============================================================

Risk and event control UI must remain:

- risk-visible
- event-visible
- override-capable
- impact-visible
- traceable
