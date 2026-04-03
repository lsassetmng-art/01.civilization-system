# ============================================================
# MODEL BOOK
# VENTURE CAPITAL DOMAIN
# ============================================================

status: canonical
domain_id: 042
scope: civilization.model.venture_capital

owner: Boss
prepared_by: Zero


# MODEL LIST

venture_capital
vc_fund
vc_partner
vc_investor
vc_portfolio
vc_deal
vc_term_sheet
vc_equity
vc_dilution
vc_round
vc_seed
vc_series_a
vc_series_b
vc_series_c
vc_exit
vc_valuation
vc_return
vc_performance
vc_strategy
vc_network
vc_ecosystem
vc_monitoring
vc_data
vc_statistics
vc_market_cycle
vc_liquidity
vc_crisis
vc_recovery
vc_transition
vc_system_design
vc_system_state


# STATES

fundraising
investment
growth
exit
failure


# EVENTS

seed_investment
series_a
series_b
exit
startup_failure


# RELATIONS

venture_capital -> startup
venture_capital -> private_equity
venture_capital -> capital_market


# METRICS

startup_success_rate
vc_return
fund_performance

