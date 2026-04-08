# ============================================================
# EXPENSE SETTLEMENT INTEGRATED
# ============================================================

status: canonical
system: applications
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

summary:
ExpenseSettlement is the canonical BusinessOS application for
expense reimbursement drafting, review, approval, evidence handling,
and ERP-connected formal settlement publication.

canonical_boundary:
- app owns draft, evidence intake, approval UI, retry, local state
- ERP owns final accounting authority, posting, payment, close
- PocketSecretary may provide expense candidates, reminders, and context
- all ERP transfer is explicit and contract-bound

primary_states:
- draft
- ready_for_submit
- submitted
- returned
- resubmitted
- approved
- rejected
- erp_pending
- erp_confirmed
- erp_failed
- settled

primary_objects:
- expense_report
- expense_item
- expense_receipt
- expense_policy_snapshot
- expense_approval_request
- expense_approval_record
- expense_erp_submission_request
- expense_erp_submission_result
- expense_sync_state
- expense_pending_operation
- expense_comment
- expense_duplicate_check_record
