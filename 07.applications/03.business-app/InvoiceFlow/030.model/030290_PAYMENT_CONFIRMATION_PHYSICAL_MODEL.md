# ============================================================
# PAYMENT CONFIRMATION PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: payment_confirmation

columns:
- payment_confirmation_id: uuid pk
- company_id: uuid not null
- invoice_case_id: uuid fk not null
- confirmation_source_type: varchar(32) not null
- confirmation_status_code: varchar(32) not null
- confirmed_payment_date: date not null
- confirmed_amount: numeric(18,2) not null
- fee_amount: numeric(18,2) not null default 0
- difference_amount: numeric(18,2) not null default 0
- bank_account_id: uuid null
- bank_transaction_id: uuid null
- manual_receipt_note: text null
- evidence_file_id: uuid null
- confirmed_by: uuid not null
- confirmed_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check confirmation_source_type in (BANK_LINKED, MANUAL)
- check confirmed_amount >= 0
- check fee_amount >= 0
- BANK_LINKED should reference bank_transaction_id
- MANUAL may omit bank_transaction_id

indexes:
- ix_payment_confirmation_company_invoice:
  - company_id
  - invoice_case_id
- ix_payment_confirmation_company_status:
  - company_id
  - confirmation_status_code
- ix_payment_confirmation_company_date:
  - company_id
  - confirmed_payment_date
- ix_payment_confirmation_company_bank_tx:
  - company_id
  - bank_transaction_id
