# ============================================================
# K3 SCREEN TO ENDPOINT MAPPING
# ============================================================

status: exact-mapping
scope: creator-viewer-essential
prepared_by: Zero
owner: Boss

purpose:
Maps K3-level screens and UI entry points to creator / viewer
canonical endpoints.

screen_mapping:

creator_my_page_home:
- get_creator_my_page_detail
- get_creator_analytics_dashboard

creator_studio_dashboard:
- list_creator_studio_drafts

creator_upload_entry:
- upsert_creator_studio_draft
- upsert_upload_preparation_record

creator_upload_metadata:
- upsert_creator_studio_draft

creator_upload_thumbnail:
- upsert_creator_studio_draft

creator_upload_visibility_and_schedule:
- upsert_creator_studio_draft

creator_draft_list:
- list_creator_studio_drafts

creator_settings:
- upsert_creator_settings

creator_analytics_dashboard:
- get_creator_analytics_dashboard

viewer_home:
- get_viewer_home_feed

viewer_discovery_category:
- get_viewer_home_feed

viewer_search:
- search_streaming_content

viewer_search_results:
- search_streaming_content

viewer_following:
- upsert_subscription_follow_state

viewer_history:
- list_viewer_history

viewer_playlist_list:
- get_playlist_detail
- upsert_playlist_record

viewer_playlist_detail:
- get_playlist_detail
- upsert_playlist_record

viewer_watch_queue:
- mutate_watch_queue

mapping_rules:
- creator screens must not call viewer continuity mutation endpoints
- viewer continuity screens must not call creator studio endpoints
- viewer home/search are discovery projections, not continuity state mutation paths
- follow, playlist, queue, and history remain viewer continuity family
- analytics remains creator-side projection, not viewer public projection

out_of_scope_note:
- archive / clip detail mapping belongs to K2
- moderation / notification mapping belongs to K4
- corporate mapping belongs to K5
