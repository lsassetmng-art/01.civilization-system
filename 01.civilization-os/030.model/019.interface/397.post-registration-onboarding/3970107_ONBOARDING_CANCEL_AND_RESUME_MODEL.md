# ============================================================
# ONBOARDING CANCEL AND RESUME MODEL
# ============================================================

status: canonical
layer: model
scope: post-registration-onboarding
component: onboarding-cancel-and-resume

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RULES
# ============================================================

rules:
- users may leave onboarding if policy allows
- partial onboarding progress must be resumable
- resumed onboarding should continue from the last incomplete required stage
- cancel must not delete the created account


# ============================================================
# 2. FINAL RULE
# ============================================================

Canceling onboarding
must not behave like canceling registration.
