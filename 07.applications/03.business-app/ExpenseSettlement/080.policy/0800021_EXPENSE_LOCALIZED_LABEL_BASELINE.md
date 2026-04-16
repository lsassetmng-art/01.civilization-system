# ============================================================
# EXPENSE LOCALIZED LABEL BASELINE
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum localized label baseline required before implementation start.

initial_supported_languages:
- ja
- en

minimum_label_domains:
- navigation labels
- screen titles
- action buttons
- state labels
- validation messages
- notification titles
- notification bodies
- category display labels
- template display labels

minimum_state_label_keys:
- submit_state.draft
- submit_state.submitted
- submit_state.returned
- submit_state.resubmitted
- submit_state.rejected
- approval_state.pending
- approval_state.in_progress
- approval_state.approved
- approval_state.returned
- approval_state.rejected
- finance_state.pending_review
- finance_state.ready_for_erp
- finance_state.policy_blocked
- finance_state.evidence_defect
- erp_state.pending
- erp_state.confirmed
- erp_state.failed
- settlement_state.pending
- settlement_state.settled

minimum_action_label_keys:
- action.submit
- action.resubmit
- action.approve
- action.return
- action.reject
- action.attach_receipt
- action.mark_ready_for_erp
- action.retry_erp
- action.convert_candidate

minimum_validation_label_keys:
- REQUIRED_EXPENSE_CATEGORY
- REQUIRED_USAGE_DATE
- REQUIRED_RECEIPT
- INVALID_CURRENCY_COMBINATION
- DUPLICATE_SUSPECTED
- ERP_PUBLICATION_NOT_ALLOWED

baseline_rule:
Implementation should not start without a minimum ja/en baseline
for these keys.

