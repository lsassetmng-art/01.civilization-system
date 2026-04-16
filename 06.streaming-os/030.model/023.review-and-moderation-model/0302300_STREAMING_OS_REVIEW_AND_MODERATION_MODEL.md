# ============================================================
# STREAMING OS REVIEW AND MODERATION MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: review-and-moderation-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- review_queue_item
- ai_review_job
- human_review_task
- review_decision_record
- review_dimension_result
- re_review_request
- restoration_review_record

# ============================================================
# 2. REVIEW_QUEUE_ITEM
# ============================================================

Recommended meanings:
- review_queue_item_id
- target_type
  - uploaded_video
  - archive_asset
  - clip_asset
  - publish_request
  - monetization_context
- target_id
- queue_type
  - ai_review
  - human_review
  - escalated_review
  - re_review
- review_stage
  - queued
  - running
  - waiting_human
  - decided
  - blocked
  - closed
- priority_level
- escalation_flag
- latest_review_status
- created_at
- updated_at

# ============================================================
# 3. AI_REVIEW_JOB
# ============================================================

Recommended meanings:
- ai_review_job_id
- review_queue_item_id
- ai_review_status
  - queued
  - running
  - completed
  - failed
  - escalated
- suspected_rights_issue_flag
- suspected_safety_issue_flag
- suspected_age_gate_flag
- suspected_ad_suitability_issue_flag
- suspected_publish_block_flag
- human_review_required_flag
- ai_review_note
  nullable
- started_at
  nullable
- completed_at
  nullable

# ============================================================
# 4. HUMAN_REVIEW_TASK
# ============================================================

Recommended meanings:
- human_review_task_id
- review_queue_item_id
- assigned_reviewer_subject_id
  nullable
- human_review_status
  - queued
  - assigned
  - in_review
  - decided
  - closed
- review_note
  nullable
- assigned_at
  nullable
- decided_at
  nullable

# ============================================================
# 5. REVIEW_DECISION_RECORD
# ============================================================

Recommended meanings:
- review_decision_record_id
- review_queue_item_id
- final_decision_type
  - approve
  - approve_with_restriction
  - age_restricted
  - monetization_restricted
  - ad_restricted
  - blocked
  - correction_required
  - re_review_required
- decided_by_subject_id
  nullable
- decision_note
  nullable
- decided_at

# ============================================================
# 6. REVIEW_DIMENSION_RESULT
# ============================================================

Recommended meanings:
- review_dimension_result_id
- review_decision_record_id
- dimension_type
  - rights
  - safety
  - age
  - ad_suitability
  - publication
  - monetization
- dimension_result
  - none
  - approved
  - restricted
  - rejected
  - blocked
  - needs_recheck
- dimension_reason_note
  nullable
- updated_at

# ============================================================
# 7. RE_REVIEW_REQUEST
# ============================================================

Recommended meanings:
- re_review_request_id
- target_type
- target_id
- requested_by_subject_id
  nullable
- re_review_reason
  nullable
- re_review_status
  - requested
  - accepted
  - rejected
  - completed
- created_at
- updated_at

# ============================================================
# 8. RESTORATION_REVIEW_RECORD
# ============================================================

Recommended meanings:
- restoration_review_record_id
- target_type
- target_id
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
# 9. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- review queue existence
- AI review job existence
- human review task existence
- final review decision existence
- dimension-specific decision results
- re-review requests
- restoration review history

Review must remain explicit,
multi-stage,
and dimension-aware.

