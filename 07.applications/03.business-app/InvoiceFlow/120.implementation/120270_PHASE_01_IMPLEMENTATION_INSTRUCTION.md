# ============================================================
# PHASE 01 IMPLEMENTATION INSTRUCTION
# IF-PHASE-01 Authority And Base Model
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-01
phase_name: Authority And Base Model

purpose:
Starts implementation from the most critical safety boundary:
authority meaning and base persistence.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Implement the minimum backend, frontend, and data foundation
required to preserve InvoiceFlow meaning.

meaning_of_done:
- invoice_case exists as canonical application object
- invoice_line exists under invoice_case
- FRONT_LOCAL and ERP_MASTER are explicit and visible
- erp_link_eligibility is explicit and visible
- company scope is enforced
- invoice list/detail can read the correct authority boundary
- invalid authority/state combinations are blocked

# ============================================================
# 2. TARGET FILE / TARGET AREA
# ============================================================

target_design_sources:
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
- 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060160_GET_INVOICE_LIST_EXACT_PAYLOAD.md
- 060.integration/060170_GET_INVOICE_DETAIL_EXACT_PAYLOAD.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- define invoice_case domain/service boundary
- define invoice_line domain/service boundary
- implement company scope validation on all entry points
- implement create FRONT_LOCAL invoice handler
- implement get invoice list handler
- implement get invoice detail handler
- ensure invoice_authority_type is always returned in list/detail payload
- ensure erp_link_eligibility is always returned in list/detail payload
- reject invalid authority writes
- reject invalid due-date relation
- reject empty invoice lines
- write audit event for FRONT_INVOICE_CREATED when create succeeds

backend_must_return:
- invoice_authority_type
- erp_link_eligibility
- invoice_status_code
- collection_status_code
- currency_code
- total_amount

backend_forbidden:
- do not auto-create ERP_MASTER from create front invoice path
- do not omit authority fields from payload
- do not rely on frontend for company-scope enforcement
- do not infer ERP eligibility from UI-only rules

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create invoice_case table
- create invoice_line table
- add pk/fk structure
- add uq_invoice_case_company_invoice_number_local
- add status and due-date related checks
- add company/status/due-date/customer indexes
- ensure created_at and updated_at exist
- ensure created_by and updated_by exist

data_validation_focus:
- invoice_origin_type must be explicit
- invoice_authority_type must be explicit
- erp_link_eligibility must be explicit
- payment_due_date must be >= invoice_date
- amount columns must be >= 0

data_forbidden:
- no implicit authority meaning
- no single boolean replacing authority model
- no company-less financial rows

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- create invoice list base screen
- create invoice detail base screen
- show invoice authority badge clearly
- show ERP eligibility clearly
- show basic invoice summary fields
- show line items
- support multilingual labels structure
- support multicurrency display structure
- keep critical badges visible on phone/tablet

frontend_visibility_requirements:
- FRONT_LOCAL badge must be obvious
- ERP_MASTER badge must be obvious
- ERP non-eligible FRONT_LOCAL invoice must be obvious
- total_amount and currency_code must be obvious

frontend_forbidden:
- do not hide authority badge in submenu or collapsed area
- do not hide ERP eligibility warning below low-priority sections
- do not display FRONT_LOCAL invoice as if it were ERP-mastered

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- create FRONT_LOCAL invoice success
- create FRONT_LOCAL invoice validation failure
- invoice list returns authority and eligibility fields
- invoice detail returns authority and eligibility fields
- company scope denies cross-company access
- invalid due date is rejected
- empty line set is rejected
- invoice badge and ERP eligibility warning render visibly

minimum_test_matrix:
- FRONT_LOCAL create success
- FRONT_LOCAL create fail
- ERP_MASTER read visibility
- cross-company access deny
- invalid payload deny

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review authority boundary correctness
- review API payload exactness against design
- review DB field naming consistency
- review invoice list/detail screen realism
- review mobile visibility of authority/eligibility badges

review_participants_recommended:
- architecture reviewer
- db reviewer
- frontend reviewer
- security reviewer

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- invoice_case and invoice_line persist correctly
- create front invoice API works
- invoice list/detail APIs work
- authority badge and ERP eligibility are visible in UI
- company scope is enforced
- no path incorrectly creates or upgrades ERP authority
- test set passes for phase 01 target scope

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- manual payment confirmation
- receipt issuance
- collection dashboard
- bank import
- ERP reflection request
- saved filter behavior
- advanced dashboard widgets

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when the application can safely represent
invoice identity and authority without semantic leakage.
Speed is secondary to boundary correctness in this phase.
