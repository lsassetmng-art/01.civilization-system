# ============================================================
# PHASE 02 IMPLEMENTATION INSTRUCTION
# IF-PHASE-02 Front Invoice Core
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-02
phase_name: Front Invoice Core

purpose:
Implements the practical FRONT_LOCAL invoice operation flow.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to create, view, filter, detail-check,
generate PDF for, and request sending of FRONT_LOCAL invoices
without breaking authority boundaries.

meaning_of_done:
- operator can create FRONT_LOCAL invoice from UI
- invoice list is usable
- invoice detail is usable
- invoice PDF generation works
- send request can be registered
- invoice states move from DRAFT to PDF_READY to SENT_REQUESTED
- ERP non-eligibility remains visible at all times

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020_INVOICE_FLOW_ARCHITECTURE.md
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030120_INVOICE_DELIVERY_REQUEST_MODEL.md
- 050.flow/050110_FRONT_INVOICE_CREATION_FLOW.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060.integration/060240_GENERATE_INVOICE_PDF_EXACT_PAYLOAD.md
- 060.integration/060250_REQUEST_INVOICE_SEND_EXACT_PAYLOAD.md
- 090.interface/090110_SCREEN_LIST_INTERFACE.md
- 090.interface/090120_DASHBOARD_INTERFACE.md
- 090.interface/090130_INVOICE_DETAIL_INTERFACE.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement create FRONT_LOCAL invoice endpoint fully
- implement invoice list query with filter/sort/paging
- implement invoice detail query
- implement invoice PDF generate endpoint
- implement invoice send request endpoint
- persist invoice_delivery_request record
- update invoice_status_code correctly
- enforce PDF existence before send request
- keep ERP authority fields in every list/detail response
- write audit events for invoice create, PDF generate, and send request

backend_required_payload_fields:
- invoice_case_id
- invoice_number_local
- invoice_authority_type
- erp_link_eligibility
- invoice_status_code
- payment_due_date
- currency_code
- total_amount

backend_forbidden:
- do not create ERP_MASTER invoice in this phase
- do not allow send request without pdf_document_id
- do not omit authority fields from list/detail responses
- do not silently coerce invalid line or amount input

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create invoice_delivery_request table
- connect pdf_document_id storage to invoice_case
- confirm invoice list indexes support status and due-date queries
- confirm local invoice number uniqueness handling
- persist requested_by / requested_at / delivery status fields

data_integrity_focus:
- invoice_case must stay FRONT_LOCAL
- invoice_status_code must follow allowed transitions
- invoice_delivery_request must remain tied to invoice_case
- send request must not mutate authority meaning

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement create front invoice screen fields
- implement invoice line item editor
- implement invoice list screen with filters and paging
- implement invoice detail sections
- implement generate PDF action
- implement send request action
- show invoice authority badge clearly
- show ERP non-eligible warning clearly
- show document action section clearly
- support phone/tablet/pc usable layouts

frontend_ui_requirements:
- invoice create flow must show required fields clearly
- invoice detail must show invoice summary before secondary information
- invoice authority and ERP eligibility must stay visible near top area
- list rows must expose overdue/payment state and authority
- PDF and send actions must be easy to locate

frontend_forbidden:
- do not bury ERP non-eligible warning
- do not display FRONT_LOCAL invoice as if ERP-managed
- do not require desktop-only interaction for core actions

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- create front invoice success
- create front invoice validation failure
- invoice list filter by status
- invoice list filter by authority type
- invoice detail returns expected sections
- generate PDF success
- send request success after PDF exists
- send request failure when PDF missing
- authority badge renders
- ERP non-eligible warning renders

minimum_test_matrix:
- valid create
- invalid create
- valid pdf generate
- valid send request
- blocked send without pdf
- list/detail response contract match
- ui authority visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review invoice create field completeness
- review list/detail operator usability
- review document action discoverability
- review pdf/send flow semantics
- review authority boundary presentation
- review mobile layout with long titles and large amounts

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- create front invoice path is usable end-to-end
- invoice list and detail are usable
- invoice PDF generate works
- send request registration works
- DRAFT -> PDF_READY -> SENT_REQUESTED transitions work
- authority badge and ERP non-eligibility warning stay visible
- audit events exist for create/pdf/send actions

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- manual payment confirmation
- receipt issuance
- collection dashboard and collection detail
- bank transaction import
- ERP reflection request
- saved filter persistence

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when FRONT_LOCAL invoice handling feels real,
safe, and operationally usable,
without creating any semantic confusion with ERP authority.
