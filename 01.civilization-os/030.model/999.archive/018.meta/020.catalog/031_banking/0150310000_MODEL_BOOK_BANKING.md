# ============================================================
# MODEL BOOK
# BANKING DOMAIN
# ============================================================

status: canonical
domain_id: 031
scope: civilization.model.banking

owner: Boss
prepared_by: Zero


# MODEL LIST

bank
banking_system
commercial_bank
investment_bank
bank_branch
bank_account
deposit
loan
credit
interest_rate
bank_capital
bank_liquidity
bank_reserve
bank_regulation
bank_supervision
bank_risk
bank_balance_sheet
bank_transaction
bank_network
bank_settlement
bank_clearing
bank_crisis
bank_failure
bank_recovery
bank_reform
bank_monitoring
bank_statistics
bank_index
bank_system_design
bank_system_state


# STATES

stable
expansion
tightening
crisis
recovery


# EVENTS

bank_run
credit_expansion
liquidity_crisis
bank_bailout
bank_reform


# RELATIONS

banking -> central_bank
banking -> payment
banking -> capital_market


# METRICS

bank_liquidity_ratio
credit_growth
banking_stability

