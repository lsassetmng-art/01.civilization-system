# ============================================================
# STREAMING OS MUTATION RESULT REFERENCE FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-api-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document freezes how mutation endpoints
return canonical references.

# ============================================================
# 2. MUTATION RESULT RULE
# ============================================================

preferred_mutation_result_shape:
- canonical_id
- canonical_type
- resulting_state
  nullable
- updated_at_or_created_at
  nullable

# ============================================================
# 3. EXAMPLES
# ============================================================

examples:
- upsert_creator_studio_draft
  returns:
  - canonical_id = creator_studio_draft_id
  - canonical_type = creator_studio_draft
  - resulting_state = draft_status
  - updated_at

- create_report_record
  returns:
  - canonical_id = report_record_id
  - canonical_type = report_record
  - resulting_state = report_status
  - created_at

- update_notification_read_state
  returns:
  - canonical_id = notification_record_id
  - canonical_type = notification_record
  - resulting_state = read_flag
  - updated_at

# ============================================================
# 4. IDEMPOTENCY RULE
# ============================================================

When idempotency replay occurs,
the same canonical_id and canonical_type
should be returned whenever semantic outcome is unchanged.

