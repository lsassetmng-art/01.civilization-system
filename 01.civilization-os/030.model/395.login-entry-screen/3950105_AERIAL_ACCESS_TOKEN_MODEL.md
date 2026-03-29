# ============================================================
# AERIAL ACCESS TOKEN MODEL
# ============================================================

status: canonical
layer: model
scope: login-entry-screen
component: aerial-access-token

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the token condition
used to expose CX22073JW access.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- token_present
- token_valid
- token_expired
- token_scope
- story_access_allowed


# ============================================================
# 3. FINAL RULE
# ============================================================

Story access visibility
must be based on explicit token state,
not implied guesswork.
