# ============================================================
# DB PHYSICAL OVERVIEW MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines physical-table level guidance for InvoiceFlow persistence.

physical_design_principles:
- all tables are company-scoped unless explicitly global
- uuid primary key is standard
- created_at and updated_at are standard where mutable state exists
- status code columns are explicit strings, not implicit booleans
- authority boundary must be stored explicitly
- monetary columns must always pair with currency_code where needed
- auditability is mandatory for state-changing records
- soft-delete is not assumed by default unless explicitly added later

recommended_tables:
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

key_notation:
- pk = primary key
- fk = foreign key
- uq = unique key
- ix = non-unique index

cross_table_rules:
- FRONT_LOCAL and ERP_MASTER meaning must be stored on invoice_case
- receipt_issue must link to payment_confirmation
- collection_action must link to invoice_case
- ERP reflection tables must not imply invoice-master creation for FRONT_LOCAL
