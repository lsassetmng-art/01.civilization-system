# ============================================================
# K3 CREATOR PLATFORM EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: creator-platform
prepared_by: Zero
owner: Boss

endpoints:
- get_creator_my_page_detail
- upsert_creator_studio_draft
- list_creator_studio_drafts
- upsert_upload_preparation_record
- upsert_creator_settings
- get_creator_analytics_dashboard

canonical_objects:
- creator_my_page_projection
- creator_studio_draft
- upload_preparation_record
- creator_settings_state
- creator_analytics_dashboard_projection

creator_my_page_detail_shape:
{
  success: true,
  data: {
    principal_id,
    display_name,
    handle,
    channel_id?,
    summary_blocks: {
      channel_summary?,
      recent_session_summary?,
      archive_summary?,
      clip_summary?,
      review_summary?,
      notification_summary?
    },
    quick_actions: [
      action_key
    ],
    created_at?,
    updated_at?
  },
  meta?: {
    request_id?
  }
}

creator_studio_draft_upsert_request_shape:
{
  draft_id?,
  draft_kind,
  linked_session_id?,
  title?,
  description?,
  thumbnail_asset_ref?,
  visibility_state?,
  scheduled_publish_at?,
  language_code?,
  primary_country_code?,
  save_mode,
  idempotency_key
}

creator_studio_draft_mutation_response_shape:
{
  success: true,
  data: {
    canonical_id,
    canonical_type,
    resulting_state?,
    updated_at_or_created_at?
  }
}

creator_studio_draft_list_shape:
{
  success: true,
  data: {
    items: [
      {
        draft_id,
        draft_kind,
        linked_session_id?,
        title?,
        visibility_state?,
        scheduled_publish_at?,
        save_mode,
        updated_at
      }
    ]
  },
  meta?: {
    limit?,
    offset?,
    cursor?,
    total_count?
  }
}

upload_preparation_upsert_request_shape:
{
  upload_preparation_record_id?,
  linked_session_id?,
  source_asset_kind,
  source_locator_ref?,
  file_name?,
  content_type?,
  byte_size?,
  checksum_ref?,
  upload_state,
  idempotency_key
}

creator_settings_upsert_request_shape:
{
  default_visibility_state?,
  default_language_code?,
  default_primary_country_code?,
  notification_preference?: {
    review_alert_enabled?,
    publish_result_enabled?,
    summary_enabled?
  },
  studio_preference?: {
    autosave_enabled?,
    last_used_draft_kind?
  },
  idempotency_key
}

creator_analytics_dashboard_shape:
{
  success: true,
  data: {
    principal_id,
    period_key,
    views_summary?,
    reaction_summary?,
    ranking_summary?,
    revenue_summary?,
    content_performance?: [],
    updated_at
  },
  meta?: {
    request_id?,
    snapshot_ref?
  }
}

field_rules:
- draft_kind is required
- save_mode is required
- upload_state is required
- principal_id is required in creator projections
- analytics snapshot is projection-oriented, not raw event output

not_returned_publicly:
- private draft recovery markers
- raw storage locator
- internal autosave diagnostic markers
- internal analytics pipeline markers
