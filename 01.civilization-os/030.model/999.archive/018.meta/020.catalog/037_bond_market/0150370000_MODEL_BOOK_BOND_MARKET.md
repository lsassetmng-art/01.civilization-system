# ============================================================
# MODEL BOOK
# BOND MARKET DOMAIN
# ============================================================

status: canonical
domain_id: 037
scope: civilization.model.bond_market

owner: Boss
prepared_by: Zero


# MODEL LIST

bond_market
bond
government_bond
corporate_bond
bond_yield
bond_price
bond_trade
bond_auction
bond_investor
bond_portfolio
bond_rating
bond_risk
bond_liquidity
bond_maturity
bond_coupon
bond_default
bond_restructuring
bond_market_cycle
bond_market_crisis
bond_market_recovery
bond_regulation
bond_supervision
bond_data
bond_statistics
bond_analysis
bond_monitoring
bond_infrastructure
bond_index
bond_system_design
bond_system_state


# STATES

stable
tight
volatile
crisis
recovery


# EVENTS

bond_issuance
yield_spike
default_event
market_stabilization


# RELATIONS

bond_market -> capital_market
bond_market -> public_finance
bond_market -> company


# METRICS

yield_curve
default_rate
bond_liquidity

