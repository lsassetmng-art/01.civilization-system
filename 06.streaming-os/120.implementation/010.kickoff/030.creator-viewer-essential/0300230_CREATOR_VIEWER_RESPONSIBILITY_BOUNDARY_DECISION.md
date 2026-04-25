# ============================================================
# CREATOR VIEWER RESPONSIBILITY BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K3-001

decision:
Creator control-plane objects and viewer continuity objects remain fully separate.

creator_control_plane_objects:
- creator_studio_draft
- upload_preparation_record
- creator_settings_state
- creator_analytics_dashboard_projection
- creator_my_page_projection

viewer_objects:
- viewer_home_feed_projection
- viewer_search_result_projection
- subscription_follow_state
- viewer_history_projection
- playlist_record
- playlist_detail_projection
- watch_queue_state

rules:
- creator screens do not mutate viewer continuity objects
- viewer continuity screens do not mutate creator control-plane objects
- creator-side draft and upload preparation are not viewer-facing objects
- viewer watch history, queue, and follow states are not creator-owned objects
