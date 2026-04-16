# ============================================================
# K1 SCREEN TO ENDPOINT MAPPING
# ============================================================

status: exact-mapping
scope: principal-and-session
prepared_by: Zero
owner: Boss

purpose:
Maps K1-level screens and UI entry points to principal/session canonical endpoints.

screen_mapping:

creator_my_page_home:
- get_streaming_principal_detail
- list_streaming_sessions

creator_channel_management:
- get_streaming_principal_detail
- list_streaming_sessions

creator_stream_list:
- list_streaming_sessions
- get_streaming_session_detail

creator_studio_dashboard:
- list_streaming_sessions
- get_streaming_session_detail

creator_upload_entry:
- create_streaming_session

creator_upload_visibility_and_schedule:
- update_streaming_session
- get_streaming_session_detail

creator_publish_request_confirm:
- transition_streaming_session_state
- get_streaming_session_detail

viewer_creator_page:
- get_streaming_principal_detail
- list_streaming_sessions

viewer_channel_page:
- get_streaming_principal_detail
- list_streaming_sessions

viewer_waiting_room:
- get_streaming_session_detail

viewer_live_watch:
- get_streaming_session_detail

viewer_archive_watch:
- get_streaming_session_detail

mapping_rules:
- principal-facing screens must not call raw private-principal paths
- watch-facing screens use session detail projection only
- upload and publish confirm are session-command paths, not runtime paths
- screen mapping must preserve ownership / public-read distinction

out_of_scope_note:
- creator_studio_draft endpoints are K3, not K1
- playlist / queue / history endpoints are K3, not K1
- moderation and notification endpoints are K4, not K1
