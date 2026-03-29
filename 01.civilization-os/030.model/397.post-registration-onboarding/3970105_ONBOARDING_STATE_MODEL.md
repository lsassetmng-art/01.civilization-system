# ============================================================
# ONBOARDING STATE MODEL
# ============================================================

status: canonical
layer: model
scope: post-registration-onboarding
component: onboarding-state

owner: Boss
prepared_by: Zero


# ============================================================
# 1. STATES
# ============================================================

states:
- registration_completed
- profile_setup_pending
- intro_pending
- route_selection_pending
- onboarding_completed
- onboarding_deferred


# ============================================================
# 2. RULES
# ============================================================

rules:
- onboarding must be resumable if interrupted
- deferred onboarding must still allow safe entry where policy allows
- completed onboarding should not repeat full intro unnecessarily
- state transitions must be auditable


# ============================================================
# 3. FINAL RULE
# ============================================================

Onboarding state
must support interruption
without losing continuity.
