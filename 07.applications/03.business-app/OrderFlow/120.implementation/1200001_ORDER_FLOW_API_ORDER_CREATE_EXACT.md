# ============================================================
# ORDER FLOW API ORDER CREATE EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request / response payloads for order creation and order detail retrieval.

# ============================================================
# 1. create order from estimate
# ============================================================

endpoint_name:
- create_order_from_estimate

request_payload:
~~~json
{
  "company_id": "uuid",
  "source_type": "from_estimate",
  "source_estimate": {
    "estimate_id": "uuid",
    "estimate_number": "EST-2026-000123",
    "handoff_type": "deeplink_copy"
  },
  "customer_snapshot": {
    "customer_id": "uuid-or-null",
    "customer_name_snapshot": "ABC Trading Co., Ltd.",
    "customer_display_name_snapshot": "ABC Trading",
    "billing_name_snapshot": "ABC Trading Co., Ltd.",
    "shipping_name_snapshot": "ABC Trading Sendai Warehouse",
    "contact_person_snapshot": "Taro Yamada",
    "contact_email_snapshot": "taro@example.com",
    "contact_phone_snapshot": "+81-90-0000-0000",
    "billing_address_snapshot": "billing address text",
    "shipping_address_snapshot": "shipping address text",
    "locale_snapshot": "ja-JP"
  },
  "order_header": {
    "order_date": "2026-04-12",
    "currency_code": "JPY",
    "requested_delivery_date": "2026-04-20",
    "internal_note": "priority customer"
  },
  "order_lines": [
    {
      "source_estimate_line_id": "uuid-or-null",
      "item_ref_or_local_code": "ITEM-001",
      "item_name_snapshot": "Product A",
      "ordered_quantity": 10,
      "unit_of_measure": "pcs",
      "unit_price_amount": "1200.00",
      "line_subtotal_amount": "12000.00",
      "customer_line_note": "morning delivery preferred"
    }
  ],
  "money_summary": {
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000045",
    "order_state": "draft",
    "source_type": "from_estimate",
    "source_estimate_exists": true,
    "currency_code": "JPY",
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00",
    "created_at": "2026-04-12T11:30:00+09:00"
  },
  "source_estimate_link": {
    "source_estimate_id": "uuid",
    "source_estimate_number_snapshot": "EST-2026-000123",
    "handoff_type": "deeplink_copy"
  },
  "sync_state": {
    "sync_state_type": "local_only",
    "target_system_name": null
  }
}
~~~

# ============================================================
# 2. create standalone order
# ============================================================

endpoint_name:
- create_standalone_order

request_payload:
~~~json
{
  "company_id": "uuid",
  "source_type": "standalone",
  "customer_snapshot": {
    "customer_id": "uuid-or-null",
    "customer_name_snapshot": "XYZ Co., Ltd.",
    "customer_display_name_snapshot": "XYZ",
    "billing_name_snapshot": "XYZ Co., Ltd.",
    "shipping_name_snapshot": "XYZ Tokyo Office",
    "contact_person_snapshot": "Hanako Sato",
    "contact_email_snapshot": "hanako@example.com",
    "contact_phone_snapshot": "+81-80-0000-0000",
    "billing_address_snapshot": "billing address text",
    "shipping_address_snapshot": "shipping address text",
    "locale_snapshot": "en-US"
  },
  "order_header": {
    "order_date": "2026-04-12",
    "currency_code": "USD",
    "requested_delivery_date": "2026-04-25",
    "internal_note": "standalone order"
  },
  "order_lines": [
    {
      "item_ref_or_local_code": "ITEM-100",
      "item_name_snapshot": "Service Plan B",
      "ordered_quantity": 2,
      "unit_of_measure": "license",
      "unit_price_amount": "500.00",
      "line_subtotal_amount": "1000.00",
      "customer_line_note": ""
    }
  ],
  "money_summary": {
    "subtotal_amount": "1000.00",
    "tax_amount": "0.00",
    "total_amount": "1000.00"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000046",
    "order_state": "draft",
    "source_type": "standalone",
    "source_estimate_exists": false,
    "currency_code": "USD",
    "subtotal_amount": "1000.00",
    "tax_amount": "0.00",
    "total_amount": "1000.00",
    "created_at": "2026-04-12T11:35:00+09:00"
  },
  "sync_state": {
    "sync_state_type": "local_only",
    "target_system_name": null
  }
}
~~~

# ============================================================
# 3. get order detail
# ============================================================

endpoint_name:
- get_order_detail

request_payload:
~~~json
{
  "company_id": "uuid",
  "order_id": "uuid"
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "order": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000045",
    "order_state": "inventory_checked",
    "source_type": "from_estimate",
    "order_date": "2026-04-12",
    "requested_delivery_date": "2026-04-20",
    "currency_code": "JPY",
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00"
  },
  "customer_snapshot": {
    "customer_name_snapshot": "ABC Trading Co., Ltd.",
    "contact_person_snapshot": "Taro Yamada",
    "contact_email_snapshot": "taro@example.com",
    "shipping_address_snapshot": "shipping address text",
    "locale_snapshot": "ja-JP"
  },
  "source_estimate_link": {
    "source_estimate_id": "uuid",
    "source_estimate_number_snapshot": "EST-2026-000123",
    "handoff_type": "deeplink_copy"
  },
  "order_lines": [
    {
      "order_line_id": "uuid",
      "line_no": 1,
      "item_ref_or_local_code": "ITEM-001",
      "item_name_snapshot": "Product A",
      "ordered_quantity": 10,
      "unit_of_measure": "pcs",
      "unit_price_amount": "1200.00",
      "line_subtotal_amount": "12000.00",
      "line_state": "open"
    }
  ],
  "latest_execution_summary": {
    "inventory_status": "available",
    "customer_proposal_status": "not_proposed",
    "shipment_status": "not_requested",
    "delivery_status": "not_confirmed"
  }
}
~~~
