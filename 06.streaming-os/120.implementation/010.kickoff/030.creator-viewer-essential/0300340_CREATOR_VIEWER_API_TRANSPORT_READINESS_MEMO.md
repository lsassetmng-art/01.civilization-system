# ============================================================
# CREATOR VIEWER API TRANSPORT READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K3 readiness for later API transport design.

endpoints_in_scope:
- get_creator_my_page_detail
- upsert_creator_studio_draft
- list_creator_studio_drafts
- upsert_upload_preparation_record
- upsert_creator_settings
- get_creator_analytics_dashboard
- get_viewer_home_feed
- search_streaming_content
- upsert_subscription_follow_state
- list_viewer_history
- upsert_playlist_record
- get_playlist_detail
- mutate_watch_queue

meaning_level_ready_items:
- creator control-plane endpoint meaning is closed
- viewer discovery endpoint meaning is closed
- viewer continuity endpoint meaning is closed
- playlist vs watch queue transport intent is closed
- creator analytics vs viewer discovery audience separation is closed

transport_precision_open:
- exact HTTP method
- exact path
- exact RPC naming
- exact auth carrier placement
- exact error-to-status mapping
- exact list filter serialization
- exact collection mutation serialization
- exact field casing and serialization detail

transport_risk_notes:
- do not leak private continuity state into discovery transport
- do not let creator endpoints mutate viewer continuity by convenience
- do not flatten playlist and watch queue semantics into one transport contract
- do not expose creator analytics as viewer-safe discovery output

recommended_future_order:
1. lock request/response field casing
2. lock auth carrier placement
3. lock list and mutation serialization shapes
4. lock error/status mapping
5. run transport review against K3 decision pack
