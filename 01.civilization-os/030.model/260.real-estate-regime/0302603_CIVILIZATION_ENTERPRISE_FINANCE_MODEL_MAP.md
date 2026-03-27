# ============================================================
# CIVILIZATION ENTERPRISE FINANCE MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for enterprise finance
inside CivilizationOS.


# ============================================================
# 1. NATION_ENTERPRISE_FINANCE_RULE
# ============================================================

purpose:
Store nation-controlled enterprise finance rules.

core_fields:
- nation_enterprise_finance_rule_id
- nation_code
- loan_product_type
- company_type_scope
- industry_scope
- collateral_mode
- guarantee_mode
- loan_currency_rule
- max_ltv_ratio
- max_dscr_ratio
- max_leverage_ratio
- approval_required
- restructuring_allowed
- rule_status
- created_at
- updated_at


# ============================================================
# 2. ENTERPRISE_CREDIT_PROFILE
# ============================================================

purpose:
Store evaluated enterprise credit profile.

core_fields:
- enterprise_credit_profile_id
- nation_code
- company_ref
- revenue_stability_score
- cashflow_stability_score
- leverage_score
- profitability_score
- asset_strength_score
- guarantee_strength_score
- collateral_strength_score
- composite_credit_score
- credit_grade
- profile_status
- evaluated_at
- created_at
- updated_at


# ============================================================
# 3. ENTERPRISE_LOAN_APPLICATION
# ============================================================

purpose:
Store enterprise loan application.

core_fields:
- enterprise_loan_application_id
- nation_code
- company_ref
- loan_product_type
- requested_amount
- requested_currency_code
- requested_term_summary
- purpose_summary
- guarantee_mode
- application_status
- created_at
- updated_at


# ============================================================
# 4. ENTERPRISE_COLLATERAL_LINK
# ============================================================

purpose:
Link enterprise loan application or loan contract
to collateral assets or rights.

core_fields:
- enterprise_collateral_link_id
- enterprise_loan_application_id or enterprise_loan_contract_id
- collateral_type
- collateral_object_ref
- collateral_right_ref
- collateral_eligible_value
- collateral_status
- created_at
- updated_at

collateral_type examples:
- real_estate
- equipment
- inventory
- receivable
- mixed_portfolio


# ============================================================
# 5. ENTERPRISE_GUARANTEE_LINK
# ============================================================

purpose:
Link enterprise financing to guarantee support.

core_fields:
- enterprise_guarantee_link_id
- enterprise_loan_application_id or enterprise_loan_contract_id
- guarantee_mode
- guarantor_ref
- guarantee_strength_rank
- guarantee_status
- created_at
- updated_at


# ============================================================
# 6. ENTERPRISE_LOAN_SCREENING_RESULT
# ============================================================

purpose:
Store enterprise screening result.

core_fields:
- enterprise_loan_screening_result_id
- enterprise_loan_application_id
- approved_currency_code
- approved_amount
- approved_term_summary
- collateral_eligible_value
- approved_ltv_ratio
- approved_dscr_ratio
- screening_status
- blocking_reason_summary
- screened_at
- created_at
- updated_at


# ============================================================
# 7. ENTERPRISE_LOAN_CONTRACT
# ============================================================

purpose:
Store enterprise loan contract.

core_fields:
- enterprise_loan_contract_id
- enterprise_loan_application_id
- company_ref
- loan_product_type
- approved_amount
- approved_currency_code
- interest_rule_ref
- repayment_cycle_code
- contract_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 8. ENTERPRISE_REPAYMENT_RECORD
# ============================================================

purpose:
Store repayment and outstanding status.

core_fields:
- enterprise_repayment_record_id
- enterprise_loan_contract_id
- billing_period_start
- billing_period_end
- billed_amount
- paid_amount
- outstanding_amount
- repayment_currency_code
- repayment_status
- paid_at
- created_at
- updated_at


# ============================================================
# 9. ENTERPRISE_DEFAULT_RECORD
# ============================================================

purpose:
Store enterprise default or distress events.

core_fields:
- enterprise_default_record_id
- enterprise_loan_contract_id
- default_type
- default_status
- guarantee_call_status
- enforcement_trigger_status
- restructuring_status
- created_at
- updated_at

default_type examples:
- overdue
- covenant_breach
- insolvency
- collateral_failure
- guarantee_failure


# ============================================================
# 10. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum enterprise finance support set
inside CivilizationOS.

Core summary:

- nation finance rule is explicit
- enterprise credit profile is explicit
- application, screening, contract, repayment, and default are explicit
- collateral and guarantee are explicit
- all behavior remains inside Civilization
