# ============================================================
# USER REGISTRATION ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: user-registration-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the formal new user registration entry
from the login entry screen.


# ============================================================
# 2. ENTRY RULES
# ============================================================

entry_rules:
- register_new_user is always shown on the login entry screen
- register_new_user is a primary route, not a hidden secondary route
- register_new_user opens the dedicated user registration flow
- register_new_user is separate from CX22073JW access


# ============================================================
# 3. MINIMUM REGISTRATION FLOW EXPECTATION
# ============================================================

minimum_registration_flow_expectation:
- user_id_input
- password_input
- password_confirmation_input
- legal_acknowledgment_if_required
- registration_submit_action


# ============================================================
# 4. FINAL RULE
# ============================================================

New user registration must be
a first-class entry path
from Civilization Access Gateway.
