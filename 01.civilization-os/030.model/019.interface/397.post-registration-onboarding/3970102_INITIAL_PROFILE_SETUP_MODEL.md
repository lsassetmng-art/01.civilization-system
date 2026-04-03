# ============================================================
# INITIAL PROFILE SETUP MODEL
# ============================================================

status: canonical
layer: model
scope: post-registration-onboarding
component: initial-profile-setup

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MINIMUM PROFILE FIELDS
# ============================================================

minimum_profile_fields:
- display_name
- preferred_language_or_locale
- first_access_mode
- optional_avatar_state


# ============================================================
# 2. RULES
# ============================================================

rules:
- minimum profile setup should stay lightweight
- fields not required for first access may be deferred
- display_name may default from user_id if needed
- skipped optional fields may be completed later


# ============================================================
# 3. FINAL RULE
# ============================================================

Initial profile setup
should prepare first use
without becoming a long questionnaire.
