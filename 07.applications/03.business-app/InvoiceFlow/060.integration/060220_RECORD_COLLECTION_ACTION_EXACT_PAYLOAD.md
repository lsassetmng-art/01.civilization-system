# ============================================================
# RECORD COLLECTION ACTION EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/collection/action-record

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "collection_action": {
    "action_type_code": "CALL | EMAIL | VISIT | ESCALATION | NOTE",
    "action_date": "2026-04-12",
    "action_note": "Called customer and confirmed payment next week",
    "promised_payment_date": "2026-04-19 | null",
    "next_action_date": "2026-04-20 | null",
    "contact_method_code": "PHONE | EMAIL | VISIT | OTHER",
    "response_summary": "Customer promised payment on 2026-04-19",
    "escalation_required_flag": false
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "collection_action_id": "uuid",
    "collection_status_code": "PROMISED",
    "priority_collection_flag": true,
    "next_action_date": "2026-04-20",
    "promised_payment_date": "2026-04-19"
  }
}
