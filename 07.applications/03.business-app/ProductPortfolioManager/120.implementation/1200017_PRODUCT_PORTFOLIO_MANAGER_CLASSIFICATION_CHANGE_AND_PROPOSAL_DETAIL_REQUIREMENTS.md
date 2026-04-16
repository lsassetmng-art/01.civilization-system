# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for
classification-change and proposal-detail surfaces
without entering implementation code.

# ============================================================
# 1. CLASSIFICATION-CHANGE REQUIREMENTS
# ============================================================

classification_change_requirements:
- show product identity context
- show current approved classification
- show proposed classification selection
- show proposed reason input
- show supporting score context
- show lifecycle context
- show alert/proposal context where relevant
- show approval requirement or approval state where relevant
- support save draft
- support submit
- support finalize where policy permits
- support history visibility

required_classification_change_fields_or_equivalent:
- portfolio_item_id
- current_classification_code
- proposed_classification_code
- proposed_reason
- based_score_id where relevant
- draft_status
- approval status where relevant

# ============================================================
# 2. PROPOSAL-DETAIL REQUIREMENTS
# ============================================================

proposal_detail_requirements:
- show proposal type
- show proposal title
- show proposal detail
- show expected effect
- show risk note
- show priority level
- show owner_user_id or owner context
- show due_date
- show proposal_status
- show linked product context
- show approval context where relevant
- show history context
- support edit while allowed
- support submit/review/approval linkage while allowed

required_proposal_detail_fields_or_equivalent:
- proposal_id
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- owner_user_id
- due_date
- proposal_status
- created_at
- updated_at

# ============================================================
# 3. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- explain difference between current approved classification and proposed change
- explain difference between proposal status and approval status
- explain that approved proposal is not automatically completed execution
- explain that classification is strategy meaning, not ERP category meaning
- labels and explanatory text must be localization-ready

# ============================================================
# 4. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize stepwise editing and submission flow
- support condensed support-context sections

tablet:
- support easier switching between support context and editable form

pc:
- support denser support context and clearer before/after visibility
- support deeper simultaneous history/context inspection

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- multi-currency-safe money/context presentation where relevant
- no hidden approval shortcut through edit actions
- no hidden finalization of classification changes
- no implication that completed proposal equals ERP-side truth
- consistent meaning across devices

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement
classification-change and proposal-detail surfaces
as governed judgment surfaces
with explicit state meaning,
supporting context,
and history visibility.
