# ============================================================
# CREATE FRONT INVOICE EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/front-invoice/create

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice": {
    "title": "April maintenance fee",
    "customer_id": "uuid",
    "language_code": "ja-JP",
    "currency_code": "JPY",
    "invoice_date": "2026-04-10",
    "payment_due_date": "2026-04-30",
    "lines": [
      {
        "line_no": 1,
        "item_name": "Maintenance",
        "quantity": 1,
        "unit_price": 100000,
        "tax_code": "STANDARD",
        "remarks": null
      }
    ]
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_case_id": "uuid",
    "invoice_number_local": "INV-LOCAL-0001",
    "invoice_authority_type": "FRONT_LOCAL",
    "erp_link_eligibility": "ERP_NOT_APPLICABLE",
    "invoice_status_code": "DRAFT",
    "subtotal_amount": 100000,
    "tax_amount": 10000,
    "total_amount": 110000
  }
}

validation_rules:
- customer_id required
- language_code required
- currency_code required
- at least one line required
- payment_due_date must be on or after invoice_date
