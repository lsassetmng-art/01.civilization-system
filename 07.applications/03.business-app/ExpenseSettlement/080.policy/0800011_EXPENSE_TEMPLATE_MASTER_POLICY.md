# ============================================================
# EXPENSE TEMPLATE MASTER POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines template master policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- templates are productivity support, not business truth override
- template id and template display label must be separated
- templates must not bypass category, evidence, approval, finance, or ERP policy
- templates must behave consistently across iphone, android, pc, and tablet
- multilingual display may vary, but template meaning must remain canonical
- multi currency support must remain explicit when templates influence amount/currency defaults

# ============================================================
# 1. TEMPLATE MASTER DESIGN GOAL
# ============================================================

template_master_design_goal:
- reduce repetitive entry work
- speed up common expense creation
- preserve policy-safe data reuse
- separate user convenience from canonical business validation
- support both individual and company-governed reusable patterns

# ============================================================
# 2. TEMPLATE TYPES
# ============================================================

template_types:
- personal_template
- company_template
- guided_template
- category_quick_template
- business_trip_bundle_template
- advance_settlement_template
- corporate_card_template

type_meaning:

  personal_template:
    meaning:
      - reusable pattern defined by one user for their own convenience

  company_template:
    meaning:
      - reusable pattern governed and published by company/admin scope

  guided_template:
    meaning:
      - template that helps the user fill a scenario, but still requires explicit confirmation

  category_quick_template:
    meaning:
      - lightweight default pattern for one category or category family

  business_trip_bundle_template:
    meaning:
      - grouped multi-item starting structure for trip-related entries

  advance_settlement_template:
    meaning:
      - structured starting pattern for advance adjustment/settlement

  corporate_card_template:
    meaning:
      - structured starting pattern for corporate-card-based items

# ============================================================
# 3. TEMPLATE MASTER CORE MODEL
# ============================================================

template_master_core_model:
- template_id
- template_type
- template_code_nullable
- owner_scope_type
- owner_scope_ref
- display_name_key_or_user_title
- description_key_or_user_note
- is_active
- sort_order
- valid_from
- valid_until
- policy_version_ref
- category_default_set_json
- item_default_set_json
- visibility_scope
- edit_authority_scope

important_rule:
- template is a reusable preset definition
- template is not the same thing as created report/item data

# ============================================================
# 4. OWNER / SCOPE RULE
# ============================================================

owner_scope_rule:
- personal_template belongs to one applicant scope
- company_template belongs to company/admin-governed scope
- guided_template may be system- or company-governed
- ordinary applicants do not edit company templates unless explicit policy allows
- templates must remain scope-safe and company-bound where business meaning requires it

# ============================================================
# 5. TEMPLATE ID VS DISPLAY RULE
# ============================================================

template_id_vs_display_rule:
- template_id is canonical and stable
- display title may be localized or user-entered
- localized template labels must not redefine canonical template meaning
- display name changes must not silently change validation/business behavior

# ============================================================
# 6. WHAT TEMPLATES MAY PRE-FILL
# ============================================================

templates_may_prefill:
- common title pattern
- common category
- common payment method
- common payment type
- common project code if policy/scope allows
- common department code if policy/scope allows
- common note skeleton
- common item structure
- common trip bundle composition
- common advance adjustment structure
- common corporate-card usage structure

important_rule:
- prefill is a convenience suggestion
- prefilled value still goes through standard validation and policy checks

# ============================================================
# 7. WHAT TEMPLATES MUST NOT SILENTLY FIX
# ============================================================

templates_must_not_silently_fix:
- approval result
- finance review result
- ERP readiness
- ERP mapping completion
- evidence accepted status
- duplicate clearance
- policy exception grant
- final exchange rate truth
- final settlement completion

important_rule:
- templates may speed entry
- they must not simulate review or accounting truth

# ============================================================
# 8. CATEGORY LINK RULE
# ============================================================

category_link_rule:
- template may propose one or more categories
- category defaults must remain compatible with category master policy
- inactive or retired categories should not remain silently usable in templates
- category-linked evidence/tax/allocation requirements still apply after template use

# ============================================================
# 9. EVIDENCE LINK RULE
# ============================================================

evidence_link_rule:
- template may remind user of expected evidence
- template may not mark evidence as satisfied
- template may display expected evidence pattern derived from category policy
- template may include evidence guidance text or hint keys
- template use must not weaken evidence matrix enforcement

# ============================================================
# 10. MULTI-CURRENCY TEMPLATE RULE
# ============================================================

multi_currency_template_rule:
- template may suggest currency-related defaults where policy allows
- template must not hide original currency meaning
- template may prefill report_currency_code or item currency_code if appropriate
- cross-currency templates must remain explicit
- exchange_rate is not automatically treated as final truth merely because template suggested a value

examples:
- personal trip template may suggest USD for a common overseas trip pattern
- company template may suggest base report currency
- user must still confirm actual amount/currency facts

# ============================================================
# 11. MULTI-ITEM TEMPLATE RULE
# ============================================================

multi_item_template_rule:
- one template may generate one item or multiple starter items
- business_trip_bundle_template may generate a structured set of draft items
- template-generated multiple items must still be individually editable and validatable
- multi-item template must not hide the resulting item-level category meaning

# ============================================================
# 12. PERSONAL TEMPLATE RULE
# ============================================================

personal_template_rule:
- applicant may create personal templates where policy allows
- personal templates are visible only within allowed user scope
- personal templates must not reference unauthorized company/private data beyond allowed scope
- personal template use remains subject to current company policy
- personal templates may become invalid if underlying policy changes

# ============================================================
# 13. COMPANY TEMPLATE RULE
# ============================================================

company_template_rule:
- company templates are governed reusable patterns
- company templates should support common compliant use cases
- company templates should be maintained by authorized admin/governance scope
- company templates may include multilingual labels and standardized guidance
- company templates should be preferred when the company wants consistency

# ============================================================
# 14. GUIDED TEMPLATE RULE
# ============================================================

guided_template_rule:
- guided templates may help users through a scenario step-by-step
- guided templates are especially useful for trip, advance, and corporate-card cases
- guided template may ask additional clarifying inputs before generating draft items
- guided template remains a support flow, not an approval/finance shortcut

# ============================================================
# 15. TEMPLATE VALIDITY RULE
# ============================================================

template_validity_rule:
- template may be active or inactive
- inactive template should not be selectable for new creation
- historical use of an inactive template remains explainable
- templates may expire via valid_until
- using expired template should be blocked or warned according to policy

# ============================================================
# 16. TEMPLATE VERSIONING RULE
# ============================================================

template_versioning_rule:
- materially changed template meaning should create version distinction or clear update semantics
- template display wording update alone may not need business version shift
- if category/policy defaults change materially, template history should remain explainable
- generated reports/items must retain their own facts even if the template later changes

important_rule:
- created object history belongs to the created report/item, not to current template snapshot only

# ============================================================
# 17. TEMPLATE EDIT AUTHORITY RULE
# ============================================================

template_edit_authority_rule:
- personal template: editable by owner within policy limits
- company template: editable only by authorized admin/governed role
- guided/system templates: editable only by authorized governance/system-maintenance scope
- finance/approver roles do not automatically gain template edit authority

# ============================================================
# 18. TEMPLATE VISIBILITY RULE
# ============================================================

template_visibility_rule:
- user should see only templates within their allowed scope
- personal templates are private by default
- company templates may be global or limited by department/scope
- visibility rules must be deterministic and auditable
- template visibility must not leak unauthorized company structures

# ============================================================
# 19. TEMPLATE + POLICY CHANGE RULE
# ============================================================

template_policy_change_rule:
- if category/evidence/tax/allocation policy changes, old templates may become incompatible
- incompatible templates should be blocked, warned, or migrated explicitly
- template must never bypass newly active policy constraints
- users should understand why a once-valid template is no longer valid

# ============================================================
# 20. TEMPLATE + CANDIDATE INBOX RELATION RULE
# ============================================================

template_candidate_relation_rule:
- template and candidate are different objects
- template is reusable preset
- candidate is event-/assistant-derived suggestion
- candidate may optionally be converted through a template-like guided flow
- but candidate origin meaning must remain distinguishable from template origin

# ============================================================
# 21. INITIAL TEMPLATE SET SHAPE
# ============================================================

initial_template_set_shape:
- commuter_transport_quick_template
- taxi_quick_template
- business_trip_one_day_template
- business_trip_lodging_template
- training_fee_template
- office_supply_template
- advance_settlement_template
- corporate_card_misc_template
- entertainment_meal_guided_template

note:
- these are structural examples for design shape
- exact company catalog can be fixed later

# ============================================================
# 22. WHAT IS NOT ALLOWED
# ============================================================

not_allowed:
- template auto-approves business data
- template auto-satisfies evidence requirement
- template silently forces unsupported category
- template silently fixes ERP mapping truth
- template visibility leaking across unauthorized scopes
- using localized title as canonical identity
- device-specific template meaning drift

# ============================================================
# 23. OPEN POLICY VARIABLES TO FIX LATER
# ============================================================

open_policy_variables_to_fix_later:
- exact company template catalog
- exact personal template creation policy
- exact guided template coverage
- exact validity/expiry behavior
- exact incompatibility warning strategy after policy changes
- exact department-scoped template visibility rules
- exact template versioning method

note:
- this document fixes the template master policy frame
- exact template rows and scope values can be added later

# ============================================================
# 24. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps templates safe by separating:
- reusable preset from created business object
- personal template from company template
- convenience from policy truth
- prefill from approval/finance/accounting outcome
- localized label from canonical template identity

