# ============================================================
# POST REGISTRATION ROUTE MODEL
# ============================================================

status: canonical
layer: model
scope: post-registration-onboarding
component: post-registration-route

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROUTE OPTIONS
# ============================================================

route_options:
- immediate_session_start
- return_to_login_with_prefilled_user_id
- onboarding_profile_setup
- onboarding_intro_screen
- civilization_global_map_entry


# ============================================================
# 2. DEFAULT ROUTE
# ============================================================

default_route:
- registration_success
- onboarding_profile_setup
- onboarding_intro_screen
- civilization_global_map_entry


# ============================================================
# 3. FINAL RULE
# ============================================================

Default routing should prefer
a smooth first-use path
that leads directly into
the Civilization Global Map.
