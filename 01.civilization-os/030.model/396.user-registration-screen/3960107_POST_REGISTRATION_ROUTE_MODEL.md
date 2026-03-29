# ============================================================
# POST REGISTRATION ROUTE MODEL
# ============================================================

status: canonical
layer: model
scope: user-registration-screen
component: post-registration-route

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROUTE TARGETS
# ============================================================

route_targets:
- login_entry_with_prefilled_user_id
- immediate_session_start
- onboarding_profile_setup
- first_entry_home


# ============================================================
# 2. RULES
# ============================================================

rules:
- registration success may return to login entry with user_id preserved
- registration success may start immediate session if policy allows
- onboarding setup may be inserted before normal home
- routing choice must remain explicit by implementation policy


# ============================================================
# 3. FINAL RULE
# ============================================================

Post-registration routing
must feel like a continuation,
not a dead end.
