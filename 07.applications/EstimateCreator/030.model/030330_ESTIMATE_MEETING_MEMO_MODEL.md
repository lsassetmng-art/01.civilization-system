# ============================================================
# ESTIMATE MEETING MEMO MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_meeting_memo stores meeting notes
linked to estimate activity.

It supports both free-form standard use
and structured premium use.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- meeting_memo_id
- estimate_id
- memo_mode
- memo_text
- template_code
- is_premium_format
- share_state
- sync_state
- created_by
- created_at
- updated_by
- updated_at
- is_deleted

# ============================================================
# 3. MEMO MODE
# ============================================================

Representative memo_mode values:

- free_form
- structured

free_form is standard.

structured requires premium access.

# ============================================================
# 4. TEMPLATE CODE
# ============================================================

template_code may identify the structured meeting format
used to compose the memo.

It may be null for free_form mode.

# ============================================================
# 5. SHARE AND SYNC
# ============================================================

Meeting memo is shareable through app-internal sharing
and synchronizable like other business objects.

