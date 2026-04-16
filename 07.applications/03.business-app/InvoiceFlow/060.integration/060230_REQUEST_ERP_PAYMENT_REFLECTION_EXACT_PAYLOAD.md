# ============================================================
# REQUEST ERP PAYMENT REFLECTION EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

endpoint:
- method: POST
- path: /invoiceflow/api/erp/payment-reflection-request

request_json:
{
  "company_id": "uuid",
  "actor_user_id": "uuid",
  "invoice_case_id": "uuid",
  "payment_confirmation_id": "uuid",
  "reflection_request": {
    "reflection_type_code": "PAYMENT_RESULT",
    "request_note": "Reflect confirmed payment to ERP master invoice"
  }
}

response_json_success:
{
  "success": true,
  "error_code": null,
  "error_message": null,
  "data": {
    "erp_reflection_request_id": "uuid",
    "reflection_status": "ERP_PAYMENT_SYNC_READY",
    "invoice_authority_type": "ERP_MASTER",
    "erp_invoice_number": "ERP-INV-2026-00491"
  }
}

response_json_failure:
{
  "success": false,
  "error_code": "ERP_REFLECTION_NOT_ALLOWED",
  "error_message": "Front-local invoice cannot be reflected as ERP master payment result.",
  "data": {
    "invoice_case_id": "uuid",
    "invoice_authority_type": "FRONT_LOCAL",
    "erp_link_eligibility": "ERP_NOT_APPLICABLE"
  }
}

rules:
- FRONT_LOCAL invoice must fail this request for ERP-master reflection path
- shared BusinessOS boundary is mandatory
