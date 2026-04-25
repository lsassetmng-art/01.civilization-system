# ============================================================
# K4 NOTIFICATION EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: notification
prepared_by: Zero
owner: Boss

endpoints:
- list_notifications
- update_notification_read_state
- get_platform_event_detail
- list_review_alerts

canonical_objects:
- notification_record
- platform_event_record
- notification_delivery_state
- review_alert_projection

notification_list_shape:
{
  success: true,
  data: {
    items: [
      {
        notification_record_id,
        notification_type,
        title,
        preview_text?,
        target_ref?: {
          target_type?,
          target_id?
        },
        read_flag,
        created_at,
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

notification_read_update_request_shape:
{
  notification_record_id,
  read_flag,
  idempotency_key
}

platform_event_detail_shape:
{
  success: true,
  data: {
    platform_event_record_id,
    event_type,
    title?,
    detail_body?,
    target_ref?: {
      target_type?,
      target_id?
    },
    created_at,
    updated_at
  },
  meta?: {
    request_id?
  }
}

review_alert_list_shape:
{
  success: true,
  data: {
    items: [
      {
        review_alert_record_id,
        alert_type,
        title?,
        preview_text?,
        target_ref?: {
          target_type?,
          target_id?
        },
        read_flag?,
        due_at?,
        created_at,
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

field_rules:
- notification list is recipient-scoped
- read_flag update is recipient-side mutation only
- platform event detail is projection-safe, not raw delivery-log detail
- review alert remains separate from general notification list semantics

not_returned_publicly:
- raw delivery attempt logs
- retry counters
- broker message identifiers
- internal fanout routing state
