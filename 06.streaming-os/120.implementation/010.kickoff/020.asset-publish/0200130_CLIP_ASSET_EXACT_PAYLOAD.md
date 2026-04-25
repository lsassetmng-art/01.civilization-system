# ============================================================
# K2 CLIP ASSET EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: clip-asset
prepared_by: Zero
owner: Boss

endpoints:
- get_clip_asset_detail
- list_clip_assets

canonical_object:
clip_asset

detail_response_shape:
{
  success: true,
  data: {
    clip_asset_id,
    principal_id,
    source_archive_asset_id?,
    source_session_id?,
    title,
    description?,
    thumbnail_asset_ref?,
    duration_seconds?,
    clip_start_seconds?,
    clip_end_seconds?,
    visibility_state,
    publication_state,
    review_state?,
    governance_state?,
    age_gate_level?,
    monetization_mode?,
    language_code?,
    primary_country_code?,
    category_tags?: [],
    published_at?,
    created_at,
    updated_at
  },
  meta?: {
    request_id?,
    resolved_projection_version?,
    derivation_flag?
  }
}

list_response_shape:
{
  success: true,
  data: {
    items: [
      {
        clip_asset_id,
        principal_id,
        title,
        thumbnail_asset_ref?,
        duration_seconds?,
        visibility_state,
        publication_state,
        source_archive_asset_id?,
        published_at?,
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

filter_allowlist:
- principal_id
- source_archive_asset_id
- visibility_state
- publication_state
- review_state
- governance_state
- monetization_mode
- age_gate_level
- primary_country_code
- language_code

sort_allowlist:
- updated_at
- created_at
- published_at
- title

field_rules:
- clip_asset_id is canonical stable id
- principal_id is required
- title is required
- visibility_state is required
- publication_state is required
- clip_start_seconds and clip_end_seconds are nullable together with derivation context
- source_archive_asset_id is nullable because original may be session-bound at creation time
- clip must remain distinct from archive even if UI block family is shared

not_returned_publicly:
- raw derivation pipeline markers
- raw storage locator
- internal review notes
- internal retry markers
- support-only override reason
