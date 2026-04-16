# ============================================================
# ORDER FLOW API SHIPMENT AND DELIVERY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payloads for shipment request,
shipment execution, delivery confirmation, and order closure.

# ============================================================
# 1. create shipment request
# ============================================================

endpoint_name:
- create_shipment_request

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "shipment_request": {
    "request_scope_type": "selected_lines",
    "requested_ship_date": "2026-04-17",
    "warehouse_or_execution_target_ref": "SENDAI-WH-01",
    "shipment_instruction_note": "keep upright"
  },
  "request_lines": [
    {
      "order_line_id": "uuid-line-1",
      "requested_quantity": 6,
      "unit_of_measure": "pcs",
      "partial_reason": "split shipment requested"
    }
  ]
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "shipment_requested",
  "shipment_request_record": {
    "shipment_request_record_id": "uuid",
    "shipment_request_number": "SHP-REQ-2026-000021",
    "shipment_status": "requested",
    "request_scope_type": "selected_lines",
    "requested_at": "2026-04-12T12:00:00+09:00"
  },
  "remaining_scope_summary": {
    "remaining_order_lines": 1,
    "remaining_quantity_exists": true
  }
}
~~~

# ============================================================
# 2. record shipment request result
# ============================================================

endpoint_name:
- record_shipment_request_result

request_payload:
~~~json
{
  "company_id": "uuid",
  "shipment_request_record_id": "uuid",
  "result": {
    "result_type": "accepted",
    "result_note": "warehouse accepted request"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "shipment_request_result": {
    "shipment_request_result_id": "uuid",
    "result_type": "accepted",
    "result_recorded_at": "2026-04-12T12:05:00+09:00"
  },
  "shipment_status": "accepted"
}
~~~

# ============================================================
# 3. record shipment execution
# ============================================================

endpoint_name:
- record_shipment_execution

request_payload:
~~~json
{
  "company_id": "uuid",
  "shipment_request_record_id": "uuid",
  "shipment_execution": {
    "shipment_execution_date": "2026-04-17",
    "shipment_execution_scope_type": "partial_request",
    "carrier_name_snapshot": "Yamato",
    "tracking_number_snapshot": "TRACK-1234567890",
    "shipment_note": "6 pcs shipped"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "shipped",
  "shipment_execution_record": {
    "shipment_execution_record_id": "uuid",
    "shipment_execution_date": "2026-04-17",
    "shipment_execution_scope_type": "partial_request",
    "recorded_at": "2026-04-17T14:00:00+09:00"
  },
  "shipment_status": "partially_shipped"
}
~~~

# ============================================================
# 4. record delivery confirmation
# ============================================================

endpoint_name:
- record_delivery_confirmation

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "delivery_confirmation": {
    "delivery_status": "partially_delivered",
    "confirmation_date": "2026-04-19",
    "customer_receipt_note": "first batch received",
    "delivery_issue_note": ""
  },
  "delivery_lines": [
    {
      "order_line_id": "uuid-line-1",
      "confirmed_delivered_quantity": 6,
      "unit_of_measure": "pcs",
      "line_delivery_note": "good condition"
    }
  ]
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "delivered",
  "delivery_confirmation_record": {
    "delivery_confirmation_record_id": "uuid",
    "delivery_status": "partially_delivered",
    "confirmation_date": "2026-04-19",
    "confirmed_at": "2026-04-19T10:00:00+09:00"
  },
  "remaining_scope_summary": {
    "remaining_quantity_exists": true,
    "remaining_delivery_required": true
  }
}
~~~

# ============================================================
# 5. close order
# ============================================================

endpoint_name:
- close_order

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "closure": {
    "closure_reason_type": "business_completed",
    "closure_note": "remaining quantity canceled by mutual agreement"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_state": "closed",
    "closed_at": "2026-04-20T16:00:00+09:00",
    "closed_by": "uuid-actor"
  }
}
~~~
