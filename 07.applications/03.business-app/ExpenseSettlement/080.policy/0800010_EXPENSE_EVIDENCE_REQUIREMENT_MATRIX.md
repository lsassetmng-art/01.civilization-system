# ============================================================
# EXPENSE EVIDENCE REQUIREMENT MATRIX
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines evidence requirement matrix policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- evidence requirement must be policy-driven, not ad hoc reviewer guesswork
- category meaning and evidence requirement must be linked explicitly
- missing evidence, unreadable evidence, invalid evidence, and mismatched evidence
  must be treated as distinct conditions
- iphone, android, pc, and tablet must preserve the same evidence meaning
- multilingual display may vary, but evidence policy meaning must remain stable
- evidence policy must support reimbursement, corporate card, and advance settlement flows

# ============================================================
# 1. EVIDENCE MATRIX DESIGN GOAL
# ============================================================

evidence_matrix_design_goal:
- make required evidence predictable before submit
- support approver and finance review consistency
- distinguish submit-time checks from finance-time checks
- keep evidence handling auditable and explainable
- avoid silent policy drift by reviewer discretion alone

# ============================================================
# 2. EVIDENCE CONDITION TYPES
# ============================================================

evidence_condition_types:
- not_required
- required_at_submit
- required_by_finance_review
- required_if_threshold_exceeded
- required_if_category_policy_applies
- required_if_exception_path_applies
- multiple_allowed
- multiple_required
- unreadable_blocks
- mismatch_blocks

important_rule:
- evidence requirement is not one boolean only
- timing and severity must remain distinguishable

# ============================================================
# 3. EVIDENCE STATUS DISTINCTIONS
# ============================================================

evidence_status_distinctions:
- missing
- attached
- unreadable
- invalid_type
- mismatched
- accepted
- rejected

meaning_summary:
- missing:
    evidence required but not present
- attached:
    evidence exists but may still need review
- unreadable:
    evidence exists but content is not sufficiently usable
- invalid_type:
    file exists but violates file policy
- mismatched:
    evidence appears inconsistent with the item/report meaning
- accepted:
    evidence has passed relevant review
- rejected:
    evidence was explicitly rejected through review path

# ============================================================
# 4. EVIDENCE CHECK STAGES
# ============================================================

evidence_check_stages:
- applicant_entry_stage
- submit_validation_stage
- approver_review_stage
- finance_review_stage
- post_review_correction_stage

stage_meaning:

  applicant_entry_stage:
    meaning:
      - user sees requirement guidance and current attachment state

  submit_validation_stage:
    meaning:
      - app checks whether submission may proceed

  approver_review_stage:
    meaning:
      - approver checks evidence enough for approval decision scope where policy requires

  finance_review_stage:
    meaning:
      - finance checks evidence sufficiency for readiness to ERP

  post_review_correction_stage:
    meaning:
      - evidence replacement or completion happens through corrective path

# ============================================================
# 5. MATRIX AXES
# ============================================================

matrix_axes:
- expense_category_code
- payment_type
- threshold_band
- evidence_required_timing
- accepted_file_policy
- minimum_attachment_count
- multiple_attachment_allowed_flag
- unreadable_blocks_submit_flag
- unreadable_blocks_finance_flag
- mismatch_blocks_finance_flag
- notes_or_explanation_required_if_missing_flag
- exception_path_allowed_flag

# ============================================================
# 6. BASE MATRIX PRINCIPLE
# ============================================================

base_matrix_principle:
- category drives the baseline requirement
- payment type may refine the requirement
- threshold may strengthen the requirement
- exception path may temporarily alter timing, but not erase traceability
- finance review may impose stricter acceptance than submit validation

important_rule:
- submit-pass does not automatically mean finance-pass
- finance-pass does not erase earlier missing/unreadable history

# ============================================================
# 7. GENERIC REQUIREMENT PATTERNS
# ============================================================

generic_requirement_patterns:

  pattern_A:
    meaning:
      - evidence not required

  pattern_B:
    meaning:
      - at least one attachment required at submit

  pattern_C:
    meaning:
      - attachment may be absent at submit but required before finance ready_for_erp

  pattern_D:
    meaning:
      - one or more attachments required, and unreadable evidence blocks finance

  pattern_E:
    meaning:
      - multiple attachments required because one item commonly needs several proofs

  pattern_F:
    meaning:
      - evidence requirement becomes strict only above threshold/policy condition

# ============================================================
# 8. CATEGORY-LEVEL EXAMPLE MATRIX SHAPE
# ============================================================

category_level_example_matrix_shape:

  TRANSPORTATION_TRAIN:
    base_requirement_pattern: pattern_B
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: false
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  TRANSPORTATION_TAXI:
    base_requirement_pattern: pattern_B
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: false
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  BUSINESS_TRIP_LODGING:
    base_requirement_pattern: pattern_D
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  BUSINESS_TRIP_MEAL:
    base_requirement_pattern: pattern_B
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  ENTERTAINMENT_MEAL:
    base_requirement_pattern: pattern_D
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  OFFICE_SUPPLY:
    base_requirement_pattern: pattern_B
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  TRAINING_FEE:
    base_requirement_pattern: pattern_C
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  ADVANCE_SETTLEMENT:
    base_requirement_pattern: pattern_E
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  CORPORATE_CARD_ADJUSTMENT:
    base_requirement_pattern: pattern_C
    minimum_attachment_count: 1
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

  OTHER_EXPENSE_CONTROLLED:
    base_requirement_pattern: pattern_F
    minimum_attachment_count: 0
    multiple_attachment_allowed_flag: true
    unreadable_blocks_submit_flag: false
    unreadable_blocks_finance_flag: true
    mismatch_blocks_finance_flag: true

note:
- these are structural examples, not final company catalog values
- exact category rows may be fixed later without changing matrix design principle

# ============================================================
# 9. PAYMENT-TYPE REFINEMENT RULE
# ============================================================

payment_type_refinement_rule:
- reimbursement items may require direct evidence of employee-paid expense
- corporate-card items may require receipt but not the same reimbursement meaning
- advance settlement items may require adjustment-related supporting evidence
- payment type may strengthen or clarify evidence requirements
- payment type must not silently nullify category evidence requirements

# ============================================================
# 10. THRESHOLD REFINEMENT RULE
# ============================================================

threshold_refinement_rule:
- above policy-defined threshold, evidence requirement may become stricter
- threshold may increase minimum attachment count or review strictness
- threshold must use policy-defined comparison basis
- threshold-triggered evidence strengthening must be visible in rule explanation

examples:
- higher-value lodging may require invoice + receipt
- higher-value entertainment may require more supporting explanation/evidence

# ============================================================
# 11. SUBMIT-TIME BLOCK RULE
# ============================================================

submit_time_block_rule:
- if category/policy requires required_at_submit, missing evidence blocks submit
- invalid file type may block submit
- unreadable evidence may warn at submit but usually becomes stronger finance issue unless policy requires earlier block
- submit block must be explainable through structured validation reason

examples_of_submit_block:
- required receipt missing
- minimum attachment count not met
- attachment type not accepted
- category requires evidence before submit and none exists

# ============================================================
# 12. FINANCE-TIME BLOCK RULE
# ============================================================

finance_time_block_rule:
- unreadable evidence may block finance ready_for_erp
- mismatched evidence may block finance ready_for_erp
- evidence uploaded after submit but still insufficient may block finance
- policy-required evidence completion deadline may be checked here
- finance evidence_defect requires structured reason

examples_of_finance_block:
- receipt exists but unreadable
- receipt belongs to different item/date/merchant context
- supporting evidence set incomplete for advance settlement
- category-specific stronger evidence policy not satisfied

# ============================================================
# 13. MULTIPLE ATTACHMENT RULE
# ============================================================

multiple_attachment_rule:
- one item may allow multiple attachments where policy allows
- some categories may require multiple attachments
- attachment count alone is not enough; relevance still matters
- app must preserve each attachment's own evidence state/history

examples:
- lodging may need invoice + receipt
- advance settlement may need settlement support document + receipt evidence
- entertainment may need receipt + optional explanatory support if policy says so

# ============================================================
# 14. FILE POLICY LINK RULE
# ============================================================

file_policy_link_rule:
- evidence matrix links to file policy, not hard-coded file-handling details everywhere
- accepted file families should be centrally defined
- size/count limits should be centrally defined
- invalid_type and oversized handling must be distinguishable from missing evidence
- future OCR-ready handling should remain compatible with file policy

# ============================================================
# 15. MISMATCH RULE
# ============================================================

mismatch_rule:
- evidence may exist but appear inconsistent with item meaning
- mismatch may involve amount, date, merchant, category, or payment context
- mismatch must remain a distinct defect type from missing/unreadable
- mismatch confirmation should remain auditable

examples_of_mismatch:
- attached receipt date clearly conflicts with usage date beyond policy tolerance
- merchant context clearly inconsistent with category
- evidence seems attached to wrong item in multi-item report

# ============================================================
# 16. EXPLANATION-WHEN-MISSING RULE
# ============================================================

explanation_when_missing_rule:
- some policy scopes may allow explanation text for temporarily missing evidence
- explanation does not equal evidence
- explanation may support provisional flow only where policy allows
- explanation-based provisional handling must remain visible and auditable

# ============================================================
# 17. EXCEPTION PATH RULE
# ============================================================

exception_path_rule:
- evidence exception path may exist only under governed rule
- exception path must not destroy the fact that evidence was originally insufficient
- exception handling may delay timing but not remove traceability
- finance must still see that exception path was used

# ============================================================
# 18. HISTORY / AUDIT RULE
# ============================================================

history_audit_rule:
- evidence requirement satisfaction at submit time must remain explainable
- evidence defect at finance time must remain explainable
- evidence replacement must preserve prior history
- acceptance/rejection of evidence must remain visible for audit
- attachment metadata and state transitions are part of evidence trace

# ============================================================
# 19. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- treating all categories as one universal evidence rule
- using reviewer free-text alone as the only evidence policy source
- silently changing required evidence timing with no policy trace
- treating unreadable evidence as accepted without explicit review path
- treating mismatch as if it were only missing
- silently deleting previously attached evidence trace
- device-specific evidence requirement differences

# ============================================================
# 20. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact row-by-row company evidence matrix
- exact accepted file family policy
- exact threshold bands for stricter evidence
- exact explanation-allowed categories
- exact mismatch tolerance patterns
- exact multiple-required category rows
- exact unreadable-at-submit blocking policy per company scope

note:
- this document fixes matrix structure and semantics
- exact company rows can be filled later without rethinking the design model

# ============================================================
# 21. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps evidence handling safe by separating:
- missing from unreadable
- unreadable from mismatched
- submit-time sufficiency from finance-time sufficiency
- category baseline from threshold refinement
- evidence presence from evidence acceptance

