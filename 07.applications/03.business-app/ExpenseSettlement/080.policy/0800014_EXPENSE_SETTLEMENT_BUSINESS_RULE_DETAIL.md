# ============================================================
# EXPENSE SETTLEMENT BUSINESS RULE DETAIL
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines detailed settlement business rules for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- settlement meaning must remain separate from approval, finance review, and ERP confirmation
- reimbursement completion, corporate-card completion, and advance settlement completion
  must not be conflated
- settlement is a business completion concept, not only a display badge
- multilingual display may vary, but settlement meaning must remain canonical
- multi currency meaning must remain visible where settlement uses converted or final paid values
- iphone, android, pc, and tablet must preserve the same settlement meaning

# ============================================================
# 1. SETTLEMENT DESIGN GOAL
# ============================================================

settlement_design_goal:
- define when an expense flow is considered business-complete
- distinguish accounting reflection from actual settlement completion
- support different payment patterns without semantic confusion
- preserve auditability for reimbursement and post-accounting correction cases
- avoid vague “done” status that hides unresolved business meaning

# ============================================================
# 2. SETTLEMENT DOMAIN TYPES
# ============================================================

settlement_domain_types:
- employee_reimbursement
- corporate_card_completion
- advance_settlement_completion
- no_cash_reimbursement_required_case
- exceptional_settlement_correction_case

meaning_summary:

  employee_reimbursement:
    meaning:
      - employee-paid expense becomes complete when reimbursement business process is finished

  corporate_card_completion:
    meaning:
      - company-paid/corporate-card expense becomes complete according to corporate-card settlement/business close rule,
        not employee reimbursement rule

  advance_settlement_completion:
    meaning:
      - advance-related flow becomes complete when advance and actual expense relationship is fully resolved

  no_cash_reimbursement_required_case:
    meaning:
      - some expenses may require accounting/record completion but not employee cash reimbursement

  exceptional_settlement_correction_case:
    meaning:
      - prior settled case requires explicit controlled correction path

# ============================================================
# 3. SETTLEMENT STATE BASELINE
# ============================================================

settlement_state_baseline:
- none
- pending
- settled

state_meaning:

  none:
    meaning:
      - settlement process has not meaningfully started or is not yet applicable

  pending:
    meaning:
      - settlement-relevant business process is underway but not complete

  settled:
    meaning:
      - settlement business process is complete under the applicable domain rule

important_rule:
- settled does not mean “all history can be forgotten”
- settled does not erase ERP request/result or evidence/approval history

# ============================================================
# 4. SEPARATION RULE
# ============================================================

separation_rule:
- approval_state=approved is not settlement completion
- finance_state=ready_for_erp is not settlement completion
- erp_state=confirmed is not automatically settlement completion
- settlement completion must follow its own business rule
- one report may be ERP-confirmed while still settlement_state=pending

# ============================================================
# 5. EMPLOYEE REIMBURSEMENT RULE
# ============================================================

employee_reimbursement_rule:
- applies when employee actually bore the expense and reimbursement is required
- settlement_state becomes pending when reimbursement flow becomes due/active according to business process
- settlement_state becomes settled only when reimbursement completion is confirmed by the relevant business/accounting process
- reimbursement confirmation must remain explainable and auditable
- ERP posting alone does not prove employee reimbursement completion unless company policy explicitly equates them

examples_of_reimbursement_pending:
- ERP confirmed but reimbursement transfer not yet completed
- finance accepted but payment batch not yet completed
- reimbursement scheduled but not completed

examples_of_reimbursement_settled:
- reimbursement completion confirmed by downstream business process
- governing payment completion signal accepted under company rule

# ============================================================
# 6. CORPORATE CARD COMPLETION RULE
# ============================================================

corporate_card_completion_rule:
- applies when company/corporate card paid the expense
- employee cash reimbursement is usually not the completion concept
- settlement completion means the corporate-card-related expense is fully resolved under company business rule
- app must not label corporate-card item as reimbursed if no employee reimbursement exists
- corporate-card completion may depend on finance/accounting close or card reconciliation rule if company policy defines it

important_rule:
- corporate_card_completion is distinct from employee_reimbursement
- UI wording must reflect the difference

# ============================================================
# 7. ADVANCE SETTLEMENT COMPLETION RULE
# ============================================================

advance_settlement_completion_rule:
- applies when employee received an advance and later reports actual expense
- settlement completion means the advance and actual expense relationship is fully resolved
- under/over balance must be explainable according to business rule
- advance settlement completion is not merely “report approved”
- finance/accounting rule must be able to explain whether balance remains open

examples_of_advance_pending:
- report approved but advance residual not yet resolved
- mismatch between advance and actuals still under review
- supporting evidence still incomplete for final advance close

examples_of_advance_settled:
- advance fully reconciled and closed by business/accounting rule
- over/under adjustment completed and confirmed

# ============================================================
# 8. NO-CASH-REIMBURSEMENT RULE
# ============================================================

no_cash_reimbursement_rule:
- some expense flows may require no employee cash reimbursement
- app should still be able to mark settlement complete when business resolution is achieved
- settlement meaning in these cases should reflect resolution, not personal payout
- wording and logic must remain distinct from reimbursement language

examples:
- company-paid internal charge pattern
- non-reimbursable but recordable policy path if company defines it

# ============================================================
# 9. ENTRY TO SETTLEMENT PENDING RULE
# ============================================================

entry_to_settlement_pending_rule:
- settlement_state may move from none to pending only after the report reaches a meaningful post-review stage
- in most normal flows, ERP confirmation or equivalent downstream handoff readiness should precede settlement pending
- pending entry rule must be deterministic and policy-defined
- device/UI convenience must not change pending-entry meaning

recommended_default_interpretation:
- none -> pending after ERP confirmed or downstream settlement process explicitly starts

# ============================================================
# 10. ENTRY TO SETTLED RULE
# ============================================================

entry_to_settled_rule:
- settlement_state may move to settled only when applicable business completion signal exists
- settled must not be user-guessed or inferred from mere inactivity
- settled should be auditable and explainable
- settled may be confirmed by finance and/or downstream integration according to policy

important_rule:
- settled is not a visual cleanup state
- it is a business meaning state

# ============================================================
# 11. PARTIAL / MIXED CASE RULE
# ============================================================

partial_mixed_case_rule:
- one report may contain mixed payment patterns
- settlement meaning should remain explainable even if different items conceptually resolve differently
- if initial release keeps settlement_state at report level, policy must explain how mixed cases are interpreted
- stricter interpretation is recommended when mixed cases exist

recommended_interpretation_for_initial_release:
- report-level settlement becomes settled only when all settlement-relevant items in the report are considered resolved by policy

# ============================================================
# 12. MULTI-CURRENCY SETTLEMENT RULE
# ============================================================

multi_currency_settlement_rule:
- original item currency remains factual history even after settlement
- settlement completion may depend on converted/business settlement amounts
- settlement visibility should avoid ambiguity about which amount/currency users are seeing
- ERP/accounting paid currency and original item currency may differ, but both remain explainable where relevant

important_rule:
- settlement completion must not erase original currency meaning

# ============================================================
# 13. SETTLEMENT CONFIRMATION AUTHORITY RULE
# ============================================================

settlement_confirmation_authority_rule:
- settlement confirmation may be performed only by authorized finance role or governed downstream integration path
- applicant does not self-certify final settlement completion as business truth
- approver does not automatically gain settlement confirmation authority
- admin does not silently mark settled unless explicit governed authority exists

# ============================================================
# 14. SETTLEMENT EVIDENCE / TRACE RULE
# ============================================================

settlement_evidence_trace_rule:
- settlement completion should be backed by some explainable confirmation signal
- confirmation signal may be:
  - downstream business completion event
  - finance confirmation event
  - governed integration result
- settlement confirmation must remain auditable
- settlement trace is separate from receipt evidence trace

# ============================================================
# 15. SETTLEMENT CORRECTION RULE
# ============================================================

settlement_correction_rule:
- settled is normally terminal for ordinary user editing
- if settlement needs correction, explicit controlled path is required
- correction must preserve prior settled history
- corrected flow must remain explainable against original settlement event
- settlement correction is not silent reset to draft

# ============================================================
# 16. SETTLEMENT BLOCK / HOLD RULE
# ============================================================

settlement_block_hold_rule:
- unresolved policy/evidence/accounting issues may keep settlement_state from becoming settled
- settlement may remain pending while reimbursement/payment close is unresolved
- settlement hold must not be hidden behind generic status wording
- hold reason should be explainable in operations/support views

# ============================================================
# 17. SETTLEMENT HISTORY RULE
# ============================================================

settlement_history_rule:
- transition into pending must be traceable
- transition into settled must be traceable
- correction/reopen after settled must be traceable
- settlement history must remain joinable to approval, finance, and ERP histories
- settlement completion must not collapse earlier lifecycle detail

# ============================================================
# 18. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- treating approval as settlement completion
- treating ERP confirmed as always equal to settled
- labeling corporate-card flow as reimbursed when employee reimbursement did not occur
- silently marking settled due to elapsed time only
- silently unsetting settled with no correction history
- device-specific settlement meaning drift
- locale wording that hides whether completion means reimbursement or non-reimbursement resolution

# ============================================================
# 19. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact event that moves none -> pending
- exact event that moves pending -> settled
- exact mixed-payment report interpretation if item-level settlement is introduced later
- exact corporate-card completion condition
- exact advance residual close rule
- exact downstream confirmation source catalog
- exact settlement hold reason catalog

note:
- this document fixes settlement semantics and separation
- exact organization-specific completion signals can be filled later

# ============================================================
# 20. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps settlement meaning safe by separating:
- approval from settlement
- ERP confirmation from settlement
- reimbursement from corporate-card completion
- advance reconciliation from ordinary reimbursement
- settlement completion from silent status cleanup

