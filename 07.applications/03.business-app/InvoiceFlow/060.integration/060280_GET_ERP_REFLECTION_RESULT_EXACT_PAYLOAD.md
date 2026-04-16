# ============================================================
# GET ERP REFLECTION RESULT EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/erp/reflection-result

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "erp_reflection_request_id": "uuid"
}

response_json:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "erp_reflection_request_id": "uuid",
    "invoice_case_id": "uuid",
    "invoice_authority_type": "ERP_MASTER",
    "reflection_type_code": "PAYMENT_RESULT",
    "reflection_status": "ERP_PAYMENT_SYNCED",
    "external_document_no": "ERP-AR-2026-00188",
    "applied_at": "2026-04-12T12:20:00+09:00",
    "error_code": null,
    "error_message": null
  }
}

response_json_failure_case:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "erp_reflection_request_id": "uuid",
    "invoice_case_id": "uuid",
    "invoice_authority_type": "ERP_MASTER",
    "reflection_type_code": "PAYMENT_RESULT",
    "reflection_status": "ERP_SYNC_FAILED",
    "external_document_no": null,
    "applied_at": null,
    "error_code": "ERP_TARGET_NOT_FOUND",
    "error_message": "ERP invoice target was not found."
  }
}
