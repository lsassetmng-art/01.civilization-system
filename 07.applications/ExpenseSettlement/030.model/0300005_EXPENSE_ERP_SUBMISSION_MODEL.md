# ============================================================
# EXPENSE ERP SUBMISSION MODEL
# ============================================================

status: canonical
layer: model
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

entities:
- expense_erp_submission_request
- expense_erp_submission_result

request_fields:
- request_id
- expense_report_id
- idempotency_key
- requested_by
- requested_at
- request_payload_hash

result_fields:
- result_id
- request_id
- erp_document_ref
- status
- error_code
- error_message
- received_at
