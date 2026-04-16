# ============================================================
# COLLECTION ACTION PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_name: collection_action

columns:
- collection_action_id: uuid pk
- company_id: uuid not null
- invoice_case_id: uuid fk not null
- action_type_code: varchar(32) not null
- action_date: date not null
- action_owner_user_id: uuid not null
- action_note: text null
- promised_payment_date: date null
- next_action_date: date null
- contact_method_code: varchar(32) null
- response_summary: text null
- escalation_required_flag: boolean not null default false
- created_at: timestamptz not null
- updated_at: timestamptz not null

constraints:
- action_date is required
- next_action_date may be null
- promised_payment_date may be null
- escalation_required_flag default false

indexes:
- ix_collection_action_company_invoice:
  - company_id
  - invoice_case_id
- ix_collection_action_company_action_date:
  - company_id
  - action_date
- ix_collection_action_company_next_action_date:
  - company_id
  - next_action_date
