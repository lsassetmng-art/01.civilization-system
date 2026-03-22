# ============================================================
# MODEL BOOK
# FX MARKET DOMAIN
# ============================================================

status: canonical
domain_id: 038
scope: civilization.model.fx_market

owner: Boss
prepared_by: Zero


# MODEL LIST

fx_market
currency_pair
exchange_rate
fx_trade
fx_volume
fx_liquidity
fx_volatility
fx_reserve
fx_intervention
fx_speculation
fx_arbitrage
fx_hedging
fx_derivative
fx_institution
fx_network
fx_regulation
fx_monitoring
fx_data
fx_statistics
fx_index
fx_risk
fx_crisis
fx_recovery
fx_stabilization
fx_infrastructure
fx_strategy
fx_analysis
fx_system_design
fx_system_state


# STATES

stable
volatile
crisis
stabilizing


# EVENTS

currency_intervention
speculation_wave
fx_crash
stabilization


# RELATIONS

fx_market -> currency
fx_market -> central_bank
fx_market -> derivatives_market


# METRICS

exchange_rate_volatility
fx_liquidity
reserve_ratio

