# ============================================================
# PAYMENT CONFIRMATION MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

fields:
- payment_confirmation_id
- invoice_case_id
- confirmation_source_type
- confirmation_status_code
- confirmed_payment_date
- confirmed_amount
- fee_amount
- difference_amount
- bank_account_id
- bank_transaction_id
- manual_receipt_note
- evidence_file_id
- confirmed_by
- confirmed_at
