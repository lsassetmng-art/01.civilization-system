# ============================================================
# STORY MODE ENTRY RULE MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: story-mode-entry-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the conditional access rule
for CX22073JW story-mode entry.


# ============================================================
# 2. DISPLAY CONDITION
# ============================================================

display_condition:
- cx22073jw_access_button is shown only when aerial_access_token is present and valid


# ============================================================
# 3. ENTRY RULES
# ============================================================

entry_rules:
- cx22073jw_access is not the default path
- cx22073jw_access starts story-mode-specific routing
- cx22073jw_access must not be displayed without token eligibility
- invalid or expired token must block story entry


# ============================================================
# 4. SUCCESS RESULT
# ============================================================

success_result:
- story_mode_session_started
- story_mode_entry_surface_opened


# ============================================================
# 5. FINAL RULE
# ============================================================

CX22073JW access exists
as a conditional special route,
not as a normal authentication
or normal registration alternative.
