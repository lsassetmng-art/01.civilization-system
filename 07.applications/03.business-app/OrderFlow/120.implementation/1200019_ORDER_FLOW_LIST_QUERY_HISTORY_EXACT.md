# ============================================================
# ORDER FLOW LIST QUERY HISTORY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact query request / response for order history and timeline surfaces.

# ============================================================
# 1. endpoint
# ============================================================

endpoint_name:
- list_order_history_entries

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "page": 1,
  "page_size": 50,
  "filters": {
    "history_entry_types": [
      "order_created",
      "inventory_checked",
      "customer_proposed",
      "shipment_requested",
      "delivery_confirmed",
      "order_closed"
    ],
    "occurred_from": "2026-04-01T00:00:00+09:00",
    "occurred_to": "2026-04-30T23:59:59+09:00"
  },
  "sort": {
    "sort_by": "occurred_at",
    "sort_direction": "desc"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "page": 1,
  "page_size": 50,
  "total_count": 12,
  "items": [
    {
      "order_history_entry_id": "uuid",
      "history_entry_type": "customer_proposed",
      "occurred_at": "2026-04-12T11:50:00+09:00",
      "actor_display_name": "Zero Operator",
      "history_label": "Customer proposal recorded",
      "history_detail_text": "Proposed delivery window 2026-04-19 to 2026-04-21",
      "related_record_type": "customer_delivery_proposal_record",
      "related_record_id": "uuid"
    }
  ]
}
~~~

# ============================================================
# 2. ui use fields
# ============================================================

ui_use_fields:
  - history_entry_type
  - occurred_at
  - actor_display_name
  - history_label
  - history_detail_text
  - related_record_type
  - related_record_id

# ============================================================
# 3. design rules
# ============================================================

rules:
  - order history is chronological and readable
  - history query is order-scoped by default
  - timeline display favors operator comprehension over raw audit density
  - pagination still applies for long-lived orders

