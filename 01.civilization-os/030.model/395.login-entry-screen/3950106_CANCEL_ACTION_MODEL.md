# ============================================================
# CANCEL ACTION MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: cancel-action

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines cancel behavior
for the login entry screen.


# ============================================================
# 2. ACTION RULES
# ============================================================

action_rules:
- cancel clears user_id input
- cancel clears password input
- cancel clears visible error state
- cancel may return to prior launch surface only if such surface exists


# ============================================================
# 3. FINAL RULE
# ============================================================

Cancel must always be safe
and must never commit authentication
or registration action.
