# ============================================================
# STREAMING OS EXTERNAL PUBLISH MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: external-publish-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- external_publish_target
- external_publish_setting
- external_publish_job
- external_publish_result

# ============================================================
# 2. EXTERNAL_PUBLISH_TARGET
# ============================================================

Recommended meanings:
- external_publish_target_id
- external_publish_target_type
  - youtube
- target_display_name
- target_channel_reference
  nullable
- target_status
  - active
  - inactive
  - blocked
- created_at
- updated_at

# ============================================================
# 3. EXTERNAL_PUBLISH_SETTING
# ============================================================

Recommended meanings:
- external_publish_setting_id
- asset_type
  - archive
  - clip
- asset_id
- external_publish_target_type
  - youtube
- publish_title
- publish_description
  nullable
- publish_tags
  nullable
- publish_thumbnail_asset_id
  nullable
- publish_visibility
  - private
  - unlisted
  - public
- publish_schedule_at
  nullable
- publish_language_reference
  nullable
- publish_monetization_intent_flag
- created_at
- updated_at

# ============================================================
# 4. EXTERNAL_PUBLISH_JOB
# ============================================================

Recommended meanings:
- external_publish_job_id
- asset_type
  - archive
  - clip
- asset_id
- session_id
- stream_principal_civilization_id
- primary_rights_holder_civilization_id
- external_publish_target_type
  - youtube
- external_publish_status
  - draft
  - queued
  - validating
  - waiting_review
  - approved
  - pushing
  - succeeded
  - failed
  - retry_wait
  - cancelled
  - blocked
- publish_attempt_count
- last_attempt_at
  nullable
- next_retry_at
  nullable
- publish_requested_by_subject_id
  nullable
- publish_approved_by_subject_id
  nullable
- publish_block_reason
  nullable
- publish_failure_reason
  nullable
- created_at
- updated_at

# ============================================================
# 5. EXTERNAL_PUBLISH_RESULT
# ============================================================

Recommended meanings:
- external_publish_result_id
- external_publish_job_id
- asset_type
  - archive
  - clip
- asset_id
- external_publish_target_type
  - youtube
- external_video_id
  nullable
- external_video_url_reference
  nullable
- external_channel_reference
  nullable
- result_status
  - succeeded
  - failed
  - partial
  - unknown
- pushed_at
  nullable
- visibility_result
  nullable
- remote_processing_state
  nullable
- remote_warning_note
  nullable
- remote_error_note
  nullable
- created_at
- updated_at

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- external publish target
- external publish settings
- publish jobs
- publish results

External publication
shall remain downstream from canonical StreamingOS asset ownership.

