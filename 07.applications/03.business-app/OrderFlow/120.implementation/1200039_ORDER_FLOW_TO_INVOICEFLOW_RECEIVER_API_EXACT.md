# ============================================================
# ORDER FLOW TO INVOICEFLOW RECEIVER API EXACT
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines exact candidate payload contract between OrderFlow and InvoiceFlow receiver.

endpoint_name:
- create_invoice_from_order_handoff

request_payload:
~~~json
{
  "company_id": "uuid",
  "source_system": "order_flow",
  "handoff_context": {
    "order_id": "uuid",
    "order_number": "ORD-2026-000045",
    "closure_reason_type": "delivered_completed",
    "handoff_timestamp": "2026-04-20T16:05:00+09:00"
  },
  "customer_billing_summary": {
    "customer_name_snapshot": "ABC Trading Co., Ltd.",
    "billing_name_snapshot": "ABC Trading Co., Ltd.",
    "contact_person_snapshot": "Taro Yamada",
    "contact_email_snapshot": "taro@example.com",
    "billing_address_snapshot": "billing address text",
    "locale_snapshot": "ja-JP"
  },
  "money_summary": {
    "currency_code": "JPY",
    "subtotal_amount": "12000.00",
    "tax_amount": "1200.00",
    "total_amount": "13200.00"
  },
  "delivered_scope_summary": {
    "fully_delivered": true,
    "remaining_quantity_exists": false,
    "delivery_confirmation_count": 1
  },
  "source_trace": {
    "source_estimate_exists": true,
    "source_estimate_id": "uuid-or-null",
    "source_estimate_number_snapshot": "EST-2026-000123"
  },
  "notes": {
    "billing_hint_note": "bill after final delivery confirmation"
  }
}
~~~

response_payload:
~~~json
{
  "ok": true,
  "receiver_result": {
    "receiver_system": "invoice_flow",
    "invoice_creation_status": "created",
    "invoice_id": "uuid",
    "invoice_number": "INV-2026-000010"
  }
}
~~~

design_rules:
  - receiver payload is summary-first, not full order replay
  - invoice receiver may revalidate readiness
  - sender traceability must remain visible

