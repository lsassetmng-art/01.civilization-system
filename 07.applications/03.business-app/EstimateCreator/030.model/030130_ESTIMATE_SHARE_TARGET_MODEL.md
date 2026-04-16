# ============================================================
# ESTIMATE SHARE TARGET MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_share_target defines a preconfigured user
who may receive app-internal shared content.

This model should align with the same common concept
used by NameCardManager.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- share_target_id
- owner_user_id
- target_user_id
- target_display_name
- target_scope
- is_enabled
- created_at
- updated_at

# ============================================================
# 3. TARGET SCOPE
# ============================================================

Representative target_scope values:

- businessos_user
- team_user
- company_user

Actual allowed scope must remain bounded by BusinessOS policy.

# ============================================================
# 4. ENABLEMENT RULE
# ============================================================

Only enabled targets may be selected in share actions.

Disabled targets remain historically meaningful
but should not be offered for new share requests.

