# ============================================================
# GET INVOICE DETAIL EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/detail

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid"
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_case": {
      "invoice_case_id": "uuid",
      "invoice_number_local": "INV-LOCAL-0001",
      "erp_invoice_number": null,
      "invoice_origin_type": "FRONT_LOCAL",
      "invoice_authority_type": "FRONT_LOCAL",
      "erp_link_eligibility": "ERP_NOT_APPLICABLE",
      "title": "April maintenance fee",
      "customer_id": "uuid",
      "customer_name": "Sample Trading",
      "language_code": "ja-JP",
      "currency_code": "JPY",
      "exchange_rate_snapshot": null,
      "invoice_date": "2026-04-10",
      "payment_due_date": "2026-04-30",
      "subtotal_amount": 100000,
      "tax_amount": 10000,
      "total_amount": 110000,
      "invoice_status_code": "PAYMENT_WAITING",
      "collection_status_code": "MONITORING",
      "priority_collection_flag": false,
      "overdue_days": 0,
      "collection_due_date": null,
      "pdf_document_id": "uuid | null"
    },
    "invoice_lines": [
      {
        "invoice_line_id": "uuid",
        "line_no": 1,
        "item_name": "Maintenance",
        "quantity": 1,
        "unit_price": 100000,
        "tax_code": "STANDARD",
        "line_amount": 100000,
        "remarks": null
      }
    ],
    "payment_summary": {
      "confirmed_amount_total": 0,
      "outstanding_amount": 110000,
      "latest_confirmation_status_code": "UNCONFIRMED"
    },
    "receipt_items": [],
    "reflection_summary": {
      "reflection_status": "ERP_NOT_APPLICABLE",
      "last_reflection_at": null,
      "last_reflection_error": null
    }
  }
}
