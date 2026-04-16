# ============================================================
# ORDER FLOW HOME SUMMARY QUERY EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payload for home dashboard summary query.

endpoint_name:
- get_home_dashboard_summary

request_payload:
~~~json
{
  "company_id": "uuid",
  "actor_ref": "uuid",
  "scope": {
    "include_only_open_orders": true,
    "include_assigned_only": false
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "summary": {
    "open_order_count": 128,
    "waiting_customer_response_count": 14,
    "waiting_shipment_count": 19,
    "waiting_delivery_confirmation_count": 11,
    "overdue_order_count": 7
  },
  "shipment_progress": {
    "requested_count": 8,
    "accepted_count": 5,
    "partially_shipped_count": 3,
    "shipped_count": 12
  },
  "overdue_risk": {
    "proposal_overdue_count": 4,
    "shipment_overdue_count": 2,
    "delivery_overdue_count": 3
  },
  "recent_orders": [
    {
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "customer_name_snapshot": "ABC Trading Co., Ltd.",
      "order_state": "customer_proposed",
      "updated_at": "2026-04-12T11:55:00+09:00"
    }
  ],
  "action_needed_items": [
    {
      "order_id": "uuid",
      "order_number": "ORD-2026-000045",
      "action_type": "followup_customer_response",
      "action_label": "Follow up proposal response",
      "priority_level": "warning"
    }
  ]
}
~~~

design_rules:
  - home summary is aggregate-first
  - summary must be fast to read
  - action_needed_items are more important than passive totals
  - counts should reflect operator-meaningful open work

