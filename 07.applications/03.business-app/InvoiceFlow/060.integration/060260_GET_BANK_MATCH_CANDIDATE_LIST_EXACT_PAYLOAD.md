# ============================================================
# GET BANK MATCH CANDIDATE LIST EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/payment/bank-match-candidate-list

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "filters": {
    "bank_account_id": "uuid | null",
    "match_status_code": "UNMATCHED | CANDIDATE | CONFIRMED | REJECTED | null",
    "date_from": "2026-04-01 | null",
    "date_to": "2026-04-30 | null",
    "keyword": "string"
  },
  "page": 1,
  "page_size": 50
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "items": [
      {
        "bank_transaction_id": "uuid",
        "bank_account_id": "uuid",
        "transaction_date": "2026-04-12",
        "transaction_name": "SAMPLE TRADING",
        "transaction_amount": 110000,
        "currency_code": "JPY",
        "match_status_code": "CANDIDATE",
        "candidate_invoice_case_id": "uuid | null",
        "candidate_invoice_number": "INV-LOCAL-0001 | null",
        "candidate_confidence": 0.94
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  }
}
