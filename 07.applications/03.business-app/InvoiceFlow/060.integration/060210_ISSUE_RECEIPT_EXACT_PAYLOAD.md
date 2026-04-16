# ============================================================
# ISSUE RECEIPT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/receipt/issue

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "payment_confirmation_id": "uuid",
  "receipt": {
    "language_code": "ja-JP",
    "currency_code": "JPY",
    "issue_type_code": "STANDARD"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "receipt_issue_id": "uuid",
    "receipt_number": "RCT-20260412-0001",
    "receipt_status_code": "ISSUED",
    "pdf_document_id": "uuid",
    "issued_at": "2026-04-12T11:45:00+09:00"
  }
}

error_examples:
- RECEIPT_ISSUANCE_NOT_ALLOWED
- NOT_FOUND
- FORBIDDEN
