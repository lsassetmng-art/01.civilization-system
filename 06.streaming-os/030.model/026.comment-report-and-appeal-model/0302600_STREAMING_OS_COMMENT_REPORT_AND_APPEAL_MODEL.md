# ============================================================
# STREAMING OS COMMENT REPORT AND APPEAL MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: comment-report-and-appeal-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- comment_record
- comment_moderation_state
- report_record
- appeal_record
- moderation_restoration_record

# ============================================================
# 2. COMMENT_RECORD
# ============================================================

Recommended meanings:
- comment_record_id
- target_type
  - video_asset
  - live_session
  - clip_asset
- target_id
- author_subject_id
- comment_body
- created_at
- updated_at

# ============================================================
# 3. COMMENT_MODERATION_STATE
# ============================================================

Recommended meanings:
- comment_moderation_state_id
- comment_record_id
- moderation_status
  - visible
  - hidden
  - removed
  - restricted
  - restored
- moderation_reason_note
  nullable
- moderated_by_subject_id
  nullable
- updated_at

# ============================================================
# 4. REPORT_RECORD
# ============================================================

Recommended meanings:
- report_record_id
- report_target_type
  - video_asset
  - live_session
  - clip_asset
  - comment
  - channel
  - creator
- report_target_id
- reported_by_subject_id
  nullable
- report_reason_code
- report_note
  nullable
- report_status
  - submitted
  - in_review
  - resolved
  - rejected
- created_at
- updated_at

# ============================================================
# 5. APPEAL_RECORD
# ============================================================

Recommended meanings:
- appeal_record_id
- appeal_target_type
- appeal_target_id
- requested_by_subject_id
  nullable
- appeal_reason_note
  nullable
- appeal_status
  - submitted
  - accepted
  - rejected
  - completed
- created_at
- updated_at

# ============================================================
# 6. MODERATION_RESTORATION_RECORD
# ============================================================

Recommended meanings:
- moderation_restoration_record_id
- restoration_target_type
- restoration_target_id
- restoration_status
  - requested
  - under_review
  - restored
  - denied
- restoration_note
  nullable
- reviewed_by_subject_id
  nullable
- updated_at

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- comment existence
- comment moderation state
- report existence
- appeal existence
- restoration history

Restriction and restoration must remain explicit.

