# ============================================================
# PHASE 06 TASK BREAKDOWN
# Bank Match Flow
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-06

backend_tasks:
- implement bank transaction import storage
- implement bank candidate list API
- implement bank match confirm API
- enforce ambiguous match blocking
- write bank confirmation audit events

frontend_tasks:
- implement bank matching list screen
- show candidate confidence clearly
- support confirm / reject / investigate actions
- show candidate invoice and amount comparison
- show unresolved candidate workload

data_tasks:
- create bank_transaction_import table
- index by bank account, date, and match status
- connect optional candidate_invoice_case_id

test_tasks:
- test import persistence
- test candidate list retrieval
- test ambiguous bank match rejection path
- test confirmed bank match updates payment status
- test duplicate external key handling

review_tasks:
- review match confidence visibility
- review investigation path usability
- review false-positive safety posture

phase_completion_focus:
- bank-linked confirmation is safe before it is convenient
