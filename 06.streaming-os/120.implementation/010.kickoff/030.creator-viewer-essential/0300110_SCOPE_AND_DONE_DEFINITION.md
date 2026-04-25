# ============================================================
# K3 SCOPE AND DONE DEFINITION
# ============================================================

status: exactness-pack
scope: creator-viewer-essential
phase: K3 creator-viewer-essential
prepared_by: Zero
owner: Boss

scope_in:
- streaming-creator-platform
- streaming-viewer-discovery
- streaming-viewer-continuity
- streaming-api-contracts portion for creator / viewer essential
- creator / viewer auth boundary
- creator / viewer screen-to-endpoint mapping

scope_out:
- monetization
- moderation
- notification
- corporate
- Persona-side SQL execution

canonical_endpoints_in_scope:
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

done_definition:
- creator platform payload exactness fixed
- viewer discovery payload exactness fixed
- viewer continuity payload exactness fixed
- creator platform table-column exactness fixed
- viewer discovery / continuity table-column exactness fixed
- creator / viewer auth / RLS exactness fixed
- screen-to-endpoint mapping fixed
- no hidden reopen point remains

stop_rules:
- creator and viewer responsibilities get mixed
- viewer continuity gets collapsed into viewer discovery
- creator studio state becomes public viewer state
- watch history / queue become creator-owned objects
