# ============================================================
# USER REGISTRATION STATE MODEL
# ============================================================

status: canonical
layer: model
scope: user-registration-screen
component: user-registration-state

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCREEN STATES
# ============================================================

screen_states:
- initial
- input_in_progress
- validation_ready
- legal_acknowledgment_required
- submit_ready
- submit_loading
- submit_failed
- submit_succeeded


# ============================================================
# 2. STATE RULES
# ============================================================

state_rules:
- initial has empty inputs
- input_in_progress reflects partial user editing
- validation_ready requires syntactically valid fields
- legal_acknowledgment_required applies only when obligation exists
- submit_ready requires valid inputs and required acknowledgment
- submit_loading blocks repeated submission
- submit_failed keeps user-editable state
- submit_succeeded routes to next onboarding step


# ============================================================
# 3. FINAL RULE
# ============================================================

Registration state
must always make it clear
whether the user can proceed.
