# ============================================================
# STREAMING OS MODERATION AND APPEAL API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. COMMENT SUBMIT API
# ============================================================

endpoint_intent:
- submit comment against content

request_payload:
- actor_civilization_id
- target_type
  - video_asset
  - live_session
  - clip_asset
- target_id
- comment_body

response_payload:
- comment_record_id
- target_type
- target_id
- moderation_status
  - visible
  - hidden
  - removed
  - restricted
  - restored
- created_at

# ============================================================
# 2. REPORT SUBMIT API
# ============================================================

endpoint_intent:
- submit report against content or interaction target

request_payload:
- actor_civilization_id
- report_target_type
  - video_asset
  - live_session
  - clip_asset
  - comment
  - channel
  - creator
- report_target_id
- report_reason_code
- report_note
  nullable

response_payload:
- report_record_id
- report_status
  - submitted
  - in_review
  - resolved
  - rejected
- created_at

# ============================================================
# 3. COMMENT MODERATION API
# ============================================================

endpoint_intent:
- update moderation state for comment

request_payload:
- actor_civilization_id
- comment_record_id
- moderation_status
  - visible
  - hidden
  - removed
  - restricted
  - restored
- moderation_reason_note
  nullable

response_payload:
- comment_moderation_state_id
- comment_record_id
- moderation_status
- moderated_by_subject_id
  nullable
- updated_at

# ============================================================
# 4. APPEAL SUBMIT API
# ============================================================

endpoint_intent:
- submit appeal or re-review request

request_payload:
- actor_civilization_id
- appeal_target_type
- appeal_target_id
- appeal_reason_note
  nullable

response_payload:
- appeal_record_id
- appeal_status
  - submitted
  - accepted
  - rejected
  - completed
- created_at
- updated_at

# ============================================================
# 5. RESTORATION DECISION API
# ============================================================

endpoint_intent:
- record restoration review outcome

request_payload:
- actor_civilization_id
- restoration_target_type
- restoration_target_id
- restoration_status
  - requested
  - under_review
  - restored
  - denied
- restoration_note
  nullable

response_payload:
- moderation_restoration_record_id
- restoration_status
- reviewed_by_subject_id
  nullable
- updated_at

