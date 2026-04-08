# ============================================================
# ESTIMATE RECORD MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_record is the central business object of EstimateCreator.

Its default role is to represent a rough estimate
created inside BusinessOS for fast field usage,
later sharing,
later synchronization,
and optional ERP publication preparation.

The record may also be used for local formal estimate handling
only when operation explicitly permits it.

# ============================================================
# 2. CORE POSITION
# ============================================================

estimate_record is the parent object for:

- estimate_line_item
- opportunity_memo linkage
- meeting_memo linkage
- inventory reference linkage
- QA linkage
- publication linkage
- sync state linkage
- audit/history linkage

It must remain the single canonical estimate header object inside the app.

# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

- estimate_id
- workspace_id
- company_id
- estimate_number
- estimate_class
- title
- customer_id
- customer_name_snapshot
- customer_contact_name_snapshot
- currency_code
- issue_date
- valid_until
- subtotal_amount
- tax_amount
- total_amount
- estimate_status
- approval_state
- publication_state
- sync_state
- share_state
- current_revision_no
- is_local_formal_use
- created_by
- created_at
- updated_by
- updated_at
- is_deleted

# ============================================================
# 4. ESTIMATE CLASS
# ============================================================

Supported estimate_class values:

- rough_estimate
- local_formal_estimate

Default value:

- rough_estimate

rough_estimate is the normal class used by the application.

local_formal_estimate is exceptional and must remain explicit.

# ============================================================
# 5. ESTIMATE STATUS
# ============================================================

Representative estimate_status values:

- draft
- review_ready
- publication_ready
- archived

estimate_status is local business workflow status.

It must not be used as a replacement for approval_state,
publication_state,
or sync_state.

# ============================================================
# 6. APPROVAL STATE
# ============================================================

Representative approval_state values:

- not_required
- not_requested
- approval_pending
- approved
- rejected

approval_state tracks approval-related business meaning only.

It must remain separate from publication_state.

# ============================================================
# 7. PUBLICATION STATE
# ============================================================

Representative publication_state values:

- not_requested
- publication_prepared
- publication_pending
- publication_completed
- publication_rejected
- publication_failed

This field tracks ERP publication progression only.

# ============================================================
# 8. SYNC STATE
# ============================================================

Representative sync_state values:

- local_only
- pending_push
- synced
- conflict
- failed

This field tracks synchronization state only.

# ============================================================
# 9. SHARE STATE
# ============================================================

Representative share_state values:

- private
- shared_in_app
- share_pending
- share_revoked

Share state covers app-internal sharing only.

It does not replace publication_state.

# ============================================================
# 10. AMOUNT RULES
# ============================================================

subtotal_amount,
tax_amount,
and total_amount
must reflect the current effective revision snapshot.

The record may keep only summary amounts;
detailed amount construction belongs to line items
and pricing calculation behavior.

# ============================================================
# 11. SNAPSHOT FIELDS
# ============================================================

customer-related snapshot fields are required
so the estimate remains readable
even if upstream reference labels later change.

Representative snapshot fields:

- customer_name_snapshot
- customer_contact_name_snapshot

Snapshot fields improve auditability and export consistency.

# ============================================================
# 12. DELETION RULE
# ============================================================

Hard deletion should be avoided where audit preservation is required.

Use is_deleted for safe removal semantics
unless stronger archival policy is defined elsewhere.

