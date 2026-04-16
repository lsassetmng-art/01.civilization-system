# ============================================================
# PHASE 04 IMPLEMENTATION INSTRUCTION
# IF-PHASE-04 Receipt Issuance
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-04
phase_name: Receipt Issuance

purpose:
Implements receipt issuance and reissue
with explicit linkage to confirmed payment
and strong auditability.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable authorized operators to issue and reissue receipts
from confirmed payment records
without losing linkage, numbering, or audit trail.

meaning_of_done:
- receipt can be issued only from confirmed payment
- receipt number is generated and stored
- receipt PDF can be generated
- receipt detail is viewable
- receipt reissue works with prior linkage preserved
- audit events are written for issue and reissue

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020140_RECEIPT_ISSUANCE_ARCHITECTURE.md
- 030.model/030170_RECEIPT_ISSUE_MODEL.md
- 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 040.runtime/040160_RECEIPT_ISSUANCE_RUNTIME.md
- 050.flow/050160_RECEIPT_ISSUANCE_FLOW.md
- 050.flow/050200_RECEIPT_STATUS_TRANSITION_FLOW.md
- 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 060.integration/060270_REISSUE_RECEIPT_EXACT_PAYLOAD.md
- 080.policy/080120_RECEIPT_POLICY.md
- 080.policy/080160_DOCUMENT_NUMBERING_POLICY.md
- 080.policy/080170_DOCUMENT_TEMPLATE_POLICY.md
- 090.interface/090160_RECEIPT_INTERFACE.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement issue receipt endpoint fully
- implement reissue receipt endpoint fully
- validate confirmed payment precondition
- validate role permission for issue and reissue
- generate receipt number according to current numbering policy
- persist receipt_issue record
- persist prior_receipt_issue_id on reissue
- generate/store receipt PDF reference
- return receipt detail payload
- write RECEIPT_ISSUED audit event
- write RECEIPT_REISSUED audit event

backend_required_payload_fields:
- receipt_issue_id
- receipt_number
- receipt_status_code
- pdf_document_id
- issued_at
- linked invoice_case_id
- linked payment_confirmation_id

backend_validation_rules:
- payment_confirmation_id must exist
- payment confirmation must be confirmed state
- reissue requires receipt_issue_id target
- reissue reason must be stored
- receipt number must be unique within company scope

backend_forbidden:
- do not issue receipt without confirmed payment
- do not overwrite old receipt number on reissue
- do not hide prior receipt linkage
- do not reuse issue action as if it were reissue
- do not bypass audit on receipt actions

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create receipt_issue table if not already created
- enforce unique receipt number within company scope
- persist prior_receipt_issue_id for reissue
- persist language_code and currency_code on receipt
- connect receipt_issue to invoice_case and payment_confirmation
- connect pdf_document_id to generated receipt document

data_integrity_focus:
- receipt must link to payment_confirmation
- reissued receipt must preserve prior linkage
- receipt_status_code must remain explicit
- issue and reissue should remain historically visible

data_forbidden:
- no destructive overwrite of prior receipt rows
- no receipt without payment linkage
- no null receipt number after successful issue

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement receipt detail screen
- implement issue receipt action from confirmed payment context
- implement reissue receipt action with reason input
- show linked payment summary on receipt screen
- show linked invoice summary on receipt screen
- show receipt number and issue timestamp clearly
- show prior receipt linkage on reissue
- show PDF action clearly
- support phone/tablet/pc usable layouts

frontend_ui_requirements:
- operator must understand which payment this receipt comes from
- operator must understand which invoice this receipt is linked to
- reissue must visibly differ from original receipt
- receipt status must be clear
- issue vs reissue actions must not be confusable

frontend_forbidden:
- do not display receipt as independent from payment
- do not hide prior linkage in reissue flows
- do not make issue/reissue actions visually ambiguous
- do not imply ERP-issued receipt if application-issued receipt is intended

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- receipt issue success from confirmed payment
- receipt issue denied without confirmed payment
- receipt number uniqueness
- receipt PDF generated reference exists
- receipt detail shows linked invoice and payment
- receipt reissue success with reason
- prior receipt linkage preserved
- permission denial for unauthorized reissue
- audit event written for issue
- audit event written for reissue

minimum_test_matrix:
- issue success
- issue denied
- reissue success
- reissue denied
- duplicate number prevention
- ui linkage visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review payment-to-receipt linkage clarity
- review numbering correctness
- review reissue traceability
- review receipt wording and layout realism
- review receipt screen usability on phone/tablet
- review audit completeness for issue/reissue

review_focus:
- receipt must be trusted by operator
- reissue must never erase historical truth
- receipt flow must not create false financial authority meaning

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- authorized operator can issue receipt from confirmed payment
- receipt number is generated and persisted
- receipt PDF reference is persisted
- receipt detail is viewable
- reissue creates new record with prior linkage preserved
- audit events exist for issue and reissue
- permissions and blocking errors behave correctly

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- collection dashboard
- bank import
- bank match confirmation
- ERP reflection
- saved filters
- advanced customer summary reporting

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when receipt issuance is not merely possible,
but traceable, linked, and safe enough
that operators can rely on it without losing payment history meaning.
