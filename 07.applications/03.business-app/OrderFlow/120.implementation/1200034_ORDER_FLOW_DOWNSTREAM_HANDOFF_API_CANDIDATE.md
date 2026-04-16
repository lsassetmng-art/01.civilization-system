# ============================================================
# ORDER FLOW DOWNSTREAM HANDOFF API CANDIDATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines future candidate API payload for downstream invoice handoff.

endpoint_name:
- create_downstream_invoice_handoff

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "handoff_target": "invoice_flow",
  "handoff_payload": {
    "order_number": "ORD-2026-000045",
    "currency_code": "JPY",
    "total_amount": "13200.00",
    "closure_reason_type": "delivered_completed",
    "customer_snapshot_summary": {
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "billing_name_snapshot": "ABC Trading Co., Ltd."
    },
    "delivered_scope_summary": {
      "fully_delivered": true,
      "remaining_quantity_exists": false
    }
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "handoff_result": {
    "handoff_target": "invoice_flow",
    "handoff_status": "created",
    "downstream_reference_id": "uuid"
  }
}
~~~

notes:
  - candidate only
  - downstream system exact is intentionally deferred

