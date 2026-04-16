# ============================================================
# EXPENSE POLICY EXCEPTION AND ADMIN OPERATION RULE
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines policy exception handling and admin operation rules for
ExpenseSettlement initial release, without entering implementation.

design_policy:
- policy exception is not the same as silent bypass
- admin operation is not the same as business authority override
- exception handling must preserve traceability
- company policy scope must remain explicit
- multilingual and multi currency support must not weaken policy clarity
- iphone, android, pc, and tablet must follow the same policy meaning

# ============================================================
# 1. WHY THIS EXISTS
# ============================================================

why_this_exists:
- real operations sometimes require exceptional handling
- but exception support must not destroy control, auditability, or ERP truth
- the app must distinguish ordinary flow from governed exception flow

# ============================================================
# 2. EXCEPTION DOMAINS
# ============================================================

exception_domains:
- submission_exception
- approval_exception
- finance_review_exception
- evidence_exception
- currency_rate_exception
- ERP_publication_exception
- settlement_exception
- admin_recovery_exception
- delegation_exception

# ============================================================
# 3. EXCEPTION PRINCIPLES
# ============================================================

exception_principles:
- exception must be explicit
- exception must be rare
- exception must be reasoned
- exception must be auditable
- exception must be scope-bound
- exception must not silently rewrite prior business truth
- exception must not redefine ERP as non-source-of-truth

# ============================================================
# 4. WHAT COUNTS AS A POLICY EXCEPTION
# ============================================================

policy_exception_examples:
- allowing submit with a non-blocking policy warning under approved rule
- allowing late evidence completion under governed finance path
- allowing approved report to reopen through explicit governance path
- allowing manual exchange rate override under finance-controlled policy
- allowing delegated action during a temporary business continuity window
- allowing exceptional ERP retry/recovery path under finance control

not_policy_exception_examples:
- user typo correction in draft
- ordinary returned report correction
- ordinary ERP retry after failed result under standard process
- normal finance review action
- ordinary approval action in assigned route

# ============================================================
# 5. EXCEPTION AUTHORITY LEVELS
# ============================================================

exception_authority_levels:

  ordinary_user:
    may_request_exception:
      - yes
    may_grant_exception:
      - no

  approver:
    may_request_exception:
      - yes
    may_grant_exception:
      - only where policy explicitly delegates limited approval-stage exception authority

  finance:
    may_request_exception:
      - yes
    may_grant_exception:
      - only where finance-controlled policy explicitly allows

  admin:
    may_request_exception:
      - yes
    may_grant_exception:
      - only for governance/operational scopes explicitly defined
      - not as blanket business override

  governance_final_authority:
    meaning:
      - outside ordinary day-to-day actors
      - used only if the organization defines such a role/process

important_rule:
- possession of technical admin capability does not equal policy exception grant authority

# ============================================================
# 6. EXCEPTION REQUEST MINIMUM CONTENT
# ============================================================

exception_request_minimum_content:
  json_shape:
    exception_request_id: string
    company_id: string
    expense_report_id: string|null
    expense_item_id: string|null
    exception_domain: string
    requested_by_user_id: string
    requested_at: string
    requested_reason_code: string
    requested_reason_text: string
    requested_action_summary: string
    current_state_snapshot: object
    desired_outcome_summary: string
    related_refs: object|null

minimum_rule:
- exception must have reason
- exception must identify target object/scope
- exception must identify desired action
- exception must preserve current-state context

# ============================================================
# 7. EXCEPTION DECISION OUTPUT
# ============================================================

exception_decision_output:
  possible_outcomes:
    - approved
    - denied
    - approved_with_conditions
    - redirected_to_standard_flow

approved_with_conditions_examples:
- allow correction but require re-review
- allow evidence replacement but require finance reconfirmation
- allow manual rate override but require finance reason record
- allow reopen but block ERP publication until reconfirmed

important_rule:
- approved exception still does not erase prior history
- denied exception still remains visible as governance history if recorded

# ============================================================
# 8. SUBMISSION EXCEPTION RULES
# ============================================================

submission_exception_rules:
- submit with missing blocking data is not normally allowed
- if any exception policy allows provisional submission, the condition must be explicit
- provisional submission must remain visibly provisional
- standard users must not convert provisional exception flow into normal hidden success
- resubmission after exception must remain auditable

# ============================================================
# 9. APPROVAL EXCEPTION RULES
# ============================================================

approval_exception_rules:
- skipped approval steps are not allowed unless explicit delegated or governed exception path exists
- approval substitute must be explicit and auditable
- approver absence handling must not silently fabricate approval
- rejected report cannot be treated as approved by admin convenience
- return/reject reason requirements are not waived silently

# ============================================================
# 10. FINANCE REVIEW EXCEPTION RULES
# ============================================================

finance_review_exception_rules:
- finance may operate certain governed exceptions only where policy allows
- policy_blocked and evidence_defect may be conditionally reopened
- finance must not silently waive critical policy requirements
- if a waiver-like condition exists, it must be explicit, narrow, and auditable
- ready_for_erp under exception must remain distinguishable if conditions still exist

# ============================================================
# 11. EVIDENCE EXCEPTION RULES
# ============================================================

evidence_exception_rules:
- missing or unreadable evidence normally blocks progression where policy requires
- temporary evidence grace handling, if allowed, must be explicit
- post-approval evidence replacement requires explicit exception or corrective path
- evidence exception must preserve prior evidence history
- evidence exception must not imply evidence destruction or hidden substitution

# ============================================================
# 12. CURRENCY / RATE EXCEPTION RULES
# ============================================================

currency_rate_exception_rules:
- unsupported or inconsistent currency meaning normally blocks progression
- manual exchange rate override, if allowed, is an exception-grade action
- rate override must identify source and reason
- post-review currency/rate change requires explicit corrective or exception path
- ERP handoff must remain explainable even when exceptional rate handling occurs

# ============================================================
# 13. ERP EXCEPTION RULES
# ============================================================

erp_exception_rules:
- ERP result registration must not be manually fabricated as ordinary admin action
- failed ERP publication may be retried under standard process
- exceptional ERP recovery may exist only as governed operational path
- ERP confirmed state must not be removed silently
- app-side operational recovery must not contradict ERP truth

# ============================================================
# 14. SETTLEMENT EXCEPTION RULES
# ============================================================

settlement_exception_rules:
- settled reports are normally closed for ordinary users
- settlement correction requires explicit controlled path
- exceptional reopen for settlement correction must preserve previous settlement history
- settlement exception does not rewrite reimbursement history out of existence

# ============================================================
# 15. ADMIN OPERATION RULES
# ============================================================

admin_operation_rules:
- admin may manage configuration, visibility, and support-oriented recovery
- admin may not silently impersonate applicant, approver, or finance decisions
- admin may unlock stuck technical processing only through auditable operation
- admin may reopen access path only if policy allows and governance trace is created
- admin may not silently mark approved / ready_for_erp / erp_confirmed / settled

# ============================================================
# 16. WHAT ADMIN MAY DO
# ============================================================

what_admin_may_do:
- manage category masters
- manage template masters
- manage localization resources
- manage operational visibility settings
- restore notification/queue visibility if technically broken
- initiate governed recovery request
- coordinate scope-bound support actions
- inspect governance-authorized audit visibility

# ============================================================
# 17. WHAT ADMIN MAY NOT DO
# ============================================================

what_admin_may_not_do:
- silently approve reports
- silently reject reports
- silently rewrite applicant amount/currency facts
- silently bypass finance review
- silently fabricate ERP success
- silently erase evidence history
- silently remove policy block meaning
- silently reset settled flow to draft

# ============================================================
# 18. CONDITION-BOUND EXCEPTION RULE
# ============================================================

condition_bound_exception_rule:
- every approved exception should state conditions
- conditions may include:
  - re-review required
  - finance reconfirmation required
  - ERP hold required
  - evidence completion deadline
  - delegated scope expiration
  - reporting/governance follow-up required

important_rule:
- condition-free broad exception should be avoided

# ============================================================
# 19. EXCEPTION VISIBILITY RULE
# ============================================================

exception_visibility_rule:
- exception existence must be visible to authorized roles
- applicant should understand when their case is in exception path
- approver/finance should understand whether a case is standard or exceptional
- exception visibility must not rely only on free-text notes
- timeline/history should make exception events distinguishable

# ============================================================
# 20. EXCEPTION VS STANDARD FLOW RULE
# ============================================================

exception_vs_standard_flow_rule:
- standard flow remains primary
- exception flow is secondary and governed
- UI should encourage standard resolution first
- exception path should not become everyday hidden normal
- repeated exception patterns indicate policy/process redesign need

# ============================================================
# 21. GOVERNANCE CONSEQUENCE RULE
# ============================================================

governance_consequence_rule:
- repeated exceptions in the same domain should trigger policy review
- frequent manual rate overrides may indicate currency policy weakness
- frequent evidence grace handling may indicate intake UX weakness
- frequent admin recoveries may indicate runtime/operations design weakness
- exception data is useful for future design improvement

# ============================================================
# 22. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps ExpenseSettlement safe by separating:
- standard flow from exception flow
- operational support from business decision authority
- governed exception from silent bypass
- recovery from rewrite
- admin capability from accounting truth

