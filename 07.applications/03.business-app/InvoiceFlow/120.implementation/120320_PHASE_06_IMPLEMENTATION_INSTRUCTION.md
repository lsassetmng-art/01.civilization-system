# ============================================================
# PHASE 06 IMPLEMENTATION INSTRUCTION
# IF-PHASE-06 Bank Match Flow
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-06
phase_name: Bank Match Flow

purpose:
Implements bank transaction import,
candidate matching,
operator-confirmed bank-linked payment confirmation,
and safe handling of ambiguous candidates.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to review imported bank transactions,
inspect candidate invoice matches,
confirm safe matches,
and leave ambiguous candidates unresolved until human review.

meaning_of_done:
- bank transactions can be stored
- candidate list is retrievable
- operator can confirm a safe bank match
- ambiguous matches remain blocked from auto-finalization
- invoice/payment state updates correctly after confirmed bank match
- audit trail exists for bank-linked confirmation actions

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020120_PAYMENT_CONFIRMATION_ARCHITECTURE.md
- 030.model/030150_BANK_TRANSACTION_IMPORT_MODEL.md
- 030.model/030320_BANK_TRANSACTION_IMPORT_PHYSICAL_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 040.runtime/040130_BANK_MATCHING_RUNTIME.md
- 050.flow/050130_BANK_PAYMENT_CONFIRMATION_FLOW.md
- 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 060.integration/060200_CONFIRM_BANK_MATCH_EXACT_PAYLOAD.md
- 060.integration/060260_GET_BANK_MATCH_CANDIDATE_LIST_EXACT_PAYLOAD.md
- 070.operations/070130_BANK_MATCH_EXCEPTION_OPERATIONS_STANDARD.md
- 070.operations/070140_BANK_IMPORT_OPERATIONS_STANDARD.md
- 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement bank transaction import persistence path
- implement bank match candidate list API
- implement bank match confirm API
- validate actor permission for bank-match confirmation
- validate company scope on imported transactions and target invoices
- store candidate confidence and candidate invoice linkage
- block auto-finalization for ambiguous candidates
- create payment_confirmation with confirmation_source_type = BANK_LINKED on successful confirm
- compute difference_amount explicitly
- update invoice_status_code after confirmed bank match
- update collection_status_code after confirmed bank match where applicable
- return receipt_issue_ready boolean
- write PAYMENT_BANK_MATCH_CONFIRMED audit event
- write exception/override audit events where policy requires

backend_required_payload_fields:
- bank_transaction_id
- match_status_code
- candidate_invoice_case_id
- candidate_confidence
- payment_confirmation_id when confirmed
- confirmation_source_type
- confirmation_status_code
- confirmed_amount
- difference_amount
- invoice_status_code
- collection_status_code
- receipt_issue_ready

backend_business_rules:
- ambiguous candidates must not silently confirm
- unmatched transactions must remain visible
- rejected candidates must remain historically traceable
- exact and fee-adjusted differences must remain explicit
- company scope must be enforced for both invoice and transaction

backend_forbidden:
- do not auto-confirm low-confidence candidates
- do not discard unmatched transactions silently
- do not overwrite import history destructively
- do not convert ambiguous candidate into success response
- do not hide difference_amount from API response

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create bank_transaction_import table if not already created
- persist bank_account_id
- persist external_transaction_key when available
- persist transaction_date, transaction_name, transaction_amount, currency_code
- persist match_status_code
- persist candidate_invoice_case_id and candidate_confidence where available
- connect successful bank match to payment_confirmation
- add required indexes for account/date/status lookup
- enforce duplicate handling for external_transaction_key where policy uses it

data_integrity_focus:
- transaction import history must be traceable
- bank-linked confirmation must remain explicit
- transaction amount must remain non-negative
- candidate confidence must remain bounded
- imported transaction must remain company-scoped

data_forbidden:
- no silent duplicate collapse without trace
- no null company scope
- no destructive overwrite of prior import rows
- no implicit conversion of BANK_LINKED to MANUAL

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement bank candidate list screen
- display bank account, transaction date, payer name, amount, and candidate invoice
- display candidate confidence clearly
- implement confirm / reject / investigate actions
- display ambiguity/blocking state clearly
- display resulting payment state after successful confirmation
- display receipt readiness after successful confirmation
- keep candidate workload usable on phone/tablet/pc

frontend_ui_requirements:
- operator must understand why a candidate is safe or unsafe
- confidence must be visible, not hidden
- ambiguous candidate must visually differ from safe candidate
- invoice number, customer, and amount comparison should be easy to read
- unresolved candidate workload must remain accessible

frontend_forbidden:
- do not visually imply that all candidates are safe
- do not hide ambiguity behind tiny secondary text
- do not make confirm and reject actions easy to confuse
- do not require desktop-only interaction for critical review

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- import persistence success
- candidate list retrieval success
- confirmed bank match success
- ambiguous bank match blocked
- rejected candidate remains visible/history-safe
- exact match state update
- difference state update
- invoice status update after confirmed bank match
- collection status update after confirmed bank match
- audit event write for bank match confirmation

minimum_test_matrix:
- safe candidate confirm
- ambiguous candidate block
- no-candidate visible unresolved case
- duplicate external key handling
- cross-company deny
- ui confidence visibility check

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review false-positive safety posture
- review candidate confidence visibility
- review investigation path realism
- review operator understanding of ambiguous cases
- review amount comparison clarity
- review phone/tablet usability for candidate triage

review_focus:
- safety beats automation in this phase
- operator must trust that unresolved means unresolved
- convenience must not blur financial correctness

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- imported bank transactions are stored and visible
- candidate list works
- safe bank match can be confirmed
- ambiguous candidate is blocked from auto-finalization
- BANK_LINKED payment confirmation is created correctly
- invoice and collection states update correctly after confirmed match
- audit events exist for bank-linked confirmation
- unresolved candidate workload remains visible

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- ERP reflection request
- saved filters
- advanced ML scoring
- full auto-reconciliation without operator review

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when bank-linked confirmation is operationally useful
without pretending that uncertainty has been resolved.
Ambiguity must remain visible and block finalization until reviewed.
