# ============================================================
# REISSUE RECEIPT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/receipt/reissue

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "receipt_issue_id": "uuid",
  "reissue": {
    "reason_code": "CORRECTION | LOST_COPY | CUSTOMER_REQUEST | OTHER",
    "reason_text": "Customer requested another copy",
    "language_code": "ja-JP",
    "currency_code": "JPY"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "new_receipt_issue_id": "uuid",
    "new_receipt_number": "RCT-20260412-0002",
    "receipt_status_code": "REISSUED",
    "prior_receipt_issue_id": "uuid",
    "pdf_document_id": "uuid",
    "issued_at": "2026-04-12T12:15:00+09:00"
  }
}

error_examples:
- RECEIPT_ISSUANCE_NOT_ALLOWED
- FORBIDDEN
- NOT_FOUND
