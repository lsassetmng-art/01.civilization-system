# ============================================================
# EXPENSE CATEGORY MASTER POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines expense category master policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- category master must drive business meaning, not only UI grouping
- category code and category display label must be separated
- category policy must remain stable across iphone, android, pc, and tablet
- multilingual display may vary, but category meaning must remain canonical
- category master must support multi currency, evidence policy,
  approval routing, finance review, and ERP handoff meaning
- category master is a policy object, not a casual label list

# ============================================================
# 1. CATEGORY MASTER DESIGN GOAL
# ============================================================

category_master_design_goal:
- provide canonical expense meaning for each item
- support consistent validation and review logic
- reduce ad hoc per-report interpretation
- make category-linked evidence/tax/payment/allocation rules explicit
- enable future category growth without redefining existing history

# ============================================================
# 2. CATEGORY MASTER CORE MODEL
# ============================================================

category_master_core_model:
- expense_category_code
- category_group_code
- display_name_key
- short_display_name_key
- description_key
- is_active
- valid_from
- valid_until
- sort_order
- policy_version_ref

important_rule:
- code is canonical
- display name is localized presentation
- changing display labels must not change historical category meaning

# ============================================================
# 3. REQUIRED CATEGORY ATTRIBUTES
# ============================================================

required_category_attributes:
- reimbursement_allowed_flag
- corporate_card_allowed_flag
- advance_settlement_allowed_flag
- receipt_required_flag
- receipt_multiple_allowed_flag
- unreadable_receipt_blocks_flag
- default_tax_category_code_nullable
- tax_required_flag
- project_required_flag
- department_required_flag
- duplicate_sensitivity_level
- route_policy_hint
- finance_review_sensitivity_level
- erp_mapping_key_or_equivalent_policy_ref
- notes_allowed_flag
- template_allowed_flag

notes:
- not every attribute has to be visually shown to end users
- but category policy meaning must exist canonically

# ============================================================
# 4. CATEGORY GROUP PRINCIPLE
# ============================================================

category_group_principle:
- categories may belong to larger category groups for policy organization
- category group is support structure, not a replacement for category code
- validation, routing, and finance review may use group-level defaults
- item always retains its specific category code

example_group_candidates:
- transportation
- business_trip
- meal_entertainment
- office_purchase
- communication
- training_education
- welfare_misc
- advance_adjustment
- corporate_card_related
- other_expense

# ============================================================
# 5. CATEGORY CODE RULE
# ============================================================

category_code_rule:
- category code must be unique within company policy scope
- category code should be stable over time
- code renaming should be avoided
- retired categories should generally be deactivated, not destructively replaced
- historical items must preserve original category code meaning

recommended_code_style:
- uppercase_snake_or_similar_canonical_style
- machine-stable, human-explainable enough for policy maintenance

examples:
- TRANSPORTATION_TRAIN
- TRANSPORTATION_TAXI
- BUSINESS_TRIP_LODGING
- BUSINESS_TRIP_MEAL
- ENTERTAINMENT_MEAL
- OFFICE_SUPPLY
- TRAINING_FEE
- ADVANCE_SETTLEMENT
- CORPORATE_CARD_MISC

# ============================================================
# 6. CATEGORY DISPLAY RULE
# ============================================================

category_display_rule:
- category code remains canonical
- category display name is localized by language
- category short display may be used in compact device UI
- display wording must not blur reimbursement vs corporate card vs advance meaning
- fallback language must exist for missing translations

# ============================================================
# 7. PAYMENT-TYPE COMPATIBILITY RULE
# ============================================================

payment_type_compatibility_rule:
- each category should define compatible payment patterns
- reimbursement and corporate_card meanings must remain distinct
- advance_settlement-compatible categories must be explicit
- mixed/invalid payment-category combinations must be blockable

examples:
- ADVANCE_SETTLEMENT category must not be treated like ordinary reimbursement item
- some categories may allow reimbursement only
- some categories may allow reimbursement + corporate card
- some categories may be correction/adjustment-only

# ============================================================
# 8. EVIDENCE POLICY LINK RULE
# ============================================================

evidence_policy_link_rule:
- category master must link to evidence requirement meaning
- receipt_required_flag is minimum baseline
- some categories may require stronger evidence than others
- some categories may allow multiple receipts
- evidence-required meaning must remain explainable in applicant, approver, and finance views

important_rule:
- category should not hard-code all evidence detail text directly
- category links to evidence policy matrix / rule meaning

# ============================================================
# 9. TAX POLICY LINK RULE
# ============================================================

tax_policy_link_rule:
- category may define default tax meaning
- category may require tax entry
- category may allow no-tax or unknown-tax according to policy
- tax policy must not rely only on free-text interpretation
- category-tax incompatibility must be blockable in finance review

# ============================================================
# 10. ALLOCATION POLICY LINK RULE
# ============================================================

allocation_policy_link_rule:
- category may require project code
- category may require department code
- category may allow optional allocation
- allocation-required meaning must be explicit and auditable
- category may influence allowed allocation style in future policy

# ============================================================
# 11. APPROVAL / FINANCE POLICY LINK RULE
# ============================================================

approval_finance_policy_link_rule:
- category may influence approval route expansion
- category may increase finance review sensitivity
- category may trigger stricter evidence/tax/allocation review
- category policy influence must be explicit, not hidden

examples:
- business_trip categories may require stricter evidence review
- entertainment categories may require stronger finance scrutiny
- advance/corporate-card-related categories may require route expansion

# ============================================================
# 12. DUPLICATE RISK LINK RULE
# ============================================================

duplicate_risk_link_rule:
- category may define duplicate sensitivity guidance
- high-risk categories may require stricter duplicate suspicion handling
- duplicate sensitivity must support review, not silently auto-convict users
- category-linked duplicate policy must remain explainable

# ============================================================
# 13. ERP MAPPING LINK RULE
# ============================================================

erp_mapping_link_rule:
- category master should support ERP handoff mapping meaning
- app category meaning and ERP target meaning must be relatable
- ERP mapping support does not mean app category must become ERP-owned concept
- category must remain app/business meaning first, with explicit mapping support

important_rule:
- ERP mapping changes should not destroy prior category history meaning

# ============================================================
# 14. TEMPLATE LINK RULE
# ============================================================

template_link_rule:
- category may participate in reusable templates
- template_allowed_flag determines whether category may appear in common user/company templates
- template support must not bypass category validation
- localized template names must not alter category code meaning

# ============================================================
# 15. ACTIVE / RETIRED CATEGORY RULE
# ============================================================

active_retired_category_rule:
- category may become inactive for new use
- inactive category remains valid for historical display and audit
- retired category should not be physically deleted if referenced historically
- replacement category should be explicit if policy provides one
- template use should be blocked or warned for inactive categories

# ============================================================
# 16. CATEGORY VERSIONING RULE
# ============================================================

category_versioning_rule:
- category master may evolve through policy versions
- policy version reference should explain which category meaning/rules were active
- major category rule change should preserve interpretability of past reports
- category display change alone does not require business-meaning version reset
- category business rule change may require policy-version distinction

# ============================================================
# 17. CATEGORY MASTER OWNERSHIP RULE
# ============================================================

category_master_ownership_rule:
- category master is company/policy-governed
- ordinary applicant does not create arbitrary categories
- admin/governed role may maintain category master
- finance may influence policy but should not silently redefine category meaning during review
- category maintenance must be auditable at governance level

# ============================================================
# 18. INITIAL CATEGORY SET SHAPE
# ============================================================

initial_category_set_shape:
- transportation
- business_trip_lodging
- business_trip_meal
- business_trip_misc
- entertainment_meal
- office_supply
- communication_cost
- training_fee
- welfare_misc
- advance_settlement
- corporate_card_adjustment
- other_expense_controlled

note:
- these are structural shape examples
- exact category catalog can be finalized later under company policy detail

# ============================================================
# 19. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- using raw localized label as canonical category identifier
- allowing applicant free-text categories as canonical category source
- silently reinterpreting old category code to new meaning
- deleting historically used category meaning
- mixing reimbursement / corporate card / advance meaning ambiguously
- using device-specific category semantics
- using ERP mapping as the only category meaning

# ============================================================
# 20. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact category catalog by company scope
- exact group taxonomy
- exact duplicate sensitivity levels
- exact default tax linkage
- exact route sensitivity mapping
- exact ERP mapping references
- exact inactive-category replacement policy

note:
- this document fixes the master policy structure
- the exact catalog values can be filled later without changing the design frame

# ============================================================
# 21. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps expense categories safe by separating:
- canonical code from localized label
- category meaning from casual UI wording
- category policy from free-text human guesswork
- app-side category meaning from ERP mapping meaning
- active usage from historical retention

