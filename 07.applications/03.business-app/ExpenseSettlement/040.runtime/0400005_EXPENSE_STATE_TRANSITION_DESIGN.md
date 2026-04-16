# ============================================================
# EXPENSE STATE TRANSITION DESIGN
# ============================================================

status: canonical
layer: runtime
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines allowed and disallowed state transitions for ExpenseSettlement
initial release, without entering implementation.

design_policy:
- state meaning must remain explicit
- submit state, approval state, finance state, ERP state, and settlement state must not be merged
- one user action may update multiple state dimensions, but their meanings must stay separate
- invalid transitions must be rejected
- rollback-like correction must happen through explicit business transitions, not hidden overwrite

# ============================================================
# 1. STATE DIMENSIONS
# ============================================================

state_dimensions:
- submit_state
- approval_state
- finance_state
- erp_state
- settlement_state
- duplicate_check_state
- evidence_state
- ocr_state

# ============================================================
# 2. STATE BASELINE
# ============================================================

state_baseline:

  submit_state:
    - draft
    - ready_for_submit
    - submitted
    - returned
    - resubmitted
    - rejected

  approval_state:
    - none
    - pending
    - in_progress
    - approved
    - returned
    - rejected

  finance_state:
    - none
    - pending_review
    - ready_for_erp
    - policy_blocked
    - evidence_defect

  erp_state:
    - none
    - pending
    - confirmed
    - failed

  settlement_state:
    - none
    - pending
    - settled

  duplicate_check_state:
    - none
    - suspected
    - confirmed_duplicate
    - cleared

  evidence_state:
    - attached
    - missing
    - unreadable
    - accepted
    - rejected

  ocr_state:
    - none
    - pending
    - completed
    - failed

# ============================================================
# 3. REPORT LIFECYCLE OVERVIEW
# ============================================================

report_lifecycle_overview:
- draft creation starts with submit_state=draft
- submit action moves report into submitted review path
- approval action moves report through approval path
- finance action moves report into ERP-ready or blocked path
- ERP publication request/result moves report through ERP path
- settlement completion is separate from ERP confirmation

important_rule:
approved does not mean ERP confirmed
ERP confirmed does not always mean settled
returned/rejected does not erase prior history

# ============================================================
# 4. SUBMIT STATE TRANSITIONS
# ============================================================

submit_state_transitions:

  allowed:
    - from: draft
      to: ready_for_submit
      trigger: validation becomes passable
      actor: system_or_user_save_path

    - from: draft
      to: submitted
      trigger: explicit submit with valid conditions
      actor: applicant

    - from: ready_for_submit
      to: submitted
      trigger: explicit submit
      actor: applicant

    - from: submitted
      to: returned
      trigger: approver returns report
      actor: approver

    - from: returned
      to: resubmitted
      trigger: applicant re-submits after correction
      actor: applicant

    - from: resubmitted
      to: returned
      trigger: approver returns again
      actor: approver

    - from: submitted
      to: rejected
      trigger: approver rejects
      actor: approver

    - from: resubmitted
      to: rejected
      trigger: approver rejects
      actor: approver

  disallowed_examples:
    - draft -> approved
    - draft -> ready_for_erp
    - submitted -> draft
    - rejected -> submitted without explicit new correction path
    - returned -> approved directly without re-review path

notes:
- ready_for_submit is optional visibility state, not mandatory user-facing label everywhere
- submitted/resubmitted are separate for traceability

# ============================================================
# 5. APPROVAL STATE TRANSITIONS
# ============================================================

approval_state_transitions:

  allowed:
    - from: none
      to: pending
      trigger: report submitted
      actor: system

    - from: pending
      to: in_progress
      trigger: approval route begins or current approver opens active handling
      actor: system_or_approver

    - from: in_progress
      to: approved
      trigger: final required approval completed
      actor: approver

    - from: pending
      to: returned
      trigger: return action
      actor: approver

    - from: in_progress
      to: returned
      trigger: return action
      actor: approver

    - from: pending
      to: rejected
      trigger: reject action
      actor: approver

    - from: in_progress
      to: rejected
      trigger: reject action
      actor: approver

    - from: returned
      to: pending
      trigger: applicant resubmits
      actor: system

  disallowed_examples:
    - none -> approved without submit
    - approved -> pending without explicit resubmission flow
    - rejected -> approved directly
    - returned -> approved directly without resubmission

notes:
- multi-step approval is represented by approval records and current_approval_step
- approved means approval completed, not finance completed

# ============================================================
# 6. FINANCE STATE TRANSITIONS
# ============================================================

finance_state_transitions:

  allowed:
    - from: none
      to: pending_review
      trigger: approval completed
      actor: system

    - from: pending_review
      to: ready_for_erp
      trigger: finance marks ready
      actor: finance

    - from: pending_review
      to: policy_blocked
      trigger: finance blocks for policy reason
      actor: finance

    - from: pending_review
      to: evidence_defect
      trigger: finance detects evidence defect
      actor: finance

    - from: policy_blocked
      to: pending_review
      trigger: corrected and returned to finance review
      actor: finance_or_system

    - from: evidence_defect
      to: pending_review
      trigger: evidence corrected and review restarted
      actor: finance_or_system

  disallowed_examples:
    - none -> ready_for_erp before approval
    - approved -> ready_for_erp by applicant directly
    - policy_blocked -> ready_for_erp without re-review
    - evidence_defect -> ready_for_erp without re-review

notes:
- finance_state is independent from approval_state after approval completion
- finance blocked states must remain visible and recoverable

# ============================================================
# 7. ERP STATE TRANSITIONS
# ============================================================

erp_state_transitions:

  allowed:
    - from: none
      to: pending
      trigger: explicit ERP publication request
      actor: finance

    - from: pending
      to: confirmed
      trigger: ERP result success
      actor: integration_system

    - from: pending
      to: failed
      trigger: ERP result failure
      actor: integration_system

    - from: failed
      to: pending
      trigger: explicit retry request
      actor: finance

  disallowed_examples:
    - none -> confirmed without request/result path
    - ready_for_erp -> confirmed directly by UI action
    - failed -> confirmed without new request/result
    - confirmed -> pending without corrective business path

notes:
- ERP request and ERP result are separate business events
- erp_state is report-level projection from request/result lifecycle

# ============================================================
# 8. SETTLEMENT STATE TRANSITIONS
# ============================================================

settlement_state_transitions:

  allowed:
    - from: none
      to: pending
      trigger: ERP confirmed or downstream settlement process started
      actor: system_or_finance

    - from: pending
      to: settled
      trigger: settlement completion confirmed
      actor: finance_or_integration_system

  disallowed_examples:
    - none -> settled without settlement path
    - rejected -> settled
    - returned -> settled
    - failed -> settled without ERP/accounting correction path

notes:
- settlement means reimbursement/business completion status
- settlement is not a substitute for ERP posting state

# ============================================================
# 9. DUPLICATE CHECK STATE TRANSITIONS
# ============================================================

duplicate_check_state_transitions:

  allowed:
    - from: none
      to: suspected
      trigger: duplicate heuristic match
      actor: system

    - from: suspected
      to: confirmed_duplicate
      trigger: reviewer or finance confirms duplicate
      actor: approver_or_finance

    - from: suspected
      to: cleared
      trigger: reviewer clears suspicion
      actor: approver_or_finance

    - from: cleared
      to: suspected
      trigger: new evidence or changed item causes new suspicion
      actor: system

  disallowed_examples:
    - none -> confirmed_duplicate without suspicion/review path
    - confirmed_duplicate -> cleared silently without explicit review

# ============================================================
# 10. EVIDENCE STATE TRANSITIONS
# ============================================================

evidence_state_transitions:

  allowed:
    - from: missing
      to: attached
      trigger: receipt attached
      actor: applicant

    - from: attached
      to: unreadable
      trigger: review finds unreadable evidence
      actor: finance_or_system

    - from: attached
      to: accepted
      trigger: evidence passes review
      actor: finance_or_system

    - from: unreadable
      to: attached
      trigger: replacement evidence uploaded
      actor: applicant

    - from: rejected
      to: attached
      trigger: corrected evidence uploaded
      actor: applicant

    - from: attached
      to: rejected
      trigger: explicit evidence rejection
      actor: finance

  disallowed_examples:
    - missing -> accepted
    - unreadable -> accepted without replacement/review
    - rejected -> accepted silently

notes:
- initial effective state may be missing until attachment exists
- accepted is evidence quality/state, not accounting approval

# ============================================================
# 11. OCR STATE TRANSITIONS
# ============================================================

ocr_state_transitions:

  allowed:
    - from: none
      to: pending
      trigger: OCR processing requested
      actor: system

    - from: pending
      to: completed
      trigger: OCR result available
      actor: system

    - from: pending
      to: failed
      trigger: OCR processing failed
      actor: system

    - from: failed
      to: pending
      trigger: explicit retry or new upload
      actor: system_or_applicant

  disallowed_examples:
    - none -> completed without OCR request/process
    - failed -> completed silently without retry/process

# ============================================================
# 12. CROSS-STATE RULES
# ============================================================

cross_state_rules:
- submit_state=submitted or resubmitted must imply approval_state is pending or in_progress unless already terminally rejected/returned
- approval_state=approved is required before finance_state moves to pending_review
- finance_state=ready_for_erp is required before ERP publication request
- erp_state=confirmed should normally precede settlement_state=pending or settled
- evidence_state problems may coexist with submit/approval state, but must block finance readiness when policy requires
- duplicate_check_state=confirmed_duplicate must block normal ERP publication until resolved by business rule
- policy_blocked and evidence_defect are recoverable states, not silent terminal states

# ============================================================
# 13. ACTOR RESPONSIBILITY
# ============================================================

actor_responsibility:
- applicant:
    - create draft
    - edit draft
    - attach evidence
    - submit
    - resubmit after return
- approver:
    - approve
    - return
    - reject
    - confirm or clear duplicate suspicion in approval stage where allowed
- finance:
    - review approved reports
    - mark ready_for_erp
    - mark policy_blocked
    - mark evidence_defect
    - trigger ERP publication
    - retry failed ERP publication
    - confirm settlement where applicable
- system/integration:
    - project state updates from request/result events
    - handle OCR state progression
    - maintain derived counters and projections

# ============================================================
# 14. TERMINAL / NON-TERMINAL INTERPRETATION
# ============================================================

terminal_interpretation:
- rejected is terminal for the current submission cycle
- settled is terminal for normal reimbursement lifecycle
- confirmed_duplicate is blocking until explicit business resolution
- failed ERP state is not terminal if retry is allowed
- returned, policy_blocked, evidence_defect are non-terminal corrective states

# ============================================================
# 15. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This design keeps the reimbursement lifecycle explainable.
It prevents ambiguity between:
- submit and approval
- approval and finance readiness
- finance readiness and ERP confirmation
- ERP confirmation and settlement completion

