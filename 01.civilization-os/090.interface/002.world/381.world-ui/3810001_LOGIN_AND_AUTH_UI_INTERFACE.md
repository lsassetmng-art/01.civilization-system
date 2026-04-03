# ============================================================
# LOGIN AND AUTH UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: login-and-auth-ui-interface
component: login-and-auth-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the login and auth UI interface contract
for Civilization world entry.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE

This document defines
screen composition,
route contract,
field contract,
action contract,
and state contract
for login and auth related screens.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- login_screen
- create_new_user_screen
- password_reset_mail_request_screen
- password_reset_screen
- legal_explanation_screen
- story_mode_gate_screen
- story_select_screen
- story_screen


# ============================================================
# 3. LOGIN SCREEN
# ============================================================

screen_id: login_screen
route_key: auth/login

visible_sections:
- login_form_section
- login_support_action_section
- login_story_entry_section where applicable

fields:
- login_id
- password

actions:
- submit_login
- open_create_new_user
- open_password_reset_mail_request
- open_legal_explanation
- open_story_mode where aerial_access_token is available

states:
- loading
- ready
- blocked
- error


# ============================================================
# 4. CREATE NEW USER SCREEN
# ============================================================

screen_id: create_new_user_screen
route_key: auth/create-user

visible_sections:
- create_user_form_section
- create_user_submit_section

actions:
- submit_create_user
- cancel_and_back_to_login

return_route:
- login_screen


# ============================================================
# 5. PASSWORD RESET MAIL REQUEST SCREEN
# ============================================================

screen_id: password_reset_mail_request_screen
route_key: auth/password-reset-request

visible_sections:
- password_reset_request_form_section
- password_reset_request_submit_section

fields:
- email_or_login_id

actions:
- issue_reset_mail
- cancel_and_back_to_login


# ============================================================
# 6. PASSWORD RESET SCREEN
# ============================================================

screen_id: password_reset_screen
route_key: auth/password-reset

visible_sections:
- password_reset_form_section
- password_reset_submit_section

fields:
- new_password
- confirm_new_password

actions:
- submit_password_reset
- finish_and_back_to_login


# ============================================================
# 7. LEGAL EXPLANATION SCREEN
# ============================================================

screen_id: legal_explanation_screen
route_key: legal/explanation

visible_sections:
- legal_text_section
- legal_navigation_section

actions:
- back_to_login
- back_to_previous_screen where applicable


# ============================================================
# 8. STORY MODE GATE SCREEN
# ============================================================

screen_id: story_mode_gate_screen
route_key: story/gate

visible_sections:
- token_validation_summary_section
- story_mode_entry_section

actions:
- open_story_select
- back_to_login

visibility_rule:
- login route only


# ============================================================
# 9. STORY SELECT SCREEN
# ============================================================

screen_id: story_select_screen
route_key: story/select

visible_sections:
- story_list_section
- story_detail_preview_section

actions:
- open_story
- back_to_story_gate


# ============================================================
# 10. STORY SCREEN
# ============================================================

screen_id: story_screen
route_key: story/view

visible_sections:
- story_content_section
- story_navigation_section

actions:
- next_story_step where applicable
- back_to_story_select
- exit_to_login_or_gate


# ============================================================
# 11. FINAL RULE
# ============================================================

Story mode entry must remain
login-rooted only.

Login and auth UI must remain
separate from normal world map routing.
