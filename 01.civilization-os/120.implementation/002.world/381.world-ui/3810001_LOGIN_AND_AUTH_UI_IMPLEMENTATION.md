# ============================================================
# LOGIN AND AUTH UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: login-and-auth-ui-implementation
component: login-and-auth-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for login and auth UI
inside Civilization world entry.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- WORLD_MAP_AND_BUILDER_UI_FLOW_DIAGRAM
- LOGIN_AND_AUTH_UI_INTERFACE
- WORLD_ENTRY_AND_MAP_FUNCTIONAL_DESIGN

This document defines:

- login behavior
- create-user route behavior
- password-reset route behavior
- legal explanation entry behavior
- story-mode gate behavior
- route normalization behavior

This document does not redefine:

- backend auth internals
- mail delivery internals
- story scenario internals
- legal text contents


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Login and auth UI must implement:

- login_screen
- create_new_user_screen
- password_reset_mail_request_screen
- password_reset_screen
- legal_explanation_screen
- story_mode_gate_screen
- story_select_screen
- story_screen


# ============================================================
# 3. LOGIN SCREEN INITIALIZATION RULE
# ============================================================

When login screen is opened,
the implementation should initialize:

- auth-ready state
- empty login fields
- support-route visibility
- story-entry visibility check context where applicable

Login screen must remain usable
even when story route is unavailable.


# ============================================================
# 4. LOGIN SUBMIT RULE
# ============================================================

Login submit must be explicit.

Successful login must route to:

- global_map_screen

Failed login must:

- stay on login_screen
- show explicit error visibility
- preserve non-sensitive user input where reasonable
- never silently redirect to another route


# ============================================================
# 5. CREATE NEW USER ROUTE RULE
# ============================================================

Create new user route is a support flow.

Representative sequence:

login_screen
-> create_new_user_screen
-> submit_create_user
-> return_to_login_screen

Create new user route must remain
separate from map routes
and separate from story routes.


# ============================================================
# 6. PASSWORD RESET REQUEST RULE
# ============================================================

Password reset request route is a support flow.

Representative sequence:

login_screen
-> password_reset_mail_request_screen
-> issue_reset_mail
-> wait_for_mail_link

The request screen must remain explicit
and must not claim reset completion
before the actual reset route is completed.


# ============================================================
# 7. PASSWORD RESET COMPLETION RULE
# ============================================================

Representative sequence:

mail_link
-> password_reset_screen
-> submit_password_reset
-> return_to_login_screen

Password reset success must return
to login screen.

Password reset failure must remain explicit
and must not be shown
as generic login failure.


# ============================================================
# 8. LEGAL EXPLANATION ROUTE RULE
# ============================================================

Legal explanation must be reachable from:

- login_screen
- map top-right menu

Legal explanation must support:

- back to login when entered from login
- back to previous screen when entered from map support menu

Entry source context should be preserved
where useful for return behavior.


# ============================================================
# 9. STORY MODE ENTRY RULE
# ============================================================

Story mode entry exists only from login.

Representative sequence:

login_screen
-> story_mode_gate_screen
-> story_select_screen
-> story_screen

Story route must never appear
as a common map route.

If aerial access token is unavailable,
story entry must be hidden or blocked explicitly,
not silently broken.


# ============================================================
# 10. STORY GATE RULE
# ============================================================

Story mode gate must make explicit:

- access posture
- entry availability
- route to story select
- back to login

Story gate must not directly replace
normal world routing.


# ============================================================
# 11. LOADING / BLOCKED / ERROR RULE
# ============================================================

Login and auth screens must distinguish:

- loading
- ready
- blocked
- error

Blocked examples include:

- unavailable story access
- route unavailable by policy

Error examples include:

- login failure
- reset failure
- route-resolution failure

These states must not be conflated.


# ============================================================
# 12. FINAL RULE
# ============================================================

Login and auth implementation must remain:

- login-rooted
- support-route-explicit
- story-entry-separated
- error-explicit
- route-safe
