# ============================================================
# STREAMING OS CREATOR PLATFORM API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CREATOR MY PAGE DETAIL API
# ============================================================

endpoint_intent:
- read creator-facing self-management summary

request_payload:
- actor_civilization_id
- creator_civilization_id

response_payload:
- creator_civilization_id
- default_channel_id
  nullable
- visible_video_count
- visible_stream_count
- visible_archive_count
- visible_clip_count
- creator_revenue_summary_reference
  nullable
- creator_ranking_summary_reference
  nullable
- latest_summary_generated_at
  nullable

# ============================================================
# 2. STUDIO DRAFT UPSERT API
# ============================================================

endpoint_intent:
- create or update creator studio draft

request_payload:
- actor_civilization_id
- creator_studio_draft_id
  nullable
- draft_type
  - uploaded_video
  - archive_publish
  - clip_publish
- draft_title
  nullable
- linked_asset_type
  nullable
- linked_asset_id
  nullable
- draft_status
  - draft
  - pending_review
  - ready_to_publish
  - cancelled

response_payload:
- creator_studio_draft_id
- creator_civilization_id
- draft_status
- saved_at
- updated_at

# ============================================================
# 3. UPLOAD PREPARATION API
# ============================================================

endpoint_intent:
- register or update upload preparation state

request_payload:
- actor_civilization_id
- upload_preparation_record_id
  nullable
- upload_target_type
  - video
  - thumbnail
- ingest_status
  - pending
  - uploaded
  - failed
  - cancelled
- metadata_ready_flag
- publish_setting_ready_flag
- review_required_flag

response_payload:
- upload_preparation_record_id
- ingest_status
- metadata_ready_flag
- publish_setting_ready_flag
- review_required_flag
- updated_at

# ============================================================
# 4. CREATOR SETTINGS API
# ============================================================

endpoint_intent:
- read or update creator-side platform settings

request_payload:
- actor_civilization_id
- creator_civilization_id
- default_visibility_setting
  nullable
- notification_preference_reference
  nullable
- studio_preference_reference
  nullable

response_payload:
- creator_settings_state_id
- creator_civilization_id
- default_visibility_setting
  nullable
- notification_preference_reference
  nullable
- studio_preference_reference
  nullable
- updated_at

