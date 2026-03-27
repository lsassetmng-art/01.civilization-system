# ============================================================
# CIVILIZATION SECURITIES MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for securities services
inside CivilizationOS.


# ============================================================
# 1. INSTITUTION / LICENSE MODELS
# ============================================================

## SECURITIES_INSTITUTION
core_fields:
- securities_institution_id
- nation_code
- institution_code
- institution_name
- institution_type
- institution_status
- created_at
- updated_at

institution_type examples:
- broker_dealer
- securities_broker
- underwriter
- investment_adviser
- custody_institution
- prime_broker where lawful

## SECURITIES_LICENSE
core_fields:
- securities_license_id
- securities_institution_id
- licensed_service_family
- licensed_instrument_scope
- license_status
- effective_from
- effective_to
- created_at
- updated_at

## NATION_SECURITIES_SERVICE_RULE
core_fields:
- nation_securities_service_rule_id
- nation_code
- service_family
- customer_type_scope
- instrument_scope
- approval_required
- rule_status
- created_at
- updated_at


# ============================================================
# 2. ACCOUNT / CUSTODY MODELS
# ============================================================

## BROKERAGE_ACCOUNT
core_fields:
- brokerage_account_id
- securities_institution_id
- nation_code
- account_holder_type
- account_holder_ref
- account_type
- base_currency_code
- account_status
- opened_at
- closed_at
- created_at
- updated_at

## CUSTODY_ACCOUNT
core_fields:
- custody_account_id
- securities_institution_id
- nation_code
- holder_type
- holder_ref
- custody_mode
- custody_status
- created_at
- updated_at

## SETTLEMENT_CASH_ACCOUNT_LINK
core_fields:
- settlement_cash_account_link_id
- brokerage_account_id
- linked_bank_account_ref
- settlement_currency_code
- link_status
- created_at
- updated_at

## SECURITY_POSITION
core_fields:
- security_position_id
- custody_account_id
- instrument_ref
- position_quantity
- encumbered_quantity
- available_quantity
- position_status
- created_at
- updated_at


# ============================================================
# 3. ORDER / EXECUTION / SETTLEMENT MODELS
# ============================================================

## SECURITIES_ORDER
core_fields:
- securities_order_id
- brokerage_account_id
- nation_code
- instrument_ref
- order_type
- side
- order_quantity
- limit_price
- order_status
- placed_at
- created_at
- updated_at

side examples:
- buy
- sell
- subscribe
- redeem
- tender

## EXECUTION_RECORD
core_fields:
- execution_record_id
- securities_order_id
- executed_quantity
- executed_price
- execution_currency_code
- execution_status
- executed_at
- created_at
- updated_at

## CLEARING_OBLIGATION
core_fields:
- clearing_obligation_id
- execution_record_id
- cash_leg_amount
- cash_currency_code
- securities_leg_quantity
- clearing_status
- created_at
- updated_at

## SETTLEMENT_RECORD_SECURITIES
core_fields:
- settlement_record_securities_id
- clearing_obligation_id
- settlement_date
- cash_settlement_status
- securities_settlement_status
- settlement_status
- settled_at
- created_at
- updated_at


# ============================================================
# 4. OFFERING / UNDERWRITING MODELS
# ============================================================

## SECURITIES_ISSUE_PROGRAM
core_fields:
- securities_issue_program_id
- nation_code
- issuer_type
- issuer_ref
- instrument_type
- issue_currency_code
- target_amount_or_quantity
- offering_type
- issue_status
- created_at
- updated_at

offering_type examples:
- public_offering
- private_placement
- rights_issue
- follow_on_offering

## UNDERWRITING_MANDATE
core_fields:
- underwriting_mandate_id
- securities_issue_program_id
- securities_institution_id
- underwriting_mode
- underwriting_status
- fee_rule_ref
- created_at
- updated_at

underwriting_mode examples:
- firm_commitment
- best_efforts
- placement_agent

## SUBSCRIPTION_RECORD
core_fields:
- subscription_record_id
- securities_issue_program_id
- subscriber_type
- subscriber_ref
- subscribed_quantity_or_amount
- subscription_currency_code
- allocation_status
- created_at
- updated_at


# ============================================================
# 5. ADVISORY / MANAGED SERVICE MODELS
# ============================================================

## INVESTMENT_ADVISORY_MANDATE
core_fields:
- investment_advisory_mandate_id
- securities_institution_id
- client_type
- client_ref
- advisory_scope
- mandate_status
- effective_from
- effective_to
- created_at
- updated_at

## MANAGED_ACCOUNT_MANDATE
core_fields:
- managed_account_mandate_id
- brokerage_account_id
- mandate_scope
- risk_profile
- mandate_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 6. MARGIN / SECURITIES FINANCE MODELS
# ============================================================

## NATION_SECURITIES_FINANCE_RULE
core_fields:
- nation_securities_finance_rule_id
- nation_code
- finance_product_type
- instrument_scope
- customer_type_scope
- initial_margin_rule
- maintenance_margin_rule
- short_sale_mode
- forced_liquidation_mode
- rule_status
- created_at
- updated_at

## MARGIN_ACCOUNT_PROFILE
core_fields:
- margin_account_profile_id
- brokerage_account_id
- profile_status
- initial_margin_ratio
- maintenance_margin_ratio
- margin_currency_code
- created_at
- updated_at

## MARGIN_LOAN_RECORD
core_fields:
- margin_loan_record_id
- brokerage_account_id
- borrowed_amount
- currency_code
- secured_by_position_summary
- margin_loan_status
- created_at
- updated_at

## MARGIN_CALL_RECORD
core_fields:
- margin_call_record_id
- brokerage_account_id
- required_amount
- currency_code
- due_rule_summary
- call_status
- created_at
- updated_at

## SECURITIES_BORROW_LEND_RECORD
core_fields:
- securities_borrow_lend_record_id
- instrument_ref
- borrower_ref
- lender_ref
- quantity
- fee_rule_ref
- borrow_lend_status
- created_at
- updated_at


# ============================================================
# 7. CORPORATE ACTION / RESTRICTION MODELS
# ============================================================

## CORPORATE_ACTION_EVENT
core_fields:
- corporate_action_event_id
- instrument_ref
- corporate_action_type
- record_date
- effective_date
- event_status
- created_at
- updated_at

corporate_action_type examples:
- dividend
- coupon
- split
- consolidation
- rights_issue
- redemption
- tender_offer

## SECURITIES_RESTRICTION_RECORD
core_fields:
- securities_restriction_record_id
- subject_type
- subject_ref
- restriction_type
- restriction_status
- effective_from
- effective_to
- created_at
- updated_at

restriction_type examples:
- account_freeze
- instrument_suspension
- short_sale_ban
- offering_restriction
- advisory_restriction
- settlement_hold


# ============================================================
# 8. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for securities services inside CivilizationOS.

Core summary:

- institution and license are explicit
- account and custody are explicit
- order, execution, clearing, and settlement are explicit
- offering and underwriting are explicit
- advisory and managed services are explicit
- margin and securities finance are explicit
- corporate actions and restrictions are explicit
- all nation behavior is DB-controlled
