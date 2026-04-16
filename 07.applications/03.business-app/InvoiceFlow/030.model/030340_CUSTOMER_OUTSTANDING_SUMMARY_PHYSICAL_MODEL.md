# ============================================================
# CUSTOMER OUTSTANDING SUMMARY PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: customer_outstanding_summary

shape_note:
- may be implemented as table or materialized summary view
- design intent is customer-level unpaid visibility

columns:
- customer_outstanding_summary_id: uuid pk
- company_id: uuid not null
- customer_id: uuid not null
- currency_code: varchar(16) not null
- total_outstanding_amount: numeric(18,2) not null
- overdue_outstanding_amount: numeric(18,2) not null
- oldest_overdue_days: integer not null default 0
- priority_rank_code: varchar(32) not null
- updated_at: timestamptz not null

constraints:
- check total_outstanding_amount >= 0
- check overdue_outstanding_amount >= 0
- check oldest_overdue_days >= 0

unique_keys:
- uq_customer_outstanding_summary_company_customer_currency:
  - company_id
  - customer_id
  - currency_code

indexes:
- ix_customer_outstanding_summary_company_priority:
  - company_id
  - priority_rank_code
- ix_customer_outstanding_summary_company_overdue_amount:
  - company_id
  - overdue_outstanding_amount
- ix_customer_outstanding_summary_company_total_amount:
  - company_id
  - total_outstanding_amount
