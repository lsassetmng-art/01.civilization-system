# ============================================================
# ORDER FLOW LIST QUERY ORDER LIST EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact list query request / response for order list surfaces.

# ============================================================
# 1. endpoint
# ============================================================

endpoint_name:
- list_orders

request_payload:
~~~json
{
  "company_id": "uuid",
  "page": 1,
  "page_size": 20,
  "filters": {
    "keyword": "ABC Trading",
    "order_states": ["confirmed", "inventory_checked", "customer_proposed"],
    "inventory_statuses": ["available", "partially_available"],
    "shipment_statuses": ["not_requested", "requested", "partially_shipped"],
    "delivery_statuses": ["not_confirmed", "partially_delivered"],
    "source_types": ["from_estimate", "standalone"],
    "currency_codes": ["JPY", "USD"],
    "date_from": "2026-04-01",
    "date_to": "2026-04-30",
    "only_open_orders": true,
    "assigned_actor_ref": null
  },
  "sort": {
    "sort_by": "updated_at",
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
  "total_count": 152,
  "items": [
    {
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "order_state": "customer_proposed",
      "source_type": "from_estimate",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "order_date": "2026-04-12",
      "requested_delivery_date": "2026-04-20",
      "currency_code": "JPY",
      "total_amount": "13200.00",
      "inventory_status": "available",
      "shipment_status": "not_requested",
      "delivery_status": "not_confirmed",
      "updated_at": "2026-04-12T11:55:00+09:00"
    }
  ]
}
~~~

# ============================================================
# 2. ui use fields
# ============================================================

ui_use_fields:
  - order_number
  - order_state
  - source_type
  - customer_name_snapshot
  - order_date
  - requested_delivery_date
  - currency_code
  - total_amount
  - inventory_status
  - shipment_status
  - delivery_status
  - updated_at

# ============================================================
# 3. design rules
# ============================================================

rules:
  - order list is operator-first, not customer-first
  - list must support open-work identification quickly
  - filterable statuses should align with exact state models
  - page and page_size are mandatory for scalable retrieval

