# ============================================================
# USER REGISTRATION ERROR MODEL
# ============================================================

status: canonical
layer: model
scope: user-registration-screen
component: user-registration-error

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ERROR TYPES
# ============================================================

error_types:
- missing_user_id
- missing_password
- missing_password_confirmation
- password_confirmation_mismatch
- user_id_not_available
- registration_failed
- legal_acknowledgment_required


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- field errors may be inline
- submit failure may appear near action area
- user_id availability failure should point back to user_id field
- legal acknowledgment failure should point to acknowledgment block


# ============================================================
# 3. FINAL RULE
# ============================================================

Registration errors
must say what failed
and where to fix it.
