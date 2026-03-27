# ============================================================
# CIVILIZATION REAL ESTATE EXTENDED MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define extended models required for tax, inheritance, transfer,
auction, finance, and screening inside CivilizationOS.


# ============================================================
# 1. TAX MODELS
# ============================================================

## NATION_PROPERTY_TAX_RULE
core_fields:
- nation_property_tax_rule_id
- nation_code
- tax_event_type
- property_use_class_code
- right_type_code
- taxable_subject_type
- rule_status
- rate_mode
- rate_value
- threshold_summary
- exemption_summary
- payment_cycle_code
- created_at
- updated_at

## PROPERTY_TAX_ASSESSMENT_RECORD
core_fields:
- property_tax_assessment_record_id
- nation_code
- tax_event_type
- property_object_ref
- property_right_id
- assessed_tax_base_value
- assessed_tax_amount
- tax_currency_code
- assessment_status
- assessed_at
- created_at
- updated_at

## PROPERTY_TAX_PAYMENT_RECORD
core_fields:
- property_tax_payment_record_id
- property_tax_assessment_record_id
- paid_amount
- outstanding_amount
- tax_currency_code
- payment_status
- paid_at
- created_at
- updated_at

## PROPERTY_TAX_DEFAULT_RECORD
core_fields:
- property_tax_default_record_id
- property_tax_assessment_record_id
- default_status
- enforcement_trigger_status
- created_at
- updated_at


# ============================================================
# 2. INHERITANCE / TRANSFER MODELS
# ============================================================

## NATION_PROPERTY_INHERITANCE_RULE
core_fields:
- nation_property_inheritance_rule_id
- nation_code
- right_type_code
- property_use_class_code
- heir_eligibility_mode
- partition_mode
- approval_required
- rule_status
- created_at
- updated_at

## PROPERTY_INHERITANCE_CASE
core_fields:
- property_inheritance_case_id
- nation_code
- deceased_holder_ref
- property_object_ref
- property_right_id
- inheritance_case_status
- opened_at
- closed_at
- created_at
- updated_at

## PROPERTY_HEIR_CLAIM
core_fields:
- property_heir_claim_id
- property_inheritance_case_id
- claimant_holder_ref
- claim_status
- share_summary
- created_at
- updated_at

## PROPERTY_TRANSFER_RECORD
core_fields:
- property_transfer_record_id
- nation_code
- transfer_type
- property_object_ref
- property_right_id
- from_holder_ref
- to_holder_ref
- transfer_status
- transfer_reason
- created_at
- updated_at

transfer_type examples:
- sale
- gift
- inheritance
- internal_reassignment
- state_reassignment
- lease_transfer

## NATION_PROPERTY_TRANSFER_RULE_EXT
core_fields:
- nation_property_transfer_rule_ext_id
- nation_code
- transfer_type
- right_type_code
- property_use_class_code
- approval_required
- recipient_eligibility_mode
- foreign_recipient_mode
- company_recipient_mode
- rule_status
- created_at
- updated_at


# ============================================================
# 3. AUCTION / ENFORCEMENT MODELS
# ============================================================

## NATION_PROPERTY_ENFORCEMENT_RULE
core_fields:
- nation_property_enforcement_rule_id
- nation_code
- trigger_type
- seizure_mode
- auction_mode
- residence_protection_mode
- bidder_eligibility_mode
- distribution_order_summary
- rule_status
- created_at
- updated_at

## PROPERTY_SEIZURE_RECORD
core_fields:
- property_seizure_record_id
- nation_code
- property_object_ref
- property_right_id
- trigger_type
- seizure_status
- authority_actor_ref
- created_at
- updated_at

## PROPERTY_AUCTION_CASE
core_fields:
- property_auction_case_id
- nation_code
- property_object_ref
- property_right_id
- trigger_type
- minimum_bid_rule_ref
- auction_status
- opened_at
- closed_at
- created_at
- updated_at

## PROPERTY_AUCTION_BID
core_fields:
- property_auction_bid_id
- property_auction_case_id
- bidder_holder_ref
- bid_amount
- bid_currency_code
- bid_status
- created_at
- updated_at

## PROPERTY_AUCTION_RESULT
core_fields:
- property_auction_result_id
- property_auction_case_id
- winning_bid_ref
- distribution_summary
- registry_update_status
- result_status
- created_at
- updated_at


# ============================================================
# 4. FINANCE / MORTGAGE MODELS
# ============================================================

## NATION_PROPERTY_FINANCE_RULE
core_fields:
- nation_property_finance_rule_id
- nation_code
- right_type_code
- property_use_class_code
- mortgage_allowed
- max_ltv_ratio
- max_dti_ratio
- guarantor_requirement_mode
- registration_required
- collateral_haircut_summary
- rule_status
- created_at
- updated_at

## PROPERTY_MORTGAGE_RECORD
core_fields:
- property_mortgage_record_id
- nation_code
- property_object_ref
- property_right_id
- creditor_ref
- debtor_ref
- secured_amount
- secured_currency_code
- mortgage_status
- registered_at
- created_at
- updated_at

## PROPERTY_LOAN_APPLICATION
core_fields:
- property_loan_application_id
- nation_code
- borrower_ref
- property_object_ref
- property_right_id
- requested_amount
- requested_currency_code
- application_status
- created_at
- updated_at

## PROPERTY_LOAN_SCREENING_RESULT
core_fields:
- property_loan_screening_result_id
- property_loan_application_id
- collateral_eligible_value
- approved_ltv_ratio
- borrower_credit_grade
- repayment_capacity_grade
- screening_status
- blocking_reason_summary
- screened_at
- created_at
- updated_at

## PROPERTY_LOAN_CONTRACT
core_fields:
- property_loan_contract_id
- property_loan_application_id
- approved_amount
- approved_currency_code
- interest_rule_ref
- repayment_cycle_code
- loan_contract_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 5. PERSONA INCOME / CREDIT / SCREENING MODELS
# ============================================================

## PERSONA_INCOME_PROFILE
core_fields:
- persona_income_profile_id
- persona_ref
- nation_code
- monthly_average_income
- annual_income
- income_stability_rank
- primary_income_type
- profile_status
- evaluated_at
- created_at
- updated_at

## PERSONA_EXPENSE_PROFILE
core_fields:
- persona_expense_profile_id
- persona_ref
- nation_code
- monthly_average_expense
- fixed_expense_ratio
- profile_status
- evaluated_at
- created_at
- updated_at

## PERSONA_ASSET_PROFILE
core_fields:
- persona_asset_profile_id
- persona_ref
- nation_code
- liquid_asset_value
- illiquid_asset_value
- asset_stability_rank
- profile_status
- evaluated_at
- created_at
- updated_at

## PERSONA_LIABILITY_PROFILE
core_fields:
- persona_liability_profile_id
- persona_ref
- nation_code
- total_liability_value
- monthly_debt_service
- liability_risk_rank
- profile_status
- evaluated_at
- created_at
- updated_at

## PERSONA_CREDIT_PROFILE
core_fields:
- persona_credit_profile_id
- persona_ref
- nation_code
- payment_score
- income_stability_score
- asset_score
- life_stability_score
- social_trust_score
- composite_credit_score
- credit_grade
- profile_status
- evaluated_at
- created_at
- updated_at

## RENTAL_GUARANTEE_PROFILE
core_fields:
- rental_guarantee_profile_id
- nation_code
- subject_persona_ref
- guarantee_mode
- guarantor_ref
- guarantee_strength_rank
- profile_status
- evaluated_at
- created_at
- updated_at

guarantee_mode examples:
- self_credit_only
- personal_guarantor
- institutional_guarantee
- deposit_secured
- employer_backed
- state_backed
- hybrid_guarantee

## RENTAL_SCREENING_RESULT
core_fields:
- rental_screening_result_id
- nation_code
- subject_persona_ref
- property_object_ref
- rent_contract_candidate_ref
- composite_rental_score
- guarantee_strength_rank
- affordability_rank
- screening_status
- blocking_reason_summary
- screened_at
- created_at
- updated_at

## MORTGAGE_SCREENING_RESULT
core_fields:
- mortgage_screening_result_id
- nation_code
- subject_persona_ref
- property_object_ref
- requested_loan_amount
- requested_currency_code
- dti_ratio
- ltv_ratio
- composite_mortgage_score
- screening_status
- blocking_reason_summary
- screened_at
- created_at
- updated_at


# ============================================================
# 6. FINAL MODEL MAP RULE
# ============================================================

These models define the minimum extended support set
for advanced real-estate operation in CivilizationOS.

Core summary:

- tax is explicit
- inheritance and transfer are explicit
- auction and enforcement are explicit
- finance and mortgage are explicit
- persona screening is explicit
- all nation behavior is DB-controlled
