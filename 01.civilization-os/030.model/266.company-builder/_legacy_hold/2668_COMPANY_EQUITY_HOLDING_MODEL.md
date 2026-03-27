# ============================================================
# COMPANY EQUITY HOLDING MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-equity-holding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for company equity holding.

It covers:

- equity intent
- equity holding
- dividend reception
- corporate action result handling

It does not define the intermediary itself.
That is handled by securities intermediary architecture.


# ============================================================
# 2. CORE RULE
# ============================================================

A company may hold equity.

However:

- direct execution is prohibited
- securities_firm routing is mandatory
- nation securities regime must be respected
- listing eligibility and market rules must be respected


# ============================================================
# 3. COMPANY SECURITIES ACCOUNT PROFILE
# ============================================================

A company securities account profile should contain:

- company_id
- securities_account_profile_id
- securities_firm_ref
- account_state
- account_currency_scope
- trading_permission_scope
- notes

Recommended account_state values:
- pending
- active
- suspended
- closed

Recommended trading_permission_scope:
- listed_equity_only
- listed_equity_plus_tob
- listed_equity_plus_block_trade
- full_permitted_scope


# ============================================================
# 4. EQUITY ORDER INTENT MODEL
# ============================================================

Equity order intent should contain:

- equity_order_intent_id
- company_id
- securities_firm_ref
- intent_type
- target_equity_ref
- target_market_ref
- side
- quantity_intent
- price_posture
- strategy_notes
- intent_state
- created_at

Recommended intent_type values:
- market_order_intent
- limit_order_intent
- sale_order_intent

Recommended price_posture values:
- market
- limit
- price_band

Recommended intent_state values:
- draft
- submitted
- accepted_by_intermediary
- rejected
- expired
- executed_partially
- executed_fully


# ============================================================
# 5. TOB TENDER INTENT MODEL
# ============================================================

TOB handling must be separate from standard market orders.

A TOB tender intent should contain:

- tob_tender_intent_id
- company_id
- securities_firm_ref
- target_tob_ref
- target_equity_ref
- tender_quantity
- tender_price_reference
- account_transfer_required
- tender_state
- created_at

Recommended tender_state values:
- draft
- submitted
- transfer_pending
- accepted_by_intermediary
- tendered
- rejected
- settled

This model is not a market order model.


# ============================================================
# 6. BLOCK TRADE INTENT MODEL
# ============================================================

Large-scale or special-route execution
should be represented separately.

A block trade intent should contain:

- block_trade_intent_id
- company_id
- securities_firm_ref
- target_equity_ref
- quantity_intent
- price_negotiation_posture
- execution_window_notes
- trade_state
- created_at

Recommended trade_state values:
- draft
- submitted
- under_arrangement
- accepted
- rejected
- settled


# ============================================================
# 7. OFFERING / ALLOTMENT SUBSCRIPTION MODEL
# ============================================================

Offering and allotment participation
should be separate from normal trading.

A subscription model should contain:

- subscription_intent_id
- company_id
- securities_firm_ref
- offering_type
- target_equity_ref
- subscription_quantity
- allocation_posture
- subscription_state
- created_at

Recommended offering_type values:
- primary_allotment_subscription
- secondary_distribution_subscription
- third_party_allotment_subscription

Recommended subscription_state values:
- draft
- submitted
- allocated
- partially_allocated
- rejected
- settled


# ============================================================
# 8. EQUITY HOLDING MODEL
# ============================================================

A company equity holding should contain:

- company_equity_holding_id
- company_id
- securities_firm_ref
- target_equity_ref
- holding_quantity
- average_acquisition_cost
- valuation_basis
- holding_purpose
- acquisition_route
- holding_state
- updated_at

Recommended holding_purpose values:
- passive_investment
- strategic_investment
- control_investment
- treasury_operation

Recommended acquisition_route values:
- market_execution
- tob_tender
- block_trade
- primary_allotment
- corporate_action_exchange

Recommended holding_state values:
- active
- partially_disposed
- disposed
- frozen


# ============================================================
# 9. DIVIDEND INCOME MODEL
# ============================================================

Dividend records should contain:

- dividend_income_record_id
- company_id
- holding_ref
- target_equity_ref
- dividend_period_ref
- gross_amount
- net_amount
- received_at
- notes


# ============================================================
# 10. CORPORATE ACTION RESULT MODEL
# ============================================================

Corporate action handling must be separate
from direct execution models.

A corporate action result should contain:

- corporate_action_record_id
- company_id
- holding_ref
- target_equity_ref
- action_type
- action_result_type
- quantity_before
- quantity_after
- settlement_notes
- effective_at

Recommended action_type values:
- squeeze_out
- share_exchange
- stock_consideration_reorg
- split
- reverse_split
- merger_exchange

Recommended action_result_type values:
- cash_settlement
- stock_settlement
- mixed_settlement
- holding_structure_change


# ============================================================
# 11. FINAL RULE
# ============================================================

Company equity holding must distinguish:

- execution intent
- tender intent
- block trade intent
- offering subscription
- actual holding
- dividend receipt
- corporate action result

These are not interchangeable objects.
