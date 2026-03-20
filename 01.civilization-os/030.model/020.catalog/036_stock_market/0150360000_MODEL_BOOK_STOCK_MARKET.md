# ============================================================
# MODEL BOOK
# STOCK MARKET DOMAIN
# ============================================================

status: canonical
domain_id: 036
scope: civilization.model.stock_market

owner: Boss
prepared_by: Zero


# MODEL LIST

stock_market
stock_exchange
stock_listing
stock_issuer
stock_share
stock_price
stock_trade
stock_volume
stock_index
stock_investor
stock_portfolio
stock_broker
stock_order
stock_settlement
stock_clearing
stock_volatility
stock_market_cycle
stock_market_crash
stock_market_recovery
stock_regulation
stock_supervision
stock_data
stock_statistics
stock_analysis
stock_monitoring
stock_infrastructure
stock_liquidity
stock_risk
stock_system_design
stock_system_state


# STATES

bull
bear
bubble
crash
recovery


# EVENTS

ipo
market_rally
market_crash
trading_halt


# RELATIONS

stock_market -> company
stock_market -> capital_market
stock_market -> asset_management


# METRICS

stock_index
market_cap
volatility

