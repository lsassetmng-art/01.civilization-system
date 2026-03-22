# ============================================================
# MODEL BOOK
# CENTRAL BANK DOMAIN
# ============================================================

status: canonical
domain_id: 032
scope: civilization.model.central_bank

owner: Boss
prepared_by: Zero


# MODEL LIST

central_bank
monetary_policy
policy_rate
open_market_operation
quantitative_easing
quantitative_tightening
currency_issuance
foreign_reserve
gold_reserve
monetary_base
money_supply
inflation_target
interest_rate_policy
exchange_rate_policy
financial_stability
central_bank_balance_sheet
central_bank_operation
central_bank_communication
central_bank_governance
central_bank_committee
central_bank_research
central_bank_monitoring
central_bank_statistics
central_bank_crisis_response
central_bank_reform
central_bank_transition
central_bank_coordination
central_bank_strategy
central_bank_index
central_bank_system_state


# STATES

neutral
easing
tightening
crisis
stabilization


# EVENTS

rate_cut
rate_hike
qe_launch
qe_end
currency_intervention


# RELATIONS

central_bank -> banking
central_bank -> currency
central_bank -> financial_stability


# METRICS

inflation_rate
policy_rate
financial_stability_index

