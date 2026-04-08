# ============================================================
# ESTIMATE OPPORTUNITY MEMO MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

opportunity_memo stores free-form sales opportunity notes
related to estimate work.

This object supports lightweight deal capture
without requiring rigid formatting.

# ============================================================
# 2. CORE ROLE
# ============================================================

opportunity_memo is intended for:

- meeting summaries
- customer requests
- sales notes
- next action reminders
- negotiation context

It is shareable through app-internal sharing.

# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

- opportunity_memo_id
- estimate_id
- customer_id
- memo_text
- share_state
- sync_state
- created_by
- created_at
- updated_by
- updated_at
- is_deleted

# ============================================================
# 4. CONTENT RULE
# ============================================================

memo_text is intentionally free-form.

No fixed format is required in the standard mode.

# ============================================================
# 5. SHARE RULE
# ============================================================

Shareable to preconfigured users only.

Representative share_state values:

- private
- share_pending
- shared_in_app
- share_revoked

# ============================================================
# 6. SYNC RULE
# ============================================================

Representative sync_state values:

- local_only
- pending_push
- synced
- conflict
- failed

