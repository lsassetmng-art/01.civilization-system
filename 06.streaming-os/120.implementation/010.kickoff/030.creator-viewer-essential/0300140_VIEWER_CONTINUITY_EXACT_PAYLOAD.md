# ============================================================
# K3 VIEWER CONTINUITY EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: viewer-continuity
prepared_by: Zero
owner: Boss

endpoints:
- upsert_subscription_follow_state
- list_viewer_history
- upsert_playlist_record
- get_playlist_detail
- mutate_watch_queue

canonical_objects:
- subscription_follow_state
- viewer_history_projection
- playlist_record
- playlist_detail_projection
- watch_queue_state

follow_upsert_request_shape:
{
  target_principal_id,
  follow_action,
  idempotency_key
}

history_list_shape:
{
  success: true,
  data: {
    items: [
      {
        history_item_id,
        item_type,
        item_id,
        title,
        thumbnail_asset_ref?,
        principal_id?,
        channel_id?,
        watched_at,
        progress_seconds?,
        completed_flag?
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

playlist_upsert_request_shape:
{
  playlist_id?,
  playlist_name,
  visibility_state,
  description?,
  item_refs?: [
    {
      item_type,
      item_id
    }
  ],
  idempotency_key
}

playlist_detail_shape:
{
  success: true,
  data: {
    playlist_id,
    playlist_name,
    visibility_state,
    description?,
    owner_principal_id,
    items: [
      {
        playlist_item_id,
        item_type,
        item_id,
        title?,
        thumbnail_asset_ref?,
        order_index
      }
    ],
    created_at,
    updated_at
  },
  meta?: {
    request_id?
  }
}

watch_queue_mutation_request_shape:
{
  queue_action,
  item_ref?: {
    item_type,
    item_id
  },
  reorder_refs?: [
    {
      item_type,
      item_id,
      target_order_index
    }
  ],
  idempotency_key
}

watch_queue_mutation_response_shape:
{
  success: true,
  data: {
    canonical_id,
    canonical_type,
    resulting_state?,
    updated_at_or_created_at?
  }
}

field_rules:
- follow_action is required
- playlist_name is required when creating or renaming
- visibility_state is required for playlist
- queue_action is required
- viewer history is read-oriented projection
- watch queue mutation does not expose runtime repair internals

not_returned_publicly:
- raw private follow-eligibility markers
- raw watch-rollup markers
- internal queue repair markers
- support-only override fields
