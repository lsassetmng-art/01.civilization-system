# ============================================================
# ERP REFLECTION PHYSICAL MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

table_names:
- erp_reflection_request
- erp_reflection_result

erp_reflection_request_columns:
- erp_reflection_request_id: uuid pk
- company_id: uuid not null
- source_application_code: varchar(64) not null
- source_record_id: uuid not null
- invoice_case_id: uuid fk not null
- payment_confirmation_id: uuid null
- reflection_type_code: varchar(32) not null
- request_payload_version: varchar(32) not null
- request_status_code: varchar(32) not null
- requested_by: uuid not null
- requested_at: timestamptz not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

erp_reflection_result_columns:
- erp_reflection_result_id: uuid pk
- company_id: uuid not null
- erp_reflection_request_id: uuid fk not null
- result_status_code: varchar(32) not null
- external_document_no: varchar(128) null
- error_code: varchar(128) null
- error_message: text null
- applied_at: timestamptz null
- created_at: timestamptz not null

constraints:
- FRONT_LOCAL invoice must not be used for ERP-master creation semantics
- result row must belong to existing request row
- request_status_code and result_status_code must be explicit strings

indexes:
- ix_erp_reflection_request_company_invoice:
  - company_id
  - invoice_case_id
- ix_erp_reflection_request_company_status:
  - company_id
  - request_status_code
- ix_erp_reflection_result_company_request:
  - company_id
  - erp_reflection_request_id
- ix_erp_reflection_result_company_status:
  - company_id
  - result_status_code
