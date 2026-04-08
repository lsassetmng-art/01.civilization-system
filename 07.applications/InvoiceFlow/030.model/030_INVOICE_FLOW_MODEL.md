# ============================================================
# INVOICE FLOW MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

primary_objects:
- invoice_case
- invoice_line
- invoice_delivery_request
- payment_schedule
- payment_confirmation
- bank_transaction_import
- simple_reconciliation
- receipt_issue
- collection_action
- customer_outstanding_summary
- erp_reflection_request
- erp_reflection_result
- audit_log
