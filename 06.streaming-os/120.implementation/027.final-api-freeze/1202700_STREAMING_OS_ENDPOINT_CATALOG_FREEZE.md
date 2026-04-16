# ============================================================
# STREAMING OS ENDPOINT CATALOG FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-api-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRINCIPALS / SESSIONS
# ============================================================

frozen_endpoints:
- get_streaming_principal_detail
- list_streaming_principals
- create_streaming_session
- update_streaming_session
- get_streaming_session_detail
- list_streaming_sessions
- transition_streaming_session_state

# ============================================================
# 2. ASSETS / PUBLISH
# ============================================================

frozen_endpoints:
- get_archive_asset_detail
- list_archive_assets
- get_clip_asset_detail
- list_clip_assets
- create_external_publish_job
- get_external_publish_job_detail
- list_external_publish_jobs

# ============================================================
# 3. MONETIZATION / REACTION / AD
# ============================================================

frozen_endpoints:
- create_tip_event
- get_tip_event_detail
- list_tip_events
- create_reaction_event
- list_reaction_events
- list_ranking_results
- get_ad_candidate_list
- create_ad_display_event

# ============================================================
# 4. CREATOR PLATFORM
# ============================================================

frozen_endpoints:
- get_creator_my_page_detail
- upsert_creator_studio_draft
- list_creator_studio_drafts
- upsert_upload_preparation_record
- upsert_creator_settings
- get_creator_analytics_dashboard

# ============================================================
# 5. VIEWER PLATFORM
# ============================================================

frozen_endpoints:
- get_viewer_home_feed
- search_streaming_content
- upsert_subscription_follow_state
- list_viewer_history
- upsert_playlist_record
- get_playlist_detail
- mutate_watch_queue

# ============================================================
# 6. MODERATION / NOTIFICATION / CORPORATE
# ============================================================

frozen_endpoints:
- create_comment_record
- create_report_record
- update_comment_moderation_state
- create_appeal_record
- decide_restoration_record
- list_notifications
- update_notification_read_state
- get_platform_event_detail
- list_review_alerts
- get_channel_detail
- upsert_channel_record
- upsert_corporate_oversight_record
- upsert_affiliated_streamer_reference

