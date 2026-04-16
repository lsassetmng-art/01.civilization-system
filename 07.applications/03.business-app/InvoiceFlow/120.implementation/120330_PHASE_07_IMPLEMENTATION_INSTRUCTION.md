# ============================================================
# PHASE 07 IMPLEMENTATION INSTRUCTION
# IF-PHASE-07 ERP Reflection
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-07
phase_name: ERP Reflection

purpose:
Implements ERP-aware payment-result reflection
for eligible ERP_MASTER paths
without breaking authority boundaries.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable InvoiceFlow to request payment-result reflection
to ERP through the shared BusinessOS boundary
only for eligible ERP_MASTER invoice paths.

meaning_of_done:
- ERP_MASTER invoice can request payment-result reflection
- FRONT_LOCAL invoice is explicitly denied for ERP-master reflection path
- reflection request/result persistence works
- retry path works for failed reflection
- reflection failure is visible to operators
- audit trail exists for request, retry, fail, and success

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020150_SHARED_ERP_REFLECTION_ARCHITECTURE.md
- 030.model/030200_ERP_REFLECTION_REQUEST_MODEL.md
- 030.model/030210_ERP_REFLECTION_RESULT_MODEL.md
- 030.model/030330_ERP_REFLECTION_PHYSICAL_MODEL.md
- 040.runtime/040120_ERP_MASTER_INVOICE_RUNTIME.md
- 050.flow/050120_ERP_MASTER_INVOICE_REFERENCE_FLOW.md
- 050.flow/050210_ERP_REFLECTION_STATUS_TRANSITION_FLOW.md
- 060.integration/060130_SHARED_ERP_REFLECTION_INTEGRATION_CONTRACT.md
- 060.integration/060230_REQUEST_ERP_PAYMENT_REFLECTION_EXACT_PAYLOAD.md
- 060.integration/060280_GET_ERP_REFLECTION_RESULT_EXACT_PAYLOAD.md
- 080.policy/080110_INVOICE_AUTHORITY_POLICY.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement request ERP payment reflection endpoint
- implement get ERP reflection result endpoint
- implement retry failed ERP reflection path
- validate actor permission for reflection request/retry
- validate company scope for invoice/payment/reflection target
- validate invoice_authority_type = ERP_MASTER for reflection path
- validate erp_link_eligibility for reflection path
- persist erp_reflection_request record
- persist erp_reflection_result record
- expose reflection_status, external_document_no, and error details
- write ERP_REFLECTION_REQUESTED audit event
- write ERP_REFLECTION_RETRIED audit event
- write ERP_REFLECTION_FAILED audit event
- write ERP_REFLECTION_SYNCED audit event

backend_required_payload_fields:
- erp_reflection_request_id
- invoice_case_id
- invoice_authority_type
- reflection_type_code
- reflection_status
- external_document_no
- applied_at
- error_code
- error_message

backend_business_rules:
- FRONT_LOCAL must fail ERP-master reflection path explicitly
- shared BusinessOS boundary is mandatory
- failure must remain visible and retrievable
- retry must remain auditable
- success must not change invoice authority meaning

backend_forbidden:
- do not bypass shared BusinessOS boundary
- do not silently ignore failed reflections
- do not convert FRONT_LOCAL into ERP_MASTER
- do not hide error details from operator-facing retrieval
- do not allow unauthorized reflection requests

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create erp_reflection_request table if not already created
- create erp_reflection_result table if not already created
- persist invoice_case_id and payment_confirmation_id linkage
- persist request_status_code and result_status_code
- persist external_document_no on success when returned
- persist error_code and error_message on failure
- add indexes for invoice/status/request/result retrieval

data_integrity_focus:
- reflection request must remain linked to invoice_case
- result must remain linked to request
- request/result must remain company-scoped
- FRONT_LOCAL denial must not create misleading success-like records

data_forbidden:
- no silent destructive overwrite of failed results
- no null authority interpretation
- no result row detached from request row

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- display reflection status in invoice detail
- display reflection action where allowed
- display retry action where allowed
- display reflection failure reason clearly
- display ERP authority context clearly near reflection section
- keep reflection actions separated from normal front-invoice actions
- support phone/tablet/pc readable reflection status display

frontend_ui_requirements:
- operator must understand whether reflection is allowed
- operator must understand whether failure is retryable
- FRONT_LOCAL invoices must clearly show ERP reflection not applicable
- ERP_MASTER invoices must clearly show reflection state
- reflection errors must be understandable without deep technical jargon

frontend_forbidden:
- do not show reflection request action on disallowed FRONT_LOCAL path
- do not hide failure reason
- do not make retry action available without failed state and permission
- do not imply ERP truth changed before success is confirmed

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- ERP_MASTER reflection request success
- FRONT_LOCAL reflection denial
- unauthorized reflection denial
- reflection result retrieval success
- failed reflection visibility
- retry path success
- retry path audit event write
- reflection error display contract correctness
- invoice detail reflection section visibility

minimum_test_matrix:
- ERP_MASTER allowed path
- FRONT_LOCAL denied path
- failed reflection path
- retry success path
- permission denial path
- ui failure visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review shared boundary compliance
- review FRONT_LOCAL denial clarity
- review operator understanding of reflection failure and retry
- review DB and API consistency for request/result tables
- review reflection section clarity on phone/tablet

review_focus:
- authority boundary must remain intact
- retry must be understandable and traceable
- ERP coexistence meaning must not blur

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- ERP_MASTER payment reflection can be requested
- FRONT_LOCAL reflection is explicitly denied
- reflection request/result persistence works
- failed result retrieval works
- retry path works
- reflection status is visible in invoice detail
- audit events exist for request/retry/fail/success

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- ERP-side accounting ledger implementation
- ERP-side invoice-master creation from InvoiceFlow
- advanced external workflow orchestration beyond defined reflection path

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when ERP coexistence is real,
safe, and explicit,
without allowing InvoiceFlow to pretend it owns ERP master authority.
