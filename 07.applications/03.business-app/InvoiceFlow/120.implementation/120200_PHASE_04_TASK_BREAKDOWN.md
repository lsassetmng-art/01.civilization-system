# ============================================================
# PHASE 04 TASK BREAKDOWN
# Receipt Issuance
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-04

backend_tasks:
- implement issue receipt API
- implement reissue receipt API
- enforce confirmed payment precondition
- enforce receipt numbering generation
- write receipt issuance and reissue audit events

frontend_tasks:
- implement receipt detail screen
- implement issue receipt action
- implement reissue receipt action with reason input
- display linked invoice and linked payment on one screen
- display prior receipt linkage on reissue

data_tasks:
- create receipt_issue table
- enforce unique receipt number within company scope
- connect prior_receipt_issue_id for reissue

test_tasks:
- test issue receipt success path
- test receipt blocked without confirmed payment
- test reissue keeps linkage
- test receipt PDF action visibility
- test receipt permission boundaries

review_tasks:
- review receipt wording and traceability
- review numbering policy implementation
- review reissue audit completeness

phase_completion_focus:
- receipt issuance is reliable and traceable
