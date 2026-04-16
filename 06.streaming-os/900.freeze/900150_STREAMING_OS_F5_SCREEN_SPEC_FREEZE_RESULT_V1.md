# ============================================================
# STREAMING OS F5 SCREEN SPEC FREEZE RESULT V1
# ============================================================

status: frozen
phase: F5
scope: screen-spec
prepared_by: Zero
owner: Boss

decision:
Screen meaning is frozen.
Inventory, family separation, transition meaning, and block meaning are fixed.

screen_families:
- creator
- viewer
- moderation
- notification
- corporate

canonical_screen_count:
- 65

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

viewer_screens:
- viewer_home
- viewer_discovery_category
- viewer_search
- viewer_search_results
- viewer_channel_page
- viewer_creator_page
- viewer_waiting_room
- viewer_live_watch
- viewer_archive_watch
- viewer_clip_watch
- viewer_playlist_list
- viewer_playlist_detail
- viewer_watch_queue
- viewer_history
- viewer_following

moderation_screens:
- review_queue_home
- ai_review_findings_detail
- human_review_task_detail
- rights_review_panel
- safety_review_panel
- age_gate_review_panel
- ad_suitability_review_panel
- moderation_decision_confirm
- report_queue
- report_detail
- comment_moderation_queue
- comment_moderation_detail
- appeal_queue
- appeal_detail
- restoration_queue
- restoration_detail
- ban_and_restoration_overview

notification_screens:
- notification_inbox_home
- notification_detail
- creator_notification_list
- viewer_notification_list
- review_alert_list
- review_alert_detail
- escalation_alert_list
- escalation_alert_detail
- notification_settings

corporate_screens:
- corporate_channel_home
- corporate_channel_profile
- corporate_official_stream_list
- affiliated_streamer_list
- affiliated_streamer_detail
- corporate_oversight_dashboard
- company_review_issue_list
- company_monetization_visibility

primary_entries:
- creator = creator_my_page_home
- viewer = viewer_home
- moderation = review_queue_home
- notification = notification_inbox_home
- corporate = corporate_channel_home

major_transition_meaning:
- creator studio and upload flow remains multi-step
- viewer discovery and watch remain separated from continuity screens
- moderation queue, report, comment, appeal, restoration remain distinct
- review alert and escalation alert remain distinct from general notification
- corporate oversight remains distinct from public channel profile

cross_device_rule:
- same screen meaning across iPhone / Android / PC / tablet
- layout may vary by device
- screen identity must not fragment by device

closed_scope:
- screen family meaning
- screen inventory
- entry points
- major transitions
- block meaning
- cross-device meaning

open_refinement_only:
- exact block order
- exact layout composition
- exact tabs / drawer / modal choice
- exact empty / loading / error states
- pixel-level wireframe
