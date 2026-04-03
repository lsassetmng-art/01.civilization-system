# ============================================================
# LOGIN ERROR MESSAGE MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: login-error-message

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ERROR TYPES
# ============================================================

error_types:
- missing_user_id
- missing_password
- login_failed
- story_access_token_invalid
- story_access_not_allowed
- legal_acknowledgment_required


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- missing field errors may be inline
- authentication failure may be shown near action area
- story token errors apply only to cx22073jw access path
- legal acknowledgment errors appear only when forced legal flow is active


# ============================================================
# 3. FINAL RULE
# ============================================================

Error messaging must explain
what failed
and what the user can do next.
