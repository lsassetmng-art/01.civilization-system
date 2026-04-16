# ============================================================
# EXPENSE PHYSICAL DATA MODEL
# ============================================================

status: canonical
layer: model
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the physical data model for ExpenseSettlement initial release,
aligned to the exact API payload contract.

model_policy:
- additive evolution only
- approval state and ERP state must remain separated
- evidence must be independently stored
- request and result for ERP publication must be separated
- multilingual support is UI/resource-driven but locale awareness may be stored where needed
- multi currency must be preserved as structured data
- iphone / android / pc / tablet share the same business data meaning

# ============================================================
# 1. TABLE OVERVIEW
# ============================================================

tables:
- expense_report
- expense_item
- expense_receipt
- expense_approval_record
- expense_finance_action_record
- expense_erp_submission_request
- expense_erp_submission_result
- expense_candidate_link
- expense_validation_snapshot
- expense_pending_operation

# ============================================================
# 2. expense_report
# ============================================================

table: expense_report

purpose:
Stores report header, major lifecycle states, and report-level business meaning.

columns:
- expense_report_id: uuid pk
- company_id: uuid not null
- applicant_user_id: uuid not null
- title: text not null
- expense_month: varchar(7) not null
- report_currency_code: varchar(3) not null
- total_amount: numeric(18,2) not null default 0
- submit_state: varchar(40) not null default 'draft'
- approval_state: varchar(40) not null default 'none'
- finance_state: varchar(40) not null default 'none'
- erp_state: varchar(40) not null default 'none'
- settlement_state: varchar(40) not null default 'none'
- current_approval_step: integer not null default 0
- receipt_missing_count: integer not null default 0
- duplicate_warning_count: integer not null default 0
- source_type: varchar(40) not null default 'manual'
- source_candidate_id: uuid null
- submit_comment: text null
- submitted_at: timestamptz null
- approved_at: timestamptz null
- finance_ready_at: timestamptz null
- erp_confirmed_at: timestamptz null
- settled_at: timestamptz null
- created_at: timestamptz not null default now()
- updated_at: timestamptz not null default now()

indexes:
- idx_expense_report_company_id
- idx_expense_report_applicant_user_id
- idx_expense_report_expense_month
- idx_expense_report_submit_state
- idx_expense_report_approval_state
- idx_expense_report_finance_state
- idx_expense_report_erp_state
- idx_expense_report_settlement_state
- idx_expense_report_created_at

notes:
- expense_month uses YYYY-MM format
- report_currency_code is always explicit
- state columns must never be collapsed into one column

# ============================================================
# 3. expense_item
# ============================================================

table: expense_item

purpose:
Stores per-item expense facts, currency meaning, tax meaning, and allocation meaning.

columns:
- expense_item_id: uuid pk
- expense_report_id: uuid not null fk -> expense_report.expense_report_id
- expense_category_code: varchar(50) not null
- usage_date: date not null
- merchant_name: text null
- description: text null
- amount: numeric(18,2) not null
- currency_code: varchar(3) not null
- exchange_rate: numeric(18,8) null
- converted_amount: numeric(18,2) null
- converted_currency_code: varchar(3) null
- payment_method: varchar(40) not null
- payment_type: varchar(40) not null
- tax_category_code: varchar(40) null
- tax_amount: numeric(18,2) null
- project_code: varchar(80) null
- department_code: varchar(80) null
- duplicate_check_state: varchar(40) not null default 'none'
- evidence_required: boolean not null default false
- note: text null
- created_at: timestamptz not null default now()
- updated_at: timestamptz not null default now()

indexes:
- idx_expense_item_expense_report_id
- idx_expense_item_expense_category_code
- idx_expense_item_usage_date
- idx_expense_item_currency_code
- idx_expense_item_payment_method
- idx_expense_item_project_code
- idx_expense_item_department_code
- idx_expense_item_duplicate_check_state

notes:
- amount and currency_code must always be stored separately
- converted_* fields are nullable because same-currency items may not need conversion
- payment_method and payment_type must remain separate

# ============================================================
# 4. expense_receipt
# ============================================================

table: expense_receipt

purpose:
Stores evidence attachment metadata and OCR/evidence status.

columns:
- expense_receipt_id: uuid pk
- expense_item_id: uuid not null fk -> expense_item.expense_item_id
- file_name: text not null
- mime_type: varchar(255) not null
- storage_object_ref: text not null
- sha256: varchar(64) not null
- capture_source: varchar(40) not null
- evidence_state: varchar(40) not null default 'attached'
- ocr_state: varchar(40) not null default 'none'
- uploaded_at: timestamptz not null default now()
- verified_at: timestamptz null
- created_at: timestamptz not null default now()
- updated_at: timestamptz not null default now()

indexes:
- idx_expense_receipt_expense_item_id
- idx_expense_receipt_sha256
- idx_expense_receipt_evidence_state
- idx_expense_receipt_ocr_state
- idx_expense_receipt_uploaded_at

notes:
- sha256 supports integrity and duplicate suspicion checks
- one item may have multiple receipts if policy allows

# ============================================================
# 5. expense_approval_record
# ============================================================

table: expense_approval_record

purpose:
Stores approval route actions as auditable records.

columns:
- approval_record_id: uuid pk
- expense_report_id: uuid not null fk -> expense_report.expense_report_id
- approval_step: integer not null
- actor_user_id: uuid not null
- action_type: varchar(40) not null
- action_reason: text null
- action_at: timestamptz not null default now()
- created_at: timestamptz not null default now()

indexes:
- idx_expense_approval_record_expense_report_id
- idx_expense_approval_record_actor_user_id
- idx_expense_approval_record_action_type
- idx_expense_approval_record_action_at

allowed_action_type_examples:
- approve
- return
- reject

# ============================================================
# 6. expense_finance_action_record
# ============================================================

table: expense_finance_action_record

purpose:
Stores finance-side decisions separately from approval-side decisions.

columns:
- finance_action_record_id: uuid pk
- expense_report_id: uuid not null fk -> expense_report.expense_report_id
- actor_user_id: uuid not null
- action_type: varchar(50) not null
- action_reason: text null
- action_at: timestamptz not null default now()
- created_at: timestamptz not null default now()

indexes:
- idx_expense_finance_action_record_expense_report_id
- idx_expense_finance_action_record_actor_user_id
- idx_expense_finance_action_record_action_type
- idx_expense_finance_action_record_action_at

allowed_action_type_examples:
- mark_ready_for_erp
- mark_policy_blocked
- mark_evidence_defect

# ============================================================
# 7. expense_erp_submission_request
# ============================================================

table: expense_erp_submission_request

purpose:
Stores explicit ERP publication requests.

columns:
- request_id: uuid pk
- expense_report_id: uuid not null fk -> expense_report.expense_report_id
- actor_user_id: uuid not null
- idempotency_key: varchar(255) not null
- publication_comment: text null
- request_payload_hash: varchar(64) null
- request_state: varchar(40) not null default 'pending'
- requested_at: timestamptz not null default now()
- created_at: timestamptz not null default now()

indexes:
- uq_expense_erp_submission_request_idempotency_key unique
- idx_expense_erp_submission_request_expense_report_id
- idx_expense_erp_submission_request_actor_user_id
- idx_expense_erp_submission_request_request_state
- idx_expense_erp_submission_request_requested_at

notes:
- idempotency_key is mandatory
- request_state is about the submission request lifecycle, not ERP business truth

# ============================================================
# 8. expense_erp_submission_result
# ============================================================

table: expense_erp_submission_result

purpose:
Stores ERP publication result separately from request.

columns:
- result_id: uuid pk
- request_id: uuid not null fk -> expense_erp_submission_request.request_id
- expense_report_id: uuid not null fk -> expense_report.expense_report_id
- result_status: varchar(40) not null
- erp_document_ref: varchar(255) null
- error_code: varchar(120) null
- error_message: text null
- received_at: timestamptz not null
- created_at: timestamptz not null default now()

indexes:
- idx_expense_erp_submission_result_request_id
- idx_expense_erp_submission_result_expense_report_id
- idx_expense_erp_submission_result_result_status
- idx_expense_erp_submission_result_received_at

allowed_result_status_examples:
- confirmed
- failed

notes:
- request/result separation is mandatory
- latest result determines expense_report.erp_state projection

# ============================================================
# 9. expense_candidate_link
# ============================================================

table: expense_candidate_link

purpose:
Stores conversion linkage between secretary/assistant candidates and formal expense objects.

columns:
- expense_candidate_link_id: uuid pk
- candidate_id: uuid not null
- candidate_type: varchar(50) not null
- source_system: varchar(80) not null
- source_ref_id: varchar(255) null
- expense_report_id: uuid null fk -> expense_report.expense_report_id
- expense_item_id: uuid null fk -> expense_item.expense_item_id
- conversion_status: varchar(40) not null
- converted_by_user_id: uuid null
- converted_at: timestamptz null
- created_at: timestamptz not null default now()

indexes:
- idx_expense_candidate_link_candidate_id
- idx_expense_candidate_link_source_system
- idx_expense_candidate_link_expense_report_id
- idx_expense_candidate_link_expense_item_id
- idx_expense_candidate_link_conversion_status

allowed_conversion_status_examples:
- pending
- converted
- discarded

# ============================================================
# 10. expense_validation_snapshot
# ============================================================

table: expense_validation_snapshot

purpose:
Stores latest validation result summary for fast UI retrieval and audit visibility.

columns:
- validation_snapshot_id: uuid pk
- expense_report_id: uuid not null fk -> expense_report.expense_report_id
- snapshot_version: integer not null default 1
- missing_required_fields_json: jsonb not null default '[]'
- warnings_json: jsonb not null default '[]'
- blocking_errors_json: jsonb not null default '[]'
- validated_at: timestamptz not null default now()
- created_at: timestamptz not null default now()

indexes:
- idx_expense_validation_snapshot_expense_report_id
- idx_expense_validation_snapshot_validated_at

notes:
- payload shape must align to API validations object
- additive-only changes should prefer new keys inside json arrays/objects where needed

# ============================================================
# 11. expense_pending_operation
# ============================================================

table: expense_pending_operation

purpose:
Stores delayed sync / retry / offline-safe pending actions.

columns:
- pending_operation_id: uuid pk
- expense_report_id: uuid null fk -> expense_report.expense_report_id
- expense_item_id: uuid null fk -> expense_item.expense_item_id
- operation_type: varchar(60) not null
- operation_payload_json: jsonb not null
- operation_state: varchar(40) not null default 'pending'
- retry_count: integer not null default 0
- last_error_code: varchar(120) null
- last_error_message: text null
- queued_at: timestamptz not null default now()
- last_attempt_at: timestamptz null
- resolved_at: timestamptz null
- created_at: timestamptz not null default now()
- updated_at: timestamptz not null default now()

indexes:
- idx_expense_pending_operation_expense_report_id
- idx_expense_pending_operation_expense_item_id
- idx_expense_pending_operation_operation_type
- idx_expense_pending_operation_operation_state
- idx_expense_pending_operation_queued_at

allowed_operation_state_examples:
- pending
- processing
- failed
- resolved

# ============================================================
# 12. STATE BASELINE
# ============================================================

state_baseline:

  submit_state:
    - draft
    - ready_for_submit
    - submitted
    - returned
    - resubmitted
    - rejected

  approval_state:
    - none
    - pending
    - in_progress
    - approved
    - returned
    - rejected

  finance_state:
    - none
    - pending_review
    - ready_for_erp
    - policy_blocked
    - evidence_defect

  erp_state:
    - none
    - pending
    - confirmed
    - failed

  settlement_state:
    - none
    - pending
    - settled

  duplicate_check_state:
    - none
    - suspected
    - confirmed_duplicate
    - cleared

  evidence_state:
    - attached
    - missing
    - unreadable
    - accepted
    - rejected

  ocr_state:
    - none
    - pending
    - completed
    - failed

# ============================================================
# 13. RELATIONSHIP SUMMARY
# ============================================================

relationship_summary:
- one expense_report has many expense_item
- one expense_item has many expense_receipt
- one expense_report has many expense_approval_record
- one expense_report has many expense_finance_action_record
- one expense_report has many expense_erp_submission_request
- one expense_erp_submission_request has many expense_erp_submission_result
- one expense_report has zero or many expense_validation_snapshot versions
- one expense_report or expense_item has zero or many expense_pending_operation
- one candidate may link to one report and/or one created item through expense_candidate_link

# ============================================================
# 14. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This physical model keeps separated:
- report header and line items
- approval and finance action
- ERP request and ERP result
- receipt evidence and validation snapshot
- online business truth and offline pending operation

