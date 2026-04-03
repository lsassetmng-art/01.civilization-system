# ============================================================
# PUBLIC TRAINING ACCESS POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: public-training-facilities
component: public-training-access-policy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACCESS DIMENSIONS
# ============================================================

Supported access dimensions:
- access_scope
- eligible_role_type
- assignment_required_flag
- public_open_allowed


# ============================================================
# 2. DEFAULTS
# ============================================================

Recommended defaults:
- public_open_allowed = false
- assignment_required_flag = true


# ============================================================
# 3. FINAL RULE
# ============================================================

Public training facilities are restricted-access facilities
by default.
