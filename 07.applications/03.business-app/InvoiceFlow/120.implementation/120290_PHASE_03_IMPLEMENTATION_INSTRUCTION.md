# ============================================================
# PHASE 03 IMPLEMENTATION INSTRUCTION
# IF-PHASE-03 Manual Payment Confirmation
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-03
phase_name: Manual Payment Confirmation

purpose:
Implements safe manual payment confirmation for hand-delivery,
cash receipt, and equivalent non-bank-led confirmation routes.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to record manual payment confirmation
with clear difference/partial handling,
correct invoice status updates,
and mandatory auditability.

meaning_of_done:
- operator can open manual payment confirmation flow
- confirmed payment date and amount can be recorded
- difference_amount is computed explicitly
- partial payment is handled explicitly
- invoice status updates correctly
- receipt readiness becomes visible
- audit event is written

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md
- 030.model/030140_PAYMENT_CONFIRMATION_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 040.runtime/040140_MANUAL_PAYMENT_CONFIRMATION_RUNTIME.md
- 050.flow/050140_MANUAL_PAYMENT_CONFIRMATION_FLOW.md
- 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement manual payment confirmation endpoint fully
- validate company scope and actor permission
- validate invoice_case target existence
- compute confirmed_amount, fee_amount, and difference_amount
- determine PARTIAL_CONFIRMED when remaining outstanding exists
- determine MANUAL_CONFIRMED when exact or accepted confirmation exists
- determine DIFFERENCE_FOUND when mismatch requires explicit visibility
- update invoice_status_code based on payment result
- update collection_status_code where resolution or monitoring changes
- return receipt_issue_ready boolean
- write PAYMENT_MANUAL_CONFIRMED audit event
- write PAYMENT_DIFFERENCE_OVERRIDDEN audit event when override path exists later

backend_required_payload_fields:
- payment_confirmation_id
- confirmation_source_type
- confirmation_status_code
- confirmed_amount
- fee_amount
- difference_amount
- invoice_status_code
- collection_status_code
- receipt_issue_ready

backend_validation_rules:
- confirmed_payment_date required
- confirmed_amount required
- confirmed_amount must be >= 0
- fee_amount must be >= 0
- invoice target must belong to actor company scope
- manual confirmation must fail when role lacks permission

backend_forbidden:
- do not auto-issue receipt in this phase
- do not hide difference_amount
- do not silently convert manual confirmation into bank-linked confirmation
- do not bypass permission checks
- do not overwrite prior payment history destructively

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create payment_confirmation table if not already created
- connect payment_confirmation to invoice_case via fk
- persist confirmation_source_type = MANUAL
- persist confirmation_status_code
- persist manual_receipt_note
- persist evidence_file_id when present
- persist confirmed_by and confirmed_at
- ensure invoice/payment indexes support invoice-centric retrieval

data_integrity_focus:
- MANUAL must remain explicit in confirmation_source_type
- payment_confirmation must never be company-less
- confirmed_amount and fee_amount must remain non-negative
- payment confirmation must remain historically visible

data_forbidden:
- no destructive overwrite of previous confirmation rows
- no null confirmation source type
- no implicit difference calculation only in UI

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement manual payment confirmation entry screen
- show invoice summary above confirmation form
- show invoice total, confirmed total, and outstanding amount clearly
- allow confirmed_payment_date input
- allow confirmed_amount input
- allow fee_amount input
- allow manual_receipt_note input
- allow evidence_file_id/reference input
- display computed difference or remaining outstanding clearly
- display receipt readiness state clearly after success
- display error blocking state clearly

frontend_ui_requirements:
- form must support phone/tablet/pc layouts
- operator must understand remaining outstanding without extra navigation
- partial payment result must be obvious
- difference result must be obvious
- receipt is not yet issued, only readiness is shown

frontend_forbidden:
- do not hide outstanding amount below secondary sections
- do not make difference state visually subtle
- do not show receipt as issued when only readiness exists
- do not assume desktop-only form behavior

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- manual full payment confirmation success
- manual partial payment confirmation success
- manual confirmation with fee amount
- manual confirmation with difference result
- permission denial for unauthorized role
- cross-company denial
- invoice status update correctness
- collection status update correctness
- receipt readiness flag correctness
- audit event write correctness

minimum_test_matrix:
- exact payment
- partial payment
- difference found
- invalid negative amount
- invalid permission
- invalid company scope
- ui displays outstanding and difference visibly

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review real-world usability for cash / hand-delivery cases
- review difference and partial semantics
- review invoice status transition correctness
- review collection status transition correctness
- review auditability of manual confirmation
- review mobile form usability

review_focus:
- operator should not misunderstand payment completion
- operator should not lose visibility of remaining unpaid amount
- finance/security should trust audit completeness

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- operator can complete manual payment confirmation safely
- confirmed payment row is persisted with MANUAL source
- exact/partial/difference result is explicit
- invoice status updates correctly
- collection status updates correctly
- receipt readiness is returned and visible
- audit event exists for manual confirmation
- blocking errors are explicit and understandable

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- receipt issuance execution
- receipt reissue
- bank transaction import
- bank candidate confirmation
- ERP reflection request
- advanced collection dashboard behavior

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when manual confirmation is operationally usable,
financially explicit,
and auditable enough that it does not create false confidence
about payment completion.
