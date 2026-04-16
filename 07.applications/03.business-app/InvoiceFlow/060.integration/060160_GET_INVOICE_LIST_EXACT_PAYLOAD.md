# ============================================================
# GET INVOICE LIST EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/invoice/list

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "filters": {
    "invoice_authority_type": "FRONT_LOCAL | ERP_MASTER | null",
    "invoice_status_code": "DRAFT | PDF_READY | SENT_REQUESTED | SENT | PAYMENT_WAITING | PARTIALLY_PAID | PAID | OVERDUE | CLOSED | CANCELLED | null",
    "collection_status_code": "NONE | MONITORING | FOLLOW_UP_REQUIRED | COLLECTION_SCHEDULED | CONTACTED | PROMISED | ESCALATED | RESOLVED | null",
    "customer_id": "uuid | null",
    "priority_collection_flag": "true | false | null",
    "overdue_only": "true | false",
    "keyword": "string"
  },
  "sort": {
    "field": "invoice_date | payment_due_date | overdue_days | total_amount | updated_at",
    "direction": "asc | desc"
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
        "invoice_case_id": "uuid",
        "invoice_number_local": "string | null",
        "erp_invoice_number": "string | null",
        "invoice_authority_type": "FRONT_LOCAL | ERP_MASTER",
        "erp_link_eligibility": "ERP_NOT_APPLICABLE | ERP_MASTER_REFERENCE | ERP_PAYMENT_SYNC_READY | ERP_PAYMENT_SYNCED | ERP_SYNC_FAILED",
        "customer_id": "uuid",
        "customer_name": "string",
        "currency_code": "JPY",
        "total_amount": 120000,
        "confirmed_amount_total": 20000,
        "outstanding_amount": 100000,
        "invoice_status_code": "PARTIALLY_PAID",
        "collection_status_code": "FOLLOW_UP_REQUIRED",
        "priority_collection_flag": true,
        "overdue_days": 14,
        "payment_due_date": "2026-04-30",
        "updated_at": "2026-04-12T11:30:00+09:00"
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  }
}
