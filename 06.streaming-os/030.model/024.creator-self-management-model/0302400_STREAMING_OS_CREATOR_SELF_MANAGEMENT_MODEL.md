# ============================================================
# STREAMING OS CREATOR SELF MANAGEMENT MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: creator-self-management-model
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE RECORDS
# ============================================================

Primary records:
- creator_profile_view_state
- creator_studio_draft
- upload_preparation_record
- creator_settings_state
- creator_analytics_snapshot_ref

# ============================================================
# 2. CREATOR_PROFILE_VIEW_STATE
# ============================================================

Recommended meanings:
- creator_profile_view_state_id
- creator_civilization_id
- default_channel_id
  nullable
- visible_video_count
- visible_stream_count
- visible_archive_count
- visible_clip_count
- latest_summary_generated_at
  nullable
- updated_at

# ============================================================
# 3. CREATOR_STUDIO_DRAFT
# ============================================================

Recommended meanings:
- creator_studio_draft_id
- creator_civilization_id
- draft_type
  - uploaded_video
  - archive_publish
  - clip_publish
- draft_title
  nullable
- draft_status
  - draft
  - pending_review
  - ready_to_publish
  - cancelled
- linked_asset_type
  nullable
- linked_asset_id
  nullable
- saved_at
- updated_at

# ============================================================
# 4. UPLOAD_PREPARATION_RECORD
# ============================================================

Recommended meanings:
- upload_preparation_record_id
- creator_civilization_id
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
- created_at
- updated_at

# ============================================================
# 5. CREATOR_SETTINGS_STATE
# ============================================================

Recommended meanings:
- creator_settings_state_id
- creator_civilization_id
- default_visibility_setting
  nullable
- notification_preference_reference
  nullable
- studio_preference_reference
  nullable
- updated_at

# ============================================================
# 6. CREATOR_ANALYTICS_SNAPSHOT_REF
# ============================================================

Recommended meanings:
- creator_analytics_snapshot_ref_id
- creator_civilization_id
- period_type
  - daily
  - monthly
  - yearly
  - overall
- latest_snapshot_reference
  nullable
- updated_at

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

This model shall preserve:
- creator self-facing summary state
- studio draft state
- upload preparation state
- creator settings state
- analytics snapshot references

Creator-side management must remain distinct
from public-facing channel visibility.

