# ============================================================
# STREAMING OS CREATOR SCREEN INVENTORY AND TRANSITION MAP
# ============================================================

status: canonical-draft
system: streaming-os
domain: screen-inventory-and-transition-map
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SCREEN INVENTORY
# ============================================================

creator_screens:
- creator_my_page_home
- creator_channel_management
- creator_video_list
- creator_stream_list
- creator_archive_list
- creator_clip_list
- creator_studio_dashboard
- creator_upload_entry
- creator_upload_metadata
- creator_upload_thumbnail
- creator_upload_visibility_and_schedule
- creator_upload_review_status
- creator_publish_request_confirm
- creator_draft_list
- creator_analytics_dashboard
- creator_settings

# ============================================================
# 2. PRIMARY TRANSITIONS
# ============================================================

transitions:
- creator_my_page_home
  -> creator_channel_management
  -> creator_video_list
  -> creator_stream_list
  -> creator_archive_list
  -> creator_clip_list
  -> creator_analytics_dashboard
  -> creator_settings
  -> creator_studio_dashboard

- creator_studio_dashboard
  -> creator_upload_entry
  -> creator_draft_list

- creator_upload_entry
  -> creator_upload_metadata

- creator_upload_metadata
  -> creator_upload_thumbnail
  -> creator_upload_visibility_and_schedule

- creator_upload_thumbnail
  -> creator_upload_visibility_and_schedule

- creator_upload_visibility_and_schedule
  -> creator_upload_review_status
  -> creator_publish_request_confirm

- creator_upload_review_status
  -> creator_publish_request_confirm

- creator_draft_list
  -> creator_upload_metadata
  -> creator_upload_visibility_and_schedule
  -> creator_publish_request_confirm

# ============================================================
# 3. ENTRY RULE
# ============================================================

primary_entry:
- creator_my_page_home
secondary_entry:
- creator_studio_dashboard

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Creator-side screen flow
shall distinguish:
- self-management home
- channel management
- content lists
- studio/upload flow
- draft continuation
- analytics
- settings

