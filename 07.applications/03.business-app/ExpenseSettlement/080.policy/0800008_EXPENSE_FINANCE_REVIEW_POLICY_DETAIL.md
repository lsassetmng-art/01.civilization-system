# ============================================================
# EXPENSE FINANCE REVIEW POLICY DETAIL
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines detailed finance review policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- finance review is mandatory after approval completion
- finance review meaning must remain separate from approval meaning
- finance review must decide readiness for ERP, not silently rewrite business facts
- finance review must be explicit, explainable, and auditable
- multilingual display may vary, but finance decision meaning must remain stable
- multi currency review must remain visible where relevant
- iphone, android, pc, and tablet must preserve the same finance review meaning

# ============================================================
# 1. FINANCE REVIEW DESIGN GOAL
# ============================================================

finance_review_design_goal:
- confirm accounting readiness after approval completion
- detect policy blockers and evidence defects
- determine whether ERP publication may proceed
- keep review explainable to applicant, approver, finance, and audit stakeholders
- avoid hidden finance-side fact rewriting

# ============================================================
# 2. ENTRY CONDITION TO FINANCE REVIEW
# ============================================================

entry_condition_to_finance_review:
- approval_state must be approved
- submit_state must be submitted or resubmitted lineage-complete
- report must be inside company and finance scope
- route completion must be auditable
- finance review may start only when required approval route is complete
- exception path, if any, must already be explicit

not_allowed_entry_examples:
- approval pending but finance starts ordinary final review
- rejected report enters finance review
- returned report enters finance review
- ERP failed retry used as substitute for skipped finance review

# ============================================================
# 3. FINANCE REVIEW OUTPUT STATES
# ============================================================

finance_review_output_states:
- pending_review
- ready_for_erp
- policy_blocked
- evidence_defect

state_meaning:

  pending_review:
    meaning:
      - report is awaiting finance decision or is under active finance handling

  ready_for_erp:
    meaning:
      - finance confirms report may proceed to explicit ERP publication request

  policy_blocked:
    meaning:
      - report cannot proceed because policy/accounting conditions are not satisfied

  evidence_defect:
    meaning:
      - report cannot proceed because evidence is missing, unreadable, invalid,
        or insufficient according to policy

important_rule:
- ready_for_erp is not ERP confirmed
- policy_blocked and evidence_defect are corrective states, not silent terminal deletion

# ============================================================
# 4. FINANCE REVIEW CHECK DOMAINS
# ============================================================

finance_review_check_domains:
- report_completeness
- category_policy_conformity
- evidence_conformity
- amount_currency_conformity
- tax_conformity
- payment_method_conformity
- allocation_conformity
- duplicate_risk_review
- approval_route_completion_check
- ERP_handoff_readiness

# ============================================================
# 5. REPORT COMPLETENESS RULE
# ============================================================

report_completeness_rule:
- required report-level fields must be present
- report total must be explainable from item-level facts
- applicant identity and scope must be resolvable
- review-target object must not be structurally incomplete
- mandatory history/context for finance review must be visible

examples_of_completeness_failure:
- report header missing required values
- report total inconsistent with current valid items
- missing applicant scope reference needed for finance policy
- broken report structure after correction cycle

# ============================================================
# 6. CATEGORY POLICY CONFORMITY RULE
# ============================================================

category_policy_conformity_rule:
- each item category must be allowed by category policy
- category-specific evidence requirements must be satisfied
- category-specific route/finance rules must be satisfied
- mixed-category reports must remain explainable against policy

examples_of_category_policy_block:
- disallowed category for reimbursement path
- category requires extra evidence not present
- category requires project allocation but project missing
- category requires finance-sensitive review condition not satisfied

# ============================================================
# 7. EVIDENCE CONFORMITY RULE
# ============================================================

evidence_conformity_rule:
- evidence required by category/policy must exist
- evidence must be readable enough for finance review where policy requires
- evidence metadata/integrity context must be available
- evidence replacement after review must remain traceable
- evidence policy may distinguish missing vs unreadable vs invalid

examples_of_evidence_defect:
- required receipt missing
- receipt unreadable
- attached file type not accepted by policy
- evidence appears mismatched to item
- evidence was replaced but corrective path not followed

# ============================================================
# 8. AMOUNT / CURRENCY CONFORMITY RULE
# ============================================================

amount_currency_conformity_rule:
- item amount and currency must be explicit
- report currency aggregation must be explainable
- conversion basis must satisfy policy where cross-currency is used
- finance must be able to see original and converted meaning where relevant
- unsupported or inconsistent currency meaning blocks progression

examples_of_amount_currency_block:
- missing currency_code
- converted_amount exists without converted_currency_code
- exchange_rate required but missing
- mixed-currency report total not explainable
- currency/rate was changed after review without corrective path

# ============================================================
# 9. TAX CONFORMITY RULE
# ============================================================

tax_conformity_rule:
- tax-related fields required by policy must be present
- tax category must be compatible with category/payment context where policy requires
- finance review must distinguish unknown tax meaning from accepted no-tax case

examples_of_tax_block:
- tax category required but missing
- tax amount incompatible with selected tax treatment
- tax treatment unsupported for the given expense pattern by policy

# ============================================================
# 10. PAYMENT METHOD CONFORMITY RULE
# ============================================================

payment_method_conformity_rule:
- payment_method and payment_type must remain distinguishable
- reimbursement item and corporate-card item must not be silently conflated
- advance settlement meaning must remain explicit
- payment pattern must match policy and route context where required

examples_of_payment_block:
- corporate card item treated as reimbursement with no policy path
- advance settlement item lacks advance linkage meaning
- payment type conflicts with allowed category policy

# ============================================================
# 11. ALLOCATION CONFORMITY RULE
# ============================================================

allocation_conformity_rule:
- project/department allocation must satisfy policy if required
- allocation sums must remain explainable against item/report amount
- allocation-required categories must not proceed with missing allocation
- mixed allocation logic must be deterministic

examples_of_allocation_block:
- project-required item without project code
- split allocation total does not reconcile
- department allocation required but absent
- allocation uses unsupported pattern for policy scope

# ============================================================
# 12. DUPLICATE RISK REVIEW RULE
# ============================================================

duplicate_risk_review_rule:
- duplicate suspicion must be reviewed before ERP publication readiness
- confirmed_duplicate blocks normal progression
- suspected duplicate may require explicit finance/approver clearance according to policy
- duplicate clearance must remain auditable

examples_of_duplicate_block:
- receipt hash strongly matches prior reimbursed item
- same amount/date/merchant pattern unresolved
- prior duplicate suspicion remains uncleared

# ============================================================
# 13. APPROVAL ROUTE COMPLETION CHECK RULE
# ============================================================

approval_route_completion_check_rule:
- finance review must verify that required approval route completed properly
- skipped or substituted steps must be policy-valid and auditable
- route version and actual acted steps must remain explainable
- finance must not silently normalize broken approval path

examples_of_route_block:
- required approval step missing
- substitute approver acted outside valid scope
- route regeneration history is inconsistent
- report entered finance without completed final approval

# ============================================================
# 14. ERP HANDOFF READINESS RULE
# ============================================================

erp_handoff_readiness_rule:
- finance may mark ready_for_erp only when policy, evidence, route,
  and structural checks all pass
- ready_for_erp means report is allowed to proceed to explicit ERP publication request
- finance must not mark ready_for_erp merely because applicant/approver intent exists
- ERP-specific required fields must be sufficiently available for contract-safe handoff

examples_of_not_ready_for_erp:
- missing accounting-relevant code/value
- unresolved policy block
- unresolved evidence defect
- unresolved duplicate issue
- report uses unsupported currency/payload pattern for ERP contract scope

# ============================================================
# 15. FINANCE DECISION TYPES
# ============================================================

finance_decision_types:
- mark_ready_for_erp
- mark_policy_blocked
- mark_evidence_defect
- restart_pending_review_after_correction
- confirm_settlement_if_process_requires
- request_explicit_erp_retry_after_failed_result

important_rule:
- finance decision must always be explicit
- finance decision must not be implied only by queue disappearance

# ============================================================
# 16. DECISION REASON RULE
# ============================================================

decision_reason_rule:
- policy_blocked requires reason
- evidence_defect requires reason
- restart after correction should preserve prior reason history
- ready_for_erp should remain explainable even if short reason is optional
- structured reason code is preferred over free text alone

recommended_reason_structure:
- reason_code
- reason_summary
- optional_reason_detail

# ============================================================
# 17. FINANCE REVIEW RESTART RULE
# ============================================================

finance_review_restart_rule:
- reports corrected after policy_blocked or evidence_defect return to pending_review
- restart must preserve prior finance history
- restart is not silent clearing of prior defect
- corrected report may need refreshed validation and/or route-sensitive checks
- restart should remain linked to the blocking decision it resolves

# ============================================================
# 18. WHAT FINANCE MAY NOT DO
# ============================================================

finance_may_not_do:
- silently edit applicant facts as if they were originally entered that way
- silently waive critical blocking policy with no trace
- mark ERP confirmed directly
- erase evidence history
- bypass duplicate block without explicit action
- replace approval meaning with finance judgment
- treat missing route completion as acceptable by convenience

# ============================================================
# 19. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact finance checklist items by category
- exact block reason code catalog
- exact evidence defect reason catalog
- exact tax-required patterns
- exact ERP-required finance preconditions
- exact allocation-required category matrix
- whether some low-risk cases allow simplified finance review path

note:
- this document fixes structure and finance decision logic
- organization-specific checklists may be added later as master/policy detail

# ============================================================
# 20. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps finance review safe by separating:
- approval completion from finance readiness
- evidence defect from policy block
- structural completeness from ERP success
- corrective restart from silent reset
- finance judgment from applicant fact rewriting

