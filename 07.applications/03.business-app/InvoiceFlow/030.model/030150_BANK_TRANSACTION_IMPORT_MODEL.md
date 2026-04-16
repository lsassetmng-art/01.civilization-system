# ============================================================
# BANK TRANSACTION IMPORT MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- bank_transaction_import_id
- bank_account_id
- transaction_date
- transaction_name
- transaction_amount
- raw_reference
- imported_at
- match_status_code
