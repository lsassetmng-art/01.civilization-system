# ============================================================
# STREAMING OS F2 API FREEZE RESULT V1
# ============================================================

status: frozen
phase: F2
scope: api
prepared_by: Zero
owner: Boss

decision:
StreamingOS API meaning is frozen.
Transport-level implementation remains open.

canonical_endpoint_count:
- 48

endpoint_catalog:

principals_and_sessions:
- get_streaming_principal_detail
- list_streaming_principals
- create_streaming_session
- update_streaming_session
- get_streaming_session_detail
- list_streaming_sessions
- transition_streaming_session_state

assets_and_publish:
- get_archive_asset_detail
- list_archive_assets
- get_clip_asset_detail
- list_clip_assets
- create_external_publish_job
- get_external_publish_job_detail
- list_external_publish_jobs

monetization_reaction_ad:
- create_tip_event
- get_tip_event_detail
- list_tip_events
- create_reaction_event
- list_reaction_events
- list_ranking_results
- get_ad_candidate_list
- create_ad_display_event

creator_platform:
- get_creator_my_page_detail
- upsert_creator_studio_draft
- list_creator_studio_drafts
- upsert_upload_preparation_record
- upsert_creator_settings
- get_creator_analytics_dashboard

viewer_platform:
- get_viewer_home_feed
- search_streaming_content
- upsert_subscription_follow_state
- list_viewer_history
- upsert_playlist_record
- get_playlist_detail
- mutate_watch_queue

moderation_notification_corporate:
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

boot_api_group:
- all canonical endpoints except ad-first follow-up work is allowed to trail
- get_ad_candidate_list may be deferred
- create_ad_display_event may be deferred

internal_only_boundary:
- queue push
- retry control
- scheduler trigger
- publish dispatch internal execution
- AI review internal execution
- notification fanout internal execution
- sync and reconciliation internal execution

naming_rules:
- verb first
- get_*_detail
- list_*
- create_*
- update_*
- upsert_*
- transition_*
- mutate_*
- decide_*

success_shape:
{
  success: true,
  data: <endpoint specific result>,
  meta: <optional>
}

mutation_shape:
{
  canonical_id,
  canonical_type,
  resulting_state?,
  updated_at_or_created_at?
}

error_shape:
{
  success: false,
  error_code,
  error_title,
  error_detail?,
  field_errors?,
  request_id?,
  occurred_at
}

canonical_error_codes:
- invalid_request
- invalid_field
- missing_required_field
- unsupported_value
- unauthorized_actor
- forbidden_action
- target_not_found
- state_conflict
- review_required
- governance_blocked
- retry_later
- rate_limited
- internal_error

pagination_rules:
- limit
- offset
- cursor
- do not mix offset and cursor
- default limit = 20
- recommended max = 100

sort_filter_rules:
- allowlist only
- unknown field = invalid_field
- sort direction = asc / desc only

idempotency_rules:
- idempotency_key is canonical
- same actor + same endpoint + same key + same semantic body = same result
- same key with conflicting body = state_conflict
- duplicated side effects are forbidden

closed_scope:
- endpoint meaning
- endpoint naming
- success / error envelope meaning
- pagination / sort / filter principles
- idempotency semantics
- public vs internal-only boundary

open_refinement_only:
- exact path
- exact method
- exact field names
- exact transport binding
- exact auth carrier placement
