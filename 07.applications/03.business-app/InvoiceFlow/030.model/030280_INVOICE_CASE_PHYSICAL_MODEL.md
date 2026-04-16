# ============================================================
# INVOICE CASE PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: invoice_case

columns:
- invoice_case_id: uuid pk
- company_id: uuid not null
- customer_id: uuid not null
- invoice_origin_type: varchar(32) not null
- invoice_authority_type: varchar(32) not null
- erp_link_eligibility: varchar(32) not null
- invoice_number_local: varchar(128) null
- erp_invoice_number: varchar(128) null
- title: varchar(255) not null
- language_code: varchar(32) not null
- currency_code: varchar(16) not null
- exchange_rate_snapshot: numeric(18,6) null
- invoice_date: date not null
- payment_due_date: date not null
- subtotal_amount: numeric(18,2) not null
- tax_amount: numeric(18,2) not null
- total_amount: numeric(18,2) not null
- invoice_status_code: varchar(32) not null
- collection_status_code: varchar(32) not null
- priority_collection_flag: boolean not null default false
- overdue_days: integer not null default 0
- collection_due_date: date null
- customer_outstanding_balance_snapshot: numeric(18,2) null
- pdf_document_id: uuid null
- created_by: uuid not null
- updated_by: uuid not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- check invoice_origin_type in (FRONT_LOCAL, ERP_MASTER)
- check invoice_authority_type in (FRONT_LOCAL, ERP_MASTER)
- check subtotal_amount >= 0
- check tax_amount >= 0
- check total_amount >= 0
- check payment_due_date >= invoice_date
- check overdue_days >= 0
- FRONT_LOCAL rows must not require erp_invoice_number
- ERP_MASTER rows should allow erp_invoice_number

unique_keys:
- uq_invoice_case_company_invoice_number_local:
  - company_id
  - invoice_number_local

indexes:
- ix_invoice_case_company_status:
  - company_id
  - invoice_status_code
- ix_invoice_case_company_collection_status:
  - company_id
  - collection_status_code
- ix_invoice_case_company_due_date:
  - company_id
  - payment_due_date
- ix_invoice_case_company_customer:
  - company_id
  - customer_id
- ix_invoice_case_company_priority_flag:
  - company_id
  - priority_collection_flag
