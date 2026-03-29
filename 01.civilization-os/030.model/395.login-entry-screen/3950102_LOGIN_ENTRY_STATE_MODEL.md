# ============================================================
# LOGIN ENTRY STATE MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: login-entry-state

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCREEN STATES
# ============================================================

screen_states:
- initial
- input_in_progress
- login_ready
- login_loading
- login_failed
- registration_entry_available
- story_access_available
- legal_notice_open


# ============================================================
# 2. STATE RULES
# ============================================================

state_rules:
- initial has empty inputs and disabled login
- input_in_progress reflects partial input
- login_ready requires valid user_id and password
- login_loading disables repeated login action
- login_failed keeps the screen interactive
- registration_entry_available is part of normal default access
- story_access_available requires aerial access token
- legal_notice_open overlays or navigates to notice content


# ============================================================
# 3. FINAL RULE
# ============================================================

The entry screen must always make
login, registration,
and conditional story access states clear.
