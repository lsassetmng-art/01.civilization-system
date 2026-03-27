# ============================================================
# CIVILIZATION BANKING MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for banking services
inside CivilizationOS.


# ============================================================
# 1. INSTITUTION / LICENSE MODELS
# ============================================================

## BANK_INSTITUTION
core_fields:
- bank_institution_id
- nation_code
- bank_code
- bank_name
- bank_type
- institution_status
- created_at
- updated_at

## BANK_LICENSE
core_fields:
- bank_license_id
- bank_institution_id
- license_scope
- licensed_service_family
- license_status
- effective_from
- effective_to
- created_at
- updated_at

## NATION_BANKING_SERVICE_RULE
core_fields:
- nation_banking_service_rule_id
- nation_code
- service_family
- customer_type_scope
- currency_scope
- approval_required
- rule_status
- created_at
- updated_at


# ============================================================
# 2. ACCOUNT / DEPOSIT / LEDGER MODELS
# ============================================================

## BANK_ACCOUNT
core_fields:
- bank_account_id
- bank_institution_id
- nation_code
- account_holder_type
- account_holder_ref
- account_type
- account_currency_code
- account_status
- opened_at
- closed_at
- created_at
- updated_at

## BANK_LEDGER_ENTRY
core_fields:
- bank_ledger_entry_id
- bank_account_id
- entry_type
- amount
- currency_code
- balance_after
- correlation_id
- entry_status
- booked_at
- created_at

## TERM_DEPOSIT_CONTRACT
core_fields:
- term_deposit_contract_id
- bank_account_id
- principal_amount
- currency_code
- term_summary
- interest_rule_ref
- contract_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 3. PAYMENT / TRANSFER MODELS
# ============================================================

## PAYMENT_INSTRUCTION
core_fields:
- payment_instruction_id
- nation_code
- payer_account_ref
- payee_account_ref or payee_external_ref
- payment_type
- instructed_amount
- currency_code
- instruction_status
- created_at
- updated_at

## TRANSFER_SETTLEMENT_RECORD
core_fields:
- transfer_settlement_record_id
- payment_instruction_id
- settled_amount
- settled_currency_code
- settlement_status
- settled_at
- created_at
- updated_at

## STANDING_ORDER
core_fields:
- standing_order_id
- bank_account_id
- payment_type
- target_ref
- scheduled_amount
- currency_code
- schedule_rule
- standing_order_status
- created_at
- updated_at

## ESCROW_ACCOUNT_LINK
core_fields:
- escrow_account_link_id
- bank_account_id
- escrow_subject_type
- escrow_subject_ref
- release_rule_ref
- escrow_status
- created_at
- updated_at


# ============================================================
# 4. LENDING / CREDIT / GUARANTEE MODELS
# ============================================================

## NATION_BANK_LENDING_RULE
core_fields:
- nation_bank_lending_rule_id
- nation_code
- loan_product_type
- borrower_type_scope
- currency_scope
- collateral_mode
- guarantee_mode
- max_ltv_ratio
- max_dti_ratio
- max_dscr_ratio
- approval_required
- rule_status
- created_at
- updated_at

## PERSONAL_CREDIT_PROFILE
core_fields:
- personal_credit_profile_id
- nation_code
- persona_ref
- payment_score
- income_stability_score
- debt_burden_score
- asset_score
- composite_credit_score
- credit_grade
- evaluated_at
- created_at
- updated_at

## ENTERPRISE_CREDIT_PROFILE_BANKING
core_fields:
- enterprise_credit_profile_banking_id
- nation_code
- company_ref
- revenue_stability_score
- cashflow_stability_score
- leverage_score
- profitability_score
- guarantee_strength_score
- collateral_strength_score
- composite_credit_score
- credit_grade
- evaluated_at
- created_at
- updated_at

## LOAN_APPLICATION
core_fields:
- loan_application_id
- nation_code
- bank_institution_id
- borrower_type
- borrower_ref
- loan_product_type
- requested_amount
- requested_currency_code
- purpose_summary
- application_status
- created_at
- updated_at

## LOAN_COLLATERAL_LINK
core_fields:
- loan_collateral_link_id
- loan_application_id or loan_contract_id
- collateral_type
- collateral_object_ref
- collateral_right_ref
- collateral_eligible_value
- collateral_status
- created_at
- updated_at

## LOAN_GUARANTEE_LINK
core_fields:
- loan_guarantee_link_id
- loan_application_id or loan_contract_id
- guarantee_mode
- guarantor_ref
- guarantee_strength_rank
- guarantee_status
- created_at
- updated_at

## LOAN_SCREENING_RESULT
core_fields:
- loan_screening_result_id
- loan_application_id
- approved_amount
- approved_currency_code
- approved_ratio_summary
- screening_status
- blocking_reason_summary
- screened_at
- created_at
- updated_at

## LOAN_CONTRACT
core_fields:
- loan_contract_id
- loan_application_id
- borrower_type
- borrower_ref
- approved_amount
- approved_currency_code
- interest_rule_ref
- repayment_cycle_code
- contract_status
- effective_from
- effective_to
- created_at
- updated_at

## LOAN_REPAYMENT_RECORD
core_fields:
- loan_repayment_record_id
- loan_contract_id
- billing_period_start
- billing_period_end
- billed_amount
- paid_amount
- outstanding_amount
- currency_code
- repayment_status
- paid_at
- created_at
- updated_at

## LOAN_DEFAULT_RECORD
core_fields:
- loan_default_record_id
- loan_contract_id
- default_type
- default_status
- guarantee_call_status
- enforcement_trigger_status
- restructuring_status
- created_at
- updated_at


# ============================================================
# 5. FX / INVESTMENT / CARD MODELS
# ============================================================

## NATION_FX_RULE
core_fields:
- nation_fx_rule_id
- nation_code
- source_currency_code
- target_currency_code
- conversion_mode
- spread_rule_ref
- fee_rule_ref
- approval_required
- rule_status
- created_at
- updated_at

## FX_QUOTE_RECORD
core_fields:
- fx_quote_record_id
- source_currency_code
- target_currency_code
- quoted_rate
- applied_rate
- quote_status
- quoted_at
- created_at

## FX_CONVERSION_RECORD
core_fields:
- fx_conversion_record_id
- customer_type
- customer_ref
- source_amount
- source_currency_code
- target_amount
- target_currency_code
- applied_rate
- conversion_status
- converted_at
- created_at

## INVESTMENT_PRODUCT
core_fields:
- investment_product_id
- nation_code
- product_type
- product_name
- product_currency_code
- risk_class
- product_status
- created_at
- updated_at

## INVESTMENT_POSITION
core_fields:
- investment_position_id
- product_ref
- holder_type
- holder_ref
- position_amount
- currency_code
- position_status
- opened_at
- closed_at
- created_at
- updated_at

## CUSTODY_ACCOUNT
core_fields:
- custody_account_id
- bank_institution_id
- holder_type
- holder_ref
- custody_scope
- custody_status
- created_at
- updated_at

## CARD_PRODUCT
core_fields:
- card_product_id
- nation_code
- card_type
- product_name
- settlement_mode
- limit_rule_ref
- product_status
- created_at
- updated_at

## CARD_ACCOUNT_LINK
core_fields:
- card_account_link_id
- card_product_id
- bank_account_id
- holder_type
- holder_ref
- card_status
- issued_at
- expires_at
- created_at
- updated_at

## CARD_TRANSACTION_RECORD
core_fields:
- card_transaction_record_id
- card_account_link_id
- merchant_ref
- transaction_amount
- currency_code
- auth_status
- settlement_status
- transacted_at
- created_at
- updated_at


# ============================================================
# 6. RISK / FREEZE / AML / RESOLUTION MODELS
# ============================================================

## BANK_RISK_EVENT
core_fields:
- bank_risk_event_id
- nation_code
- institution_ref
- customer_type
- customer_ref
- event_type
- risk_status
- freeze_effect
- created_at
- updated_at

## ACCOUNT_FREEZE_RECORD
core_fields:
- account_freeze_record_id
- bank_account_id
- freeze_reason
- freeze_status
- effective_from
- effective_to
- created_at
- updated_at

## AML_EQUIVALENT_REVIEW_RECORD
core_fields:
- aml_equivalent_review_record_id
- nation_code
- subject_type
- subject_ref
- trigger_summary
- review_status
- created_at
- updated_at

## NATION_DEPOSIT_PROTECTION_RULE
core_fields:
- nation_deposit_protection_rule_id
- nation_code
- protected_account_type
- protection_limit_value
- protection_currency_code
- payout_mode
- rule_status
- created_at
- updated_at

## BANK_RESOLUTION_CASE
core_fields:
- bank_resolution_case_id
- nation_code
- bank_institution_id
- resolution_type
- resolution_status
- opened_at
- closed_at
- created_at
- updated_at


# ============================================================
# 7. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum banking support set
inside CivilizationOS.

Core summary:

- institution and license are explicit
- deposits and accounts are explicit
- payments are explicit
- lending and guarantees are explicit
- FX, investment, and cards are explicit
- risk, freeze, and resolution are explicit
- all nation behavior is DB-controlled
