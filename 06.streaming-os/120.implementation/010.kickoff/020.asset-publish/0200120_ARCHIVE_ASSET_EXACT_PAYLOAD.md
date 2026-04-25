# ============================================================
# K2 ARCHIVE ASSET EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: archive-asset
prepared_by: Zero
owner: Boss

endpoints:
- get_archive_asset_detail
- list_archive_assets

canonical_object:
archive_asset

detail_response_shape:
{
  success: true,
  data: {
    archive_asset_id,
    principal_id,
    source_session_id?,
    title,
    description?,
    thumbnail_asset_ref?,
    duration_seconds?,
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
    playable_flag?
  }
}

list_response_shape:
{
  success: true,
  data: {
    items: [
      {
        archive_asset_id,
        principal_id,
        title,
        thumbnail_asset_ref?,
        duration_seconds?,
        visibility_state,
        publication_state,
        age_gate_level?,
        monetization_mode?,
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
- archive_asset_id is canonical stable id
- principal_id is required
- title is required
- visibility_state is required
- publication_state is required
- thumbnail_asset_ref is nullable
- source_session_id is nullable
- review_state and governance_state are projection-safe policy-related states
- category_tags are optional projection data only

not_returned_publicly:
- raw storage locator
- internal transcoding markers
- internal review notes
- internal runtime retry markers
- support-only override reason
