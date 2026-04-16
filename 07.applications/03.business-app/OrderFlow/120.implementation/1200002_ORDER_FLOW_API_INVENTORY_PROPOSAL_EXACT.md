# ============================================================
# ORDER FLOW API INVENTORY PROPOSAL EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payloads for inventory check,
lead time calculation, delivery candidates, and customer proposal flow.

# ============================================================
# 1. record inventory check
# ============================================================

endpoint_name:
- record_inventory_check

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "inventory_check": {
    "inventory_status": "available",
    "freshness_type": "fresh",
    "inventory_source_type": "erp",
    "source_system_name": "ERP",
    "source_reference_id": "INV-CHECK-001",
    "summary_note": "stock confirmed"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_id": "uuid",
  "order_state": "inventory_checked",
  "inventory_check_record": {
    "order_inventory_check_record_id": "uuid",
    "inventory_status": "available",
    "freshness_type": "fresh",
    "inventory_source_type": "erp",
    "checked_at": "2026-04-12T11:40:00+09:00"
  }
}
~~~

# ============================================================
# 2. calculate lead time
# ============================================================

endpoint_name:
- calculate_lead_time

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "lead_time_input": {
    "lead_time_basis_type": "stock_available",
    "lead_time_note": "same-week shipment possible"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "lead_time_record": {
    "order_lead_time_record_id": "uuid",
    "lead_time_days": 3,
    "lead_time_basis_type": "stock_available",
    "calculated_at": "2026-04-12T11:42:00+09:00"
  }
}
~~~

# ============================================================
# 3. calculate delivery candidates
# ============================================================

endpoint_name:
- calculate_delivery_candidates

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "calculation_input": {
    "requested_delivery_date_hint": "2026-04-20",
    "internal_note": "prefer weekday delivery"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "delivery_date_calculated",
  "calculation_record": {
    "delivery_schedule_calculation_record_id": "uuid",
    "calculated_at": "2026-04-12T11:45:00+09:00"
  },
  "candidates": [
    {
      "delivery_schedule_candidate_id": "uuid-1",
      "candidate_type": "single_date",
      "candidate_label": "best_case",
      "candidate_start_date": "2026-04-18",
      "candidate_end_date": "2026-04-18",
      "confidence_type": "high",
      "rank_order": 1,
      "proposal_ready_flag": true
    },
    {
      "delivery_schedule_candidate_id": "uuid-2",
      "candidate_type": "date_range",
      "candidate_label": "safe_range",
      "candidate_start_date": "2026-04-19",
      "candidate_end_date": "2026-04-21",
      "confidence_type": "medium",
      "rank_order": 2,
      "proposal_ready_flag": true
    }
  ]
}
~~~

# ============================================================
# 4. create customer proposal
# ============================================================

endpoint_name:
- create_customer_delivery_proposal

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "proposal": {
    "source_candidate_id": "uuid-2",
    "proposal_date_or_start": "2026-04-19",
    "proposal_end_date": "2026-04-21",
    "proposal_note": "delivery between Sunday and Tuesday",
    "proposal_channel_type": "manual_internal_record"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "customer_proposed",
  "customer_proposal_status": "proposed",
  "proposal_record": {
    "customer_delivery_proposal_record_id": "uuid",
    "proposal_date_or_start": "2026-04-19",
    "proposal_end_date": "2026-04-21",
    "recorded_at": "2026-04-12T11:50:00+09:00"
  }
}
~~~

# ============================================================
# 5. record customer response
# ============================================================

endpoint_name:
- record_customer_delivery_response

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid",
  "response": {
    "response_type": "accepted",
    "response_date": "2026-04-12",
    "operator_note": "customer accepted by phone"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order_state": "customer_confirmed",
  "customer_proposal_status": "accepted",
  "response_record": {
    "customer_delivery_response_record_id": "uuid",
    "response_type": "accepted",
    "response_date": "2026-04-12",
    "recorded_at": "2026-04-12T11:55:00+09:00"
  }
}
~~~
