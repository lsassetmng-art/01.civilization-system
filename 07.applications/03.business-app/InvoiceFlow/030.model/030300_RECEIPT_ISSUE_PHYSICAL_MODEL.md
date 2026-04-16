# ============================================================
# RECEIPT ISSUE PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: receipt_issue

columns:
- receipt_issue_id: uuid pk
- company_id: uuid not null
- invoice_case_id: uuid fk not null
- payment_confirmation_id: uuid fk not null
- prior_receipt_issue_id: uuid null
- receipt_number: varchar(128) not null
- issue_type_code: varchar(32) not null
- language_code: varchar(32) not null
- currency_code: varchar(16) not null
- pdf_document_id: uuid null
- receipt_status_code: varchar(32) not null
- reissue_reason_code: varchar(32) null
- reissue_reason_text: text null
- issued_by: uuid not null
- issued_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check receipt_status_code in (NOT_ISSUED, ISSUE_READY, ISSUED, REISSUED, VOID)
- reissue rows should preserve prior_receipt_issue_id
- receipt_number must be unique within company scope

unique_keys:
- uq_receipt_issue_company_receipt_number:
  - company_id
  - receipt_number

indexes:
- ix_receipt_issue_company_invoice:
  - company_id
  - invoice_case_id
- ix_receipt_issue_company_payment_confirmation:
  - company_id
  - payment_confirmation_id
- ix_receipt_issue_company_status:
  - company_id
  - receipt_status_code
