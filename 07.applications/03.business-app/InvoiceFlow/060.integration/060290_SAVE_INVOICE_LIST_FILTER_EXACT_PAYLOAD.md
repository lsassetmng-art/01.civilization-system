# ============================================================
# SAVE INVOICE LIST FILTER EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice-list-filter/save

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "filter_preset": {
    "preset_name": "Overdue priority queue",
    "invoice_authority_type": null,
    "invoice_status_code": "OVERDUE",
    "collection_status_code": "FOLLOW_UP_REQUIRED",
    "priority_collection_flag": true,
    "overdue_only": true,
    "sort_field": "overdue_days",
    "sort_direction": "desc"
  }
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "filter_preset_id": "uuid",
    "preset_name": "Overdue priority queue",
    "saved_at": "2026-04-12T12:25:00+09:00"
  }
}
