# ============================================================
# INVOICE CASE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- invoice_case_id
- company_id
- customer_id
- invoice_origin_type
- invoice_authority_type
- erp_link_eligibility
- invoice_number_local
- erp_invoice_number
- title
- language_code
- currency_code
- exchange_rate_snapshot
- subtotal_amount
- tax_amount
- total_amount
- invoice_date
- payment_due_date
- invoice_status_code
- collection_status_code
- priority_collection_flag
- overdue_days
- collection_due_date
- customer_outstanding_balance_snapshot
- pdf_document_id
- created_at
- updated_at
