# ============================================================
# LOGIN ENTRY UI MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: login-entry-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- logo_or_title_block
- user_id_input
- password_input
- login_button
- register_new_user_button
- cancel_button
- cx22073jw_access_button
- legal_notice_icon_or_link


# ============================================================
# 2. TITLE BLOCK
# ============================================================

title_block:
- main_title: Civilization Access Gateway
- optional_version_label_supported: true


# ============================================================
# 3. INPUT FIELDS
# ============================================================

input_fields:
- user_id
- password

input_rules:
- user_id is required for normal login
- password is required for normal login
- password is masked by default
- password visibility toggle may be supported


# ============================================================
# 4. BUTTONS
# ============================================================

buttons:
- login
- register_new_user
- cancel
- cx22073jw_access

button_rules:
- login is enabled only when user_id and password are both valid
- register_new_user is always visible
- cancel clears current input and current error state
- cx22073jw_access is conditional


# ============================================================
# 5. RECOMMENDED ORDER
# ============================================================

recommended_order:
- login
- register_new_user
- cancel
- cx22073jw_access


# ============================================================
# 6. FINAL RULE
# ============================================================

The screen must present
normal login and new user registration
as the main visible routes,
and special access as a conditional route.
