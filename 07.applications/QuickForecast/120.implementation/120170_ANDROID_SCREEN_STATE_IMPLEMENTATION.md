# ============================================================
# ANDROID SCREEN STATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for screen-level state handling.

state_principles:
- each screen must have explicit ui state
- loading / empty / content / failure should be distinguishable
- transient action state should not erase source content state
- Pro governance state should be additive, not mixed ambiguously

recommended_state_shape:
- screen_identity
- loading_state
- content_presence_state
- validation_state
- sync_state
- approval_state
- handoff_state
- last_user_action_state

notes:
Forecast context should survive configuration and navigation changes where practical.
