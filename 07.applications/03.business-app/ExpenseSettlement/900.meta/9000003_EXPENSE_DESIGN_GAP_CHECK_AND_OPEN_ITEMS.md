# ============================================================
# EXPENSE DESIGN GAP CHECK AND OPEN ITEMS
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Checks current design coverage, identifies remaining gaps,
and re-fixes open items before any implementation discussion.

design_scope_checkpoint:
- this document is for design completeness checking only
- this document does not authorize implementation
- this document does not define DDL, code, or build work
- this document exists to verify whether the current design set is coherent enough

# ============================================================
# 1. CURRENT DESIGN COVERAGE CHECK
# ============================================================

current_design_coverage_check:

  application_definition:
    status: covered
    notes:
      - application role is defined as BusinessOS-side lightweight but serious expense front
      - ERP remains source of truth

  top_level_requirements:
    status: covered
    notes:
      - multilingual support fixed
      - multi currency support fixed
      - iphone support fixed
      - android support fixed
      - pc support fixed
      - tablet support fixed

  competitor_comparison:
    status: covered
    notes:
      - rival comparison performed
      - differentiation direction fixed

  feature_scope:
    status: covered
    notes:
      - MUST + SHOULD all included in initial release
      - LATER kept separate

  screen_map_navigation:
    status: covered
    notes:
      - employee / approver / finance / support screens defined
      - major navigation flows defined

  exact_payload_contract:
    status: covered
    notes:
      - main request / response exact payloads fixed at design level

  physical_data_model:
    status: covered
    notes:
      - physical model meaning fixed
      - no implementation DDL yet

  state_transition_design:
    status: covered
    notes:
      - allowed / disallowed transitions defined

  authority_access_design:
    status: covered
    notes:
      - applicant / approver / finance / admin / system separated

  notification_design:
    status: covered
    notes:
      - action_required / status_update / failure_alert / reminder defined

  multi_currency_policy:
    status: covered
    notes:
      - original currency / converted currency / report currency meanings fixed

  multilingual_design:
    status: covered
    notes:
      - localization layers and glossary-controlled terms defined

  audit_history_evidence_design:
    status: covered
    notes:
      - auditability, history, evidence trace principles fixed

  exception_correction_cancellation_policy:
    status: covered
    notes:
      - correction vs cancellation vs retry vs reopen separated

  policy_exception_admin_operation_rule:
    status: covered
    notes:
      - governed exception and admin operation boundaries defined

# ============================================================
# 2. DESIGN AREAS THAT ARE SUFFICIENTLY SHAPED
# ============================================================

sufficiently_shaped_design_areas:
- business role of the app
- differentiation direction
- initial release breadth
- main user roles
- report/item/receipt object structure
- state model separation
- approval / finance / ERP separation
- multilingual principle
- multi currency principle
- auditability principle
- exception handling principle

summary_judgement:
The design is already beyond rough concept stage.
It has enough structure to be considered a serious canonical design set.

# ============================================================
# 3. REMAINING DESIGN GAPS
# ============================================================

remaining_design_gaps:

  - gap_id: GAP-001
    gap_name: approval_route_policy_detail
    status: open
    why_open:
      - multi-step approval is fixed, but detailed route policy conditions
        are not yet fully enumerated
    examples:
      - amount threshold routing
      - department-based routing
      - substitute approver priority
      - escalation timing

  - gap_id: GAP-002
    gap_name: finance_review_policy_detail
    status: open
    why_open:
      - finance states are fixed, but detailed review checklists and decision conditions
        are not yet enumerated enough
    examples:
      - exact policy-block patterns
      - exact evidence defect patterns
      - allocation validation depth

  - gap_id: GAP-003
    gap_name: category_master_policy
    status: open
    why_open:
      - expense categories are structurally assumed, but category master design is not yet fixed
    examples:
      - reimbursement categories
      - travel categories
      - evidence-required-by-category flags
      - default tax behavior by category

  - gap_id: GAP-004
    gap_name: template_master_policy
    status: open
    why_open:
      - templates are included in initial release, but template structure/control is not fixed
    examples:
      - personal templates vs company templates
      - localized template labels
      - template edit authority

  - gap_id: GAP-005
    gap_name: candidate_inbox_source_policy
    status: open
    why_open:
      - PocketSecretary linkage direction is fixed, but exact candidate source semantics are not yet fully fixed
    examples:
      - travel-derived candidate
      - memo-derived candidate
      - image-derived candidate
      - duplicate candidate merge rule

  - gap_id: GAP-006
    gap_name: evidence_policy_detail
    status: open
    why_open:
      - evidence handling exists, but precise evidence policy matrix is not fixed
    examples:
      - required file types
      - size limits
      - per-category evidence requirement
      - multiple receipts per item policy
      - original retention meaning

  - gap_id: GAP-007
    gap_name: allocation_policy_detail
    status: open
    why_open:
      - allocation fields are present, but allocation rule set is not fixed
    examples:
      - project/department mandatory combinations
      - split by amount
      - split by ratio
      - rounding policy for split allocation

  - gap_id: GAP-008
    gap_name: export_policy_detail
    status: open
    why_open:
      - export center exists, but export targets and formats are not fixed
    examples:
      - CSV/XLSX/PDF scope
      - finance-only exports
      - audit exports
      - multilingual export label policy

  - gap_id: GAP-009
    gap_name: reminder_policy_detail
    status: open
    why_open:
      - reminder categories exist, but cadence and suppression specifics are not fixed
    examples:
      - daily vs weekly reminder
      - month-close escalation timing
      - reminder quiet hours

  - gap_id: GAP-010
    gap_name: settlement_business_rule_detail
    status: open
    why_open:
      - settlement state exists, but settlement completion business rule is not fully fixed
    examples:
      - when settlement_state becomes pending
      - when settlement_state becomes settled
      - reimbursement vs company-paid distinction

# ============================================================
# 4. OPEN ITEMS THAT SHOULD BE DECIDED BEFORE IMPLEMENTATION TALK
# ============================================================

open_items_before_implementation_talk:

  - approval_route_threshold_policy
  - approval_substitute_policy
  - finance_checklist_policy
  - category_master_definition
  - template_master_definition
  - evidence_requirement_matrix
  - file policy for receipts and attachments
  - candidate source taxonomy
  - allocation rule detail
  - settlement completion rule
  - export policy
  - reminder cadence policy

# ============================================================
# 5. THINGS THAT ARE DELIBERATELY NOT DECIDED YET
# ============================================================

deliberately_not_decided_yet:
- actual database DDL
- actual API implementation
- actual mobile/web framework structure
- actual background job runtime
- actual OCR engine selection
- actual ERP connector implementation details
- actual push provider selection
- actual infra deployment choices

reason:
These belong to implementation or solution selection phases,
not current canonical design fixation.

# ============================================================
# 6. DESIGN QUALITY CHECK
# ============================================================

design_quality_check:

  business_meaning_separation:
    status: good
    notes:
      - submit / approval / finance / erp / settlement are clearly separated

  auditability:
    status: good
    notes:
      - additive history principle is consistently applied

  globalization_readiness:
    status: good
    notes:
      - multilingual and multi currency are treated as first-class requirements

  multi_device_readiness:
    status: good
    notes:
      - form-factor support is fixed at top level

  control_strength:
    status: good
    notes:
      - lightweight UX does not collapse governance boundaries

  differentiation:
    status: good
    notes:
      - PocketSecretary linkage + ERP source-of-truth separation is clear

  remaining_risk:
    status: moderate
    notes:
      - master/policy details still need more precise fixing before implementation talk

# ============================================================
# 7. RECOMMENDED NEXT DESIGN ORDER
# ============================================================

recommended_next_design_order:
- approval_route_policy_detail
- finance_review_policy_detail
- category_master_policy
- evidence_requirement_matrix
- template_master_policy
- candidate_inbox_source_policy
- allocation_policy_detail
- settlement_business_rule_detail
- export_policy_detail
- reminder_policy_detail

# ============================================================
# 8. CURRENT OVERALL JUDGEMENT
# ============================================================

current_overall_judgement:
ExpenseSettlement has reached a strong canonical design stage.
It is not implementation-ready,
but it is design-serious enough that remaining work is now mostly
policy detail fixing and master-detail refinement,
not foundation rethinking.

# ============================================================
# 9. NEXT-CHAT HANDOFF VALUE
# ============================================================

next_chat_handoff_value:
A future chat can continue from this point by selecting one remaining open area
and fixing it in canonical detail, without needing to reopen the whole application concept.

# ============================================================
# 10. CONCLUSION
# ============================================================

conclusion:
The design is structurally strong.
The main remaining work is not broad redefinition,
but precise rule fixing in approval, finance, category, evidence,
template, candidate, allocation, settlement, export, and reminder areas.

