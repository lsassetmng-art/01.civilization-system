# ============================================================
# GENERATE INVOICE PDF EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/pdf-generate

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "document": {
    "language_code": "ja-JP",
    "currency_code": "JPY",
    "template_code": "STANDARD_INVOICE"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_case_id": "uuid",
    "invoice_status_code": "PDF_READY",
    "pdf_document_id": "uuid",
    "generated_at": "2026-04-12T12:10:00+09:00"
  }
}

error_examples:
- VALIDATION_ERROR
- FORBIDDEN
- NOT_FOUND
