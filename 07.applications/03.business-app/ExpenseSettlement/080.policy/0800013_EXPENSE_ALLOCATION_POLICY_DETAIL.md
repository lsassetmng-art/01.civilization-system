# ============================================================
# EXPENSE ALLOCATION POLICY DETAIL
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines detailed allocation policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- allocation is a first-class business meaning, not a memo
- allocation requirement must be policy-driven and category-aware
- project allocation and department allocation must remain distinguishable
- amount-based allocation and ratio-based allocation must remain distinguishable
- iphone, android, pc, and tablet must preserve the same allocation meaning
- multilingual display may vary, but allocation policy meaning must remain canonical
- allocation must remain explainable for approval, finance, ERP handoff, and audit

# ============================================================
# 1. ALLOCATION DESIGN GOAL
# ============================================================

allocation_design_goal:
- assign expense meaning to the correct business destination
- support project-based, department-based, and mixed responsibility patterns
- make allocation requirement explicit before ERP handoff
- preserve traceability when one item/report is split across multiple destinations
- avoid hidden or informal allocation interpretation in finance review

# ============================================================
# 2. ALLOCATION DOMAINS
# ============================================================

allocation_domains:
- project_allocation
- department_allocation
- mixed_project_department_allocation
- report_level_allocation_if_policy_allows
- item_level_allocation

important_rule:
- item-level allocation is the default safer meaning
- report-level allocation, if allowed, must remain explicit and policy-bound
- allocation domain must not be inferred only from free-text notes

# ============================================================
# 3. ALLOCATION UNIT TYPES
# ============================================================

allocation_unit_types:
- by_amount
- by_ratio
- full_single_target
- inherited_default_then_confirmed

meaning_summary:

  by_amount:
    meaning:
      - allocation is expressed as explicit monetary amounts

  by_ratio:
    meaning:
      - allocation is expressed as percentages or fractions

  full_single_target:
    meaning:
      - one target receives 100 percent / full amount

  inherited_default_then_confirmed:
    meaning:
      - a default target is suggested from scope/context, but user confirmation is still required where policy says so

# ============================================================
# 4. TARGET TYPES
# ============================================================

target_types:
- project_code
- department_code
- project_and_department_pair

important_rule:
- target code remains canonical
- localized/project display names are presentation only
- target meaning must stay stable across language/device differences

# ============================================================
# 5. ALLOCATION CORE MODEL
# ============================================================

allocation_core_model:
- allocation_id
- allocation_scope_type
- expense_report_id_nullable
- expense_item_id_nullable
- target_type
- project_code_nullable
- department_code_nullable
- allocation_unit_type
- allocated_amount_nullable
- allocated_ratio_nullable
- allocation_sequence
- allocation_reason_code_nullable
- allocation_source_type
- created_at
- updated_at

notes:
- allocation_scope_type should indicate report-level or item-level
- allocation_source_type may indicate manual, defaulted, template-derived, or candidate-derived suggestion
- suggested/defaulted allocation is not final truth until confirmed under policy

# ============================================================
# 6. ITEM-LEVEL DEFAULT RULE
# ============================================================

item_level_default_rule:
- item-level allocation should be the default interpretation
- each item may have zero, one, or multiple allocation rows according to policy
- allocation should remain tied to the item where the business meaning differs across items
- report-level convenience must not erase item-level explainability

# ============================================================
# 7. REPORT-LEVEL ALLOCATION RULE
# ============================================================

report_level_allocation_rule:
- report-level allocation may be allowed only if policy explicitly supports it
- report-level allocation should be limited to simple cases where all items share the same destination meaning
- report-level allocation must remain visibly different from item-level allocation
- report-level allocation should not silently propagate into incompatible item meanings

important_rule:
- if report contains mixed destination meanings, item-level allocation should be required

# ============================================================
# 8. CATEGORY-DRIVEN ALLOCATION RULE
# ============================================================

category_driven_allocation_rule:
- category master may define whether allocation is:
  - required
  - optional
  - forbidden
- category may define whether project_code, department_code, or both are needed
- category-linked allocation requirement must be visible to applicant and finance
- category policy should be the baseline, with project/company policy refinements allowed

examples:
- some travel categories may require project allocation
- some office supply categories may allow department allocation only
- some welfare/internal categories may forbid project allocation

# ============================================================
# 9. PROJECT / DEPARTMENT REQUIREMENT RULE
# ============================================================

project_department_requirement_rule:
- project-required categories must block progression if project_code is missing
- department-required categories must block progression if department_code is missing
- if both are required, both must be present or correctly paired
- optional allocation must remain explicitly optional, not silently assumed complete

# ============================================================
# 10. MULTI-ROW SPLIT RULE
# ============================================================

multi_row_split_rule:
- one item may be split across multiple allocation rows if policy allows
- each allocation row must preserve target meaning explicitly
- split allocation must remain explainable in approval, finance, and ERP handoff
- one item's split must not silently exceed or undershoot total item meaning

examples:
- one expense item split across two projects
- one item split across one project and one department pair set
- one item split by ratio across several cost destinations

# ============================================================
# 11. BY-AMOUNT RULE
# ============================================================

by_amount_rule:
- allocated_amount values must reconcile to the source item/report amount
- currency meaning of allocated_amount must remain explainable
- amount-based allocation is preferred where precise monetary distribution is required
- by-amount split must still respect rounding policy

important_rule:
- by-amount sum must equal source amount according to policy-defined tolerance
- unexplained residue is not allowed

# ============================================================
# 12. BY-RATIO RULE
# ============================================================

by_ratio_rule:
- allocated_ratio values must reconcile to 100 percent / 1.0 according to policy
- ratio-based allocation may be converted into amount meaning for display/ERP handoff
- ratio policy must define precision and rounding behavior
- ratio-based allocation must remain explainable after rounding

important_rule:
- ratio total must be explainable and policy-consistent
- ratio-derived amount results must not drift unpredictably across devices

# ============================================================
# 13. ROUNDING RULE
# ============================================================

allocation_rounding_rule:
- rounding policy must be centrally defined
- same source item must produce the same allocation result across devices
- remainder handling must be deterministic
- by-ratio allocation should define where rounding residual goes
- finance review must be able to explain rounded split results

recommended_pattern:
- define one deterministic remainder distribution rule
- for example:
  - largest remainder target
  - last row absorbs remainder
  - policy-defined priority row absorbs remainder

# ============================================================
# 14. DEFAULT / SUGGESTED ALLOCATION RULE
# ============================================================

default_suggested_allocation_rule:
- app may suggest default project/department allocation from:
  - applicant scope
  - template
  - candidate source
  - recent usage pattern
- suggestion is not final truth where policy requires confirmation
- inherited defaults must remain distinguishable from confirmed allocation
- default suggestions must not bypass required user/finance review

# ============================================================
# 15. APPROVAL VIEW RULE
# ============================================================

approval_view_rule:
- approver should be able to see allocation meaning where it affects approval
- approver should not need to resolve hidden allocation logic from raw notes
- allocation-sensitive categories/routes should make allocation visible
- approver may flag obvious allocation issues through return/reject path where policy allows

# ============================================================
# 16. FINANCE REVIEW RULE
# ============================================================

finance_review_allocation_rule:
- finance must verify allocation completeness where required
- finance must verify reconciliation of split rows
- finance must distinguish missing allocation, invalid target, and inconsistent split
- finance may block ready_for_erp if allocation is invalid or incomplete
- finance must not silently invent allocation meaning with no trace

examples_of_finance_block:
- project-required item missing project
- split total does not reconcile
- forbidden target type used
- inactive/invalid target code used
- pairing rule violated for project_and_department_pair policy

# ============================================================
# 17. ERP HANDOFF RULE
# ============================================================

erp_handoff_allocation_rule:
- allocation meaning must be preserved in ERP handoff where ERP contract requires it
- app-side allocation must remain explainable against ERP posting target structure
- ERP mapping support must not erase original app allocation meaning
- if ERP needs flattened allocation rows, the transformation must still be traceable

important_rule:
- allocation transformation for ERP is not the same as allocation truth creation

# ============================================================
# 18. HISTORY / AUDIT RULE
# ============================================================

allocation_history_audit_rule:
- allocation changes after submit must remain traceable
- allocation changes after approval/finance review require explicit corrective path
- split changes, target changes, and unit-type changes are all audit-relevant
- policy-required allocation at decision time must remain explainable later

# ============================================================
# 19. ACTIVE / INVALID TARGET RULE
# ============================================================

active_invalid_target_rule:
- inactive or invalid target codes should not be accepted for new valid allocation
- historical references to once-valid targets must remain explainable
- target retirement must not destroy old history meaning
- replacement/default migration behavior must be policy-defined if needed

# ============================================================
# 20. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- storing allocation only in free-text note
- silently converting report-level meaning into item-level truth
- silently inventing project/department code in finance review
- allowing split sums to drift without explanation
- device-specific allocation calculation differences
- using localized display text as canonical target identity
- changing allocation after review with no audit trace

# ============================================================
# 21. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact categories that require project allocation
- exact categories that require department allocation
- exact allowance for report-level allocation
- exact split precision/rounding rules
- exact remainder distribution rule
- exact default suggestion strategy
- exact invalid/inactive target handling policy

note:
- this document fixes allocation structure and semantics
- exact company-specific matrices can be added later

# ============================================================
# 22. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps allocation safe by separating:
- project from department meaning
- amount split from ratio split
- suggested default from confirmed allocation
- item-level truth from report-level convenience
- allocation transformation from allocation creation

