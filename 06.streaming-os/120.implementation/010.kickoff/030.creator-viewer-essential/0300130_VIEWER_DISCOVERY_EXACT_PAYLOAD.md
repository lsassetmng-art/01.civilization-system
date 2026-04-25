# ============================================================
# K3 VIEWER DISCOVERY EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: viewer-discovery
prepared_by: Zero
owner: Boss

endpoints:
- get_viewer_home_feed
- search_streaming_content

canonical_objects:
- viewer_home_feed_projection
- viewer_search_result_projection

viewer_home_feed_shape:
{
  success: true,
  data: {
    viewer_principal_id?,
    sections: [
      {
        section_key,
        section_title,
        items: [
          {
            item_type,
            item_id,
            title,
            thumbnail_asset_ref?,
            principal_id?,
            channel_id?,
            visibility_state?,
            live_flag?,
            published_at?,
            updated_at?
          }
        ]
      }
    ]
  },
  meta?: {
    request_id?,
    feed_generated_at?,
    projection_version?
  }
}

search_request_shape:
{
  query_text,
  content_scope?,
  category_filter?: [],
  principal_filter?: [],
  language_code?,
  primary_country_code?,
  age_gate_filter?,
  limit?,
  offset?,
  cursor?
}

search_response_shape:
{
  success: true,
  data: {
    items: [
      {
        item_type,
        item_id,
        title,
        description?,
        thumbnail_asset_ref?,
        principal_id?,
        channel_id?,
        live_flag?,
        visibility_state?,
        published_at?,
        updated_at?
      }
    ]
  },
  meta?: {
    limit?,
    offset?,
    cursor?,
    total_count?,
    normalized_query?
  }
}

field_rules:
- query_text is required
- item_type is required
- item_id is required
- viewer home feed is projection-safe only
- search output may mix live / archive / clip / channel / creator results
- hidden/private/internal objects never appear in discovery projections

not_returned_publicly:
- internal ranking explanation payload
- raw recommendation features
- raw search history state
- internal policy evaluation details
