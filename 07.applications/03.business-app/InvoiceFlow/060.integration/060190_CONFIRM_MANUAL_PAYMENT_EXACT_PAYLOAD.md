# ============================================================
# CONFIRM MANUAL PAYMENT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/payment/manual-confirm

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "confirmation": {
    "confirmed_payment_date": "2026-04-12",
    "confirmed_amount": 50000,
    "fee_amount": 0,
    "manual_receipt_note": "Cash hand-delivered at office",
    "evidence_file_id": "uuid | null"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "payment_confirmation_id": "uuid",
    "confirmation_source_type": "MANUAL",
    "confirmation_status_code": "PARTIAL_CONFIRMED",
    "confirmed_amount": 50000,
    "fee_amount": 0,
    "difference_amount": 60000,
    "invoice_status_code": "PARTIALLY_PAID",
    "collection_status_code": "MONITORING",
    "receipt_issue_ready": true
  }
}

error_examples:
- PAYMENT_CONFIRMATION_NOT_ALLOWED
- VALIDATION_ERROR
- FORBIDDEN
