# ============================================================
# CONFIRM BANK MATCH EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/payment/bank-match-confirm

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "bank_transaction_id": "uuid",
  "decision": {
    "action": "confirm",
    "confirmed_amount_override": null,
    "fee_amount": 0,
    "note": "Matched by operator review"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "payment_confirmation_id": "uuid",
    "confirmation_source_type": "BANK_LINKED",
    "confirmation_status_code": "BANK_MATCH_CONFIRMED",
    "bank_transaction_id": "uuid",
    "confirmed_amount": 110000,
    "difference_amount": 0,
    "invoice_status_code": "PAID",
    "collection_status_code": "RESOLVED",
    "receipt_issue_ready": true
  }
}

error_examples:
- BANK_MATCH_AMBIGUOUS
- PAYMENT_CONFIRMATION_NOT_ALLOWED
- CONFLICT
