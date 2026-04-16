# ============================================================
# ORDER FLOW LIST QUERY SHIPMENT BOARD EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact list query request / response for shipment status board.

# ============================================================
# 1. endpoint
# ============================================================

endpoint_name:
- list_shipment_requests

request_payload:
~~~json
{
  "company_id": "uuid",
  "page": 1,
  "page_size": 20,
  "filters": {
    "keyword": "ORD-2026-000045",
    "shipment_statuses": ["requested", "accepted", "partially_shipped"],
    "request_scope_types": ["full_order", "partial_order", "selected_lines"],
    "requested_ship_date_from": "2026-04-15",
    "requested_ship_date_to": "2026-04-30",
    "warehouse_or_execution_target_ref": "SENDAI-WH-01",
    "only_with_remaining_scope": true
  },
  "sort": {
    "sort_by": "requested_at",
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
  "total_count": 38,
  "items": [
    {
      "shipment_request_record_id": "uuid",
      "shipment_request_number": "SHP-REQ-2026-000021",
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "shipment_status": "partially_shipped",
      "request_scope_type": "selected_lines",
      "requested_ship_date": "2026-04-17",
      "warehouse_or_execution_target_ref": "SENDAI-WH-01",
      "remaining_quantity_exists": true,
      "requested_at": "2026-04-12T12:00:00+09:00"
    }
  ]
}
~~~

# ============================================================
# 2. ui use fields
# ============================================================

ui_use_fields:
  - shipment_request_number
  - order_number
  - customer_name_snapshot
  - shipment_status
  - request_scope_type
  - requested_ship_date
  - warehouse_or_execution_target_ref
  - remaining_quantity_exists
  - requested_at

# ============================================================
# 3. design rules
# ============================================================

rules:
  - shipment board is request-centric
  - remaining scope visibility is mandatory
  - shipment board must allow quick drill-in to request detail
  - request and order identity should both remain visible

