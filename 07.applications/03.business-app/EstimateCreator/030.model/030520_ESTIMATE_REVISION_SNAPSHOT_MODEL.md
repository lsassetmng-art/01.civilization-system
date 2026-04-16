
# ============================================================
# ESTIMATE REVISION SNAPSHOT MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_revision_snapshot stores an immutable business snapshot
of an estimate at a meaningful revision point.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- revision_snapshot_id
- estimate_id
- revision_no
- snapshot_type
- estimate_header_snapshot_json
- line_item_snapshot_json
- opportunity_memo_snapshot_json
- meeting_memo_snapshot_json
- subtotal_amount
- tax_amount
- total_amount
- estimate_locale
- estimate_currency_code
- created_by
- created_at

# ============================================================
# 3. SNAPSHOT TYPES
# ============================================================

Representative snapshot_type values:

- manual_revision
- delivery_revision
- publication_revision
- customer_response_basis

# ============================================================
# 4. RULE
# ============================================================

A revision snapshot is immutable in meaning once created.

It preserves the exact estimate state
that later delivery, publication, or customer response may reference.

