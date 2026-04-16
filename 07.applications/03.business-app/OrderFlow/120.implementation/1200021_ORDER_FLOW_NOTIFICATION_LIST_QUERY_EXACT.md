# ============================================================
# ORDER FLOW NOTIFICATION LIST QUERY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact list query request / response for notification and reminder surfaces.

endpoint_name:
- list_notification_events

request_payload:
~~~json
{
  "company_id": "uuid",
  "page": 1,
  "page_size": 20,
  "filters": {
    "keyword": "ABC Trading",
    "notification_event_types": [
      "proposal_overdue",
      "shipment_overdue",
      "sync_failed"
    ],
    "notification_levels": ["warning", "critical"],
    "read_states": ["unread", "read"],
    "assigned_actor_ref": null,
    "only_open_related_orders": true,
    "occurred_from": "2026-04-01T00:00:00+09:00",
    "occurred_to": "2026-04-30T23:59:59+09:00"
  },
  "sort": {
    "sort_by": "event_occurred_at",
    "sort_direction": "desc"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "page": 1,
  "page_size": 20,
  "total_count": 14,
  "items": [
    {
      "notification_event_id": "uuid",
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "notification_event_type": "proposal_overdue",
      "notification_level": "warning",
      "notification_title": "Customer response overdue",
      "notification_message": "No response recorded 3 days after proposal",
      "event_occurred_at": "2026-04-15T09:00:00+09:00",
      "due_at": "2026-04-15T09:00:00+09:00",
      "read_state": "unread",
      "assigned_actor_ref": null,
      "related_record_type": "customer_delivery_proposal_record",
      "related_record_id": "uuid"
    }
  ]
}
~~~

ui_use_fields:
  - order_number
  - customer_name_snapshot
  - notification_event_type
  - notification_level
  - notification_title
  - notification_message
  - event_occurred_at
  - due_at
  - read_state

design_rules:
  - notification list is operator action discovery surface
  - critical items should sort visibly even in default desc order context
  - notification list should link back to order_detail or related action screen
  - notification visibility is separate from audit log density

