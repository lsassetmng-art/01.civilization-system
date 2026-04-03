# ============================================================
# MODEL BOOK
# PRIVATE EQUITY DOMAIN
# ============================================================

status: canonical
domain_id: 041
scope: civilization.model.private_equity

owner: Boss
prepared_by: Zero


# MODEL LIST

private_equity
pe_fund
pe_manager
pe_investor
pe_commitment
pe_capital_call
pe_portfolio_company
pe_investment
pe_acquisition
pe_leverage
pe_value_creation
pe_exit
pe_buyout
pe_growth_investment
pe_secondary_market
pe_fund_lifecycle
pe_return
pe_performance
pe_reporting
pe_strategy
pe_risk
pe_monitoring
pe_data
pe_statistics
pe_index
pe_market_cycle
pe_liquidity
pe_transition
pe_system_design
pe_system_state


# STATES

fundraising
investment
management
exit
liquidation


# EVENTS

capital_call
company_acquisition
company_exit
fund_closure


# RELATIONS

private_equity -> company
private_equity -> asset_management
private_equity -> venture_capital


# METRICS

irr
multiple_of_invested_capital
exit_rate

