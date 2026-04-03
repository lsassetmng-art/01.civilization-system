# ============================================================
# NORMAL LOGIN FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: normal-login-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL FLOW
# ============================================================

canonical_flow:
- user_inputs_user_id
- user_inputs_password
- login_button_enabled
- login_requested
- authentication_runs
- login_success_or_failure_resolves


# ============================================================
# 2. SUCCESS RESULT
# ============================================================

success_result:
- normal_session_started
- normal_home_or_gateway_opened


# ============================================================
# 3. FAILURE RESULT
# ============================================================

failure_result:
- login_error_displayed
- password_may_be_cleared
- user_id_may_be_preserved


# ============================================================
# 4. FINAL RULE
# ============================================================

Normal login must remain
the primary returning-user entry route.
