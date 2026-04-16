# ============================================================
# ESTIMATE SCREEN EXACT PAYLOAD IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines how screen-facing exact payload contracts
should be implemented.

# ============================================================
# 2. SCREEN ACTION RULE
# ============================================================

Each major screen action should map to one stable payload contract.

Examples:

- login_screen_submit
- deeplink_entry_open
- estimate_list_load
- estimate_detail_load
- estimate_editor_save
- share_action_submit
- erp_publication_submit
- inventory_refresh_submit
- premium_gate_check

Avoid mixing multiple unrelated screen actions
into one ambiguous endpoint or handler contract.

# ============================================================
# 3. UI-TO-CONTRACT RULE
# ============================================================

UI forms and actions should bind directly to exact contract field names.

Do not rename fields at random between:

- screen state
- action payload
- integration payload

# ============================================================
# 4. PREMIUM FAILURE RULE
# ============================================================

Premium-gated screen actions should fail with contract-consistent shape.

Recommended:

- success: false
- code: PREMIUM_REQUIRED
- message: explicit requirement message
- error.field: precise action source

# ============================================================
# 5. ENTRY RULE
# ============================================================

Standalone entry and deeplink entry are different screen actions,
but both must converge into the same canonical workspace logic
after validation.

# ============================================================
# 6. OFFLINE RULE
# ============================================================

Screen actions allowed offline may return:

- sync_state: local_only
or
- sync_state: pending_push

but must not claim external completion.

# ============================================================
# 7. UI STATE RULE
# ============================================================

The UI must render action results according to exact state values,
not approximate categories.

Examples:

- publication_pending must not render as published
- success_cached must not render as fresh
- premium_unknown must not render as inactive

