# ============================================================
# STREAMING OS ARCHIVE AND PUBLISH API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact payload intent
for archive,
clip,
and external publish APIs.

# ============================================================
# 2. ARCHIVE GENERATION REQUEST API
# ============================================================

endpoint_intent:
- request archive generation for an ended session

request_payload:
- actor_civilization_id
- session_id

response_payload:
- archive_asset_id
  nullable
- session_id
- archive_generation_status
- accepted_flag
- rejection_reason_codes
- updated_at

# ============================================================
# 3. CLIP CREATE API
# ============================================================

endpoint_intent:
- create clip from session or archive

request_payload:
- actor_civilization_id
- source_type
  - session
  - archive_asset
- source_id
- clip_title
- clip_start_offset_seconds
  nullable
- clip_end_offset_seconds
  nullable

response_payload:
- clip_asset_id
- clip_status
- source_type
- source_id
- created_at

# ============================================================
# 4. ASSET DETAIL API
# ============================================================

endpoint_intent:
- read archive or clip detail

request_payload:
- actor_civilization_id
- asset_type
  - archive
  - clip
- asset_id

response_payload:
- asset_type
- asset_id
- session_id
  nullable
- stream_principal_civilization_id
- asset_title
- asset_status
- rights_review_status
- safety_review_status
- company_approval_status
- publish_ready_flag
- publication_block_flag
- hidden_flag
- locked_flag
- suspended_flag
- latest_external_publish_job_id
  nullable
- latest_external_publish_result_id
  nullable
- updated_at

# ============================================================
# 5. PUBLISH SETTING UPSERT API
# ============================================================

endpoint_intent:
- create or update publish settings

request_payload:
- actor_civilization_id
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

response_payload:
- external_publish_setting_id
- asset_type
- asset_id
- external_publish_target_type
- updated_at

# ============================================================
# 6. PUBLISH REQUEST API
# ============================================================

endpoint_intent:
- request external publish execution

request_payload:
- actor_civilization_id
- asset_type
  - archive
  - clip
- asset_id
- external_publish_target_type
  - youtube

response_payload:
- external_publish_job_id
- external_publish_status
- accepted_flag
- rejection_reason_codes
- updated_at

# ============================================================
# 7. PUBLISH RESULT API
# ============================================================

endpoint_intent:
- read latest external publish result

request_payload:
- actor_civilization_id
- external_publish_job_id

response_payload:
- external_publish_job_id
- external_publish_status
- external_publish_result_id
  nullable
- external_video_id
  nullable
- external_video_url_reference
  nullable
- external_channel_reference
  nullable
- result_status
  nullable
- visibility_result
  nullable
- remote_processing_state
  nullable
- remote_warning_note
  nullable
- remote_error_note
  nullable
- publish_attempt_count
- next_retry_at
  nullable

