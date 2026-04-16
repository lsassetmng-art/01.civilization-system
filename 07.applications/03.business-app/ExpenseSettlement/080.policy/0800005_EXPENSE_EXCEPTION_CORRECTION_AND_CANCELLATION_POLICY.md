# ============================================================
# EXPENSE EXCEPTION CORRECTION AND CANCELLATION POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines correction, return-reopen, cancellation, retry, and exceptional
recovery rules for ExpenseSettlement initial release, without entering implementation.

design_policy:
- correction and deletion are not the same thing
- cancellation and rejection are not the same thing
- retry and silent overwrite are not the same thing
- returned reports must follow explicit reopen/resubmit flow
- ERP-related correction must remain explicit and auditable
- iphone, android, pc, and tablet must preserve the same business meaning
- multilingual and multi currency support must not weaken exception traceability

# ============================================================
# 1. EXCEPTION ACTION TYPES
# ============================================================

exception_action_types:
- applicant_correction
- return_reopen
- resubmit
- pre_approval_withdraw
- approval_reject
- finance_policy_block
- finance_evidence_defect
- erp_retry
- settlement_correction_request
- exceptional_admin_recovery
- evidence_replacement_after_review
- currency_correction_after_review

# ============================================================
# 2. DEFINITIONS
# ============================================================

definitions:

  applicant_correction:
    meaning:
      - applicant edits report or item content within an allowed correction window

  return_reopen:
    meaning:
      - report is reopened for applicant correction because approver or finance returned it through explicit path

  resubmit:
    meaning:
      - corrected report enters review flow again as a new submission cycle linked to prior history

  pre_approval_withdraw:
    meaning:
      - applicant withdraws submitted report before final approval only where policy allows

  approval_reject:
    meaning:
      - approver rejects the current submission cycle
      - this is not silent deletion

  finance_policy_block:
    meaning:
      - finance blocks progression because policy conditions are not satisfied

  finance_evidence_defect:
    meaning:
      - finance blocks progression because evidence is missing, unreadable, or invalid

  erp_retry:
    meaning:
      - finance explicitly requests another ERP publication after failed result

  settlement_correction_request:
    meaning:
      - after finance/ERP progress, a correction is requested through explicit controlled path

  exceptional_admin_recovery:
    meaning:
      - operational recovery for exceptional cases
      - does not erase business history

# ============================================================
# 3. CORRECTION WINDOWS
# ============================================================

correction_windows:

  freely_editable_window:
    applies_when:
      - submit_state=draft
    meaning:
      - applicant may edit normal fields
      - normal draft behavior

  restricted_submit_window:
    applies_when:
      - submit_state=submitted
      - approval_state=pending or in_progress
    meaning:
      - ordinary applicant editing is blocked
      - only explicit withdraw path may reopen, if policy allows

  returned_reopen_window:
    applies_when:
      - submit_state=returned
      - approval_state=returned
    meaning:
      - applicant may correct defined fields and resubmit

  finance_block_reopen_window:
    applies_when:
      - finance_state=policy_blocked or evidence_defect
    meaning:
      - correction must follow explicit finance-returned correction path
      - correction is not silent free edit

  post_erp_window:
    applies_when:
      - erp_state=pending or confirmed
    meaning:
      - direct fact mutation is not allowed
      - only explicit corrective process is allowed

# ============================================================
# 4. APPLICANT CORRECTION RULES
# ============================================================

applicant_correction_rules:
- applicant may freely edit while report is draft
- applicant may correct after return/reopen
- applicant may not silently edit an in-review report unless withdraw path is explicitly allowed
- applicant may not directly edit ERP-pending or ERP-confirmed report facts
- applicant correction must preserve prior submission history once review has started

examples_of_correctable_fields_before_submit:
- title
- expense item facts
- receipts
- note
- template-derived content
- original amount/currency values

examples_of_restricted_fields_after_review_start:
- amount
- currency_code
- exchange_rate
- payment_method
- allocation fields
- evidence replacement
- category/tax meaning

# ============================================================
# 5. RETURN / RESUBMIT RULES
# ============================================================

return_resubmit_rules:
- return is corrective, not terminal
- return must include reason
- returned report becomes eligible for applicant correction through explicit reopen semantics
- resubmit creates a new review cycle while preserving prior history
- repeated return/resubmit cycles are allowed if policy does not limit them
- resubmit must not erase earlier return reason history

important_rule:
- returned is different from rejected
- returned means correct and try again
- rejected means current cycle is closed unless a new business path is started

# ============================================================
# 6. WITHDRAWAL RULES
# ============================================================

withdrawal_rules:
- withdrawal is allowed only if company policy allows it
- withdrawal should generally be limited to pre-final-approval stage
- withdrawal must be explicit and auditable
- withdrawal does not delete report history
- withdrawn report may move back to draft-like correction path only through explicit policy behavior
- withdrawal is not available after ERP publication request has begun

recommended_restriction:
- allow withdrawal before final approval
- block withdrawal after finance ready_for_erp or ERP request stage

# ============================================================
# 7. REJECTION RULES
# ============================================================

rejection_rules:
- rejection closes the current submission cycle
- rejection must include reason
- rejected report remains visible in history
- rejection is not deletion
- resubmission after rejection should require explicit new path if policy allows
- rejected report must not silently become approved or finance-ready

# ============================================================
# 8. FINANCE BLOCK / DEFECT RULES
# ============================================================

finance_block_defect_rules:
- finance may stop progression with policy_blocked
- finance may stop progression with evidence_defect
- both states are corrective, not silent terminal states
- both states require visible reason context
- correction from these states must go through explicit review restart
- finance should not directly rewrite applicant facts without explicit correction path

# ============================================================
# 9. EVIDENCE REPLACEMENT RULES
# ============================================================

evidence_replacement_rules:
- evidence replacement before submit is ordinary correction
- evidence replacement after submit is restricted and should be auditable
- evidence replacement after approval or finance review requires explicit corrective path
- replacement must not erase prior evidence history
- unreadable/rejected evidence may be replaced through controlled corrective flow

important_rule:
- replace is not equal to destroy prior evidence trace

# ============================================================
# 10. CURRENCY / RATE CORRECTION RULES
# ============================================================

currency_rate_correction_rules:
- original amount/currency correction before review is ordinary correction
- correction after submit is restricted
- correction after approval or finance review is highly sensitive
- exchange_rate changes after review must be explicitly auditable
- ERP pending/confirmed reports must not receive silent currency/rate mutation
- currency correction after review should reopen relevant review logic where policy requires

# ============================================================
# 11. ERP RETRY RULES
# ============================================================

erp_retry_rules:
- ERP retry is allowed only after failed ERP result
- retry must be explicit
- retry does not mean applicant fact mutation
- retry must preserve request/result chain history
- retry should reuse or regenerate idempotency semantics according to ERP contract policy
- retry must not be used to hide earlier ERP failures

important_rule:
- ERP retry is integration recovery, not business-history deletion

# ============================================================
# 12. POST-ERP CORRECTION RULES
# ============================================================

post_erp_correction_rules:
- ERP pending or confirmed state sharply limits ordinary correction
- post-ERP correction should use explicit correction request / reversal / reissue style path if needed
- app must not pretend the prior ERP request never happened
- post-ERP correction must preserve both prior and new states in history
- finance and ERP truth must remain explainable together

# ============================================================
# 13. SETTLEMENT CORRECTION RULES
# ============================================================

settlement_correction_rules:
- settled is normally terminal for ordinary user editing
- settlement-related correction requires explicit controlled path
- settlement correction does not silently unsettle history
- if reopened or corrected, the prior settlement event must remain visible
- reimbursement completion and accounting correction must both stay explainable

# ============================================================
# 14. EXCEPTIONAL ADMIN RECOVERY RULES
# ============================================================

exceptional_admin_recovery_rules:
- admin recovery exists for operational rescue, not silent business rewriting
- admin recovery must be rare, explicit, and auditable
- admin recovery must not fabricate approval, finance, or ERP truth
- admin recovery may restore queue visibility, unlock stuck technical state,
  or enable corrective path under governance rule
- admin recovery must preserve prior history and create its own audit event

# ============================================================
# 15. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- silent deletion of reviewed report history
- direct overwrite of approved facts without corrective path
- evidence replacement after approval with no audit trace
- ERP confirmed -> none by silent UI mutation
- settlement completed -> draft by silent reset
- rejection treated as if it never happened
- return reason or reject reason being dropped from history
- finance block removed with no visible corrective event
- device-specific shortcut that bypasses exception policy

# ============================================================
# 16. REOPEN POLICY RULE
# ============================================================

reopen_policy_rule:
- reopen must always answer:
  - who requested reopen
  - why reopen was needed
  - what stage was being reopened
  - what fields are now correctable
  - whether previous approval/finance judgment must be re-run
- reopen is a controlled business transition, not a generic edit unlock

# ============================================================
# 17. USER EXPERIENCE RULE
# ============================================================

user_experience_rule:
- user should understand whether they must:
  - correct
  - resubmit
  - wait
  - retry
  - contact finance/admin
- app should not present exception states as vague generic errors
- return, reject, policy block, evidence defect, ERP failed, and settled-correction-needed
  should remain distinguishable in UI and notifications

# ============================================================
# 18. HISTORY / AUDIT CONSEQUENCE
# ============================================================

history_audit_consequence:
- every exception action should create explicit history
- correction replaces current state only through visible later event
- prior meaningful state must stay explainable
- exception handling must strengthen traceability, not weaken it

# ============================================================
# 19. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps ExpenseSettlement safe by separating:
- correction from deletion
- return from rejection
- retry from overwrite
- post-review correction from ordinary draft edit
- ERP recovery from business fact mutation
- settlement correction from silent reset

