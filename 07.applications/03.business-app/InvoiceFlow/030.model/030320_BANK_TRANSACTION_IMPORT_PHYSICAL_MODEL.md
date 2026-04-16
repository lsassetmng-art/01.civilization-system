# ============================================================
# BANK TRANSACTION IMPORT PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: bank_transaction_import

columns:
- bank_transaction_id: uuid pk
- company_id: uuid not null
- bank_account_id: uuid not null
- transaction_date: date not null
- transaction_name: varchar(255) not null
- transaction_amount: numeric(18,2) not null
- currency_code: varchar(16) not null
- raw_reference: text null
- external_transaction_key: varchar(255) null
- match_status_code: varchar(32) not null
- candidate_invoice_case_id: uuid null
- candidate_confidence: numeric(6,5) null
- imported_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check transaction_amount >= 0
- check candidate_confidence >= 0
- check candidate_confidence <= 1

unique_keys:
- uq_bank_transaction_import_company_external_transaction_key:
  - company_id
  - external_transaction_key

indexes:
- ix_bank_transaction_import_company_account_date:
  - company_id
  - bank_account_id
  - transaction_date
- ix_bank_transaction_import_company_match_status:
  - company_id
  - match_status_code
- ix_bank_transaction_import_company_candidate_invoice:
  - company_id
  - candidate_invoice_case_id
