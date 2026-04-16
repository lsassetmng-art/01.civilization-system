# ============================================================
# REQUEST INVOICE SEND EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/send-request

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "send_request": {
    "delivery_channel_code": "EMAIL | SHARE_LINK | MANUAL_HANDOFF",
    "recipient_name": "string",
    "recipient_address": "string",
    "message_subject": "string | null",
    "message_body": "string | null"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "invoice_delivery_request_id": "uuid",
    "invoice_case_id": "uuid",
    "delivery_status_code": "REQUESTED",
    "invoice_status_code": "SENT_REQUESTED",
    "requested_at": "2026-04-12T12:12:00+09:00"
  }
}

validation_rules:
- invoice PDF must exist before send request
- recipient_address required for EMAIL and SHARE_LINK
