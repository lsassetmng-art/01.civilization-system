# ============================================================
# MODEL BOOK
# ASSET MANAGEMENT DOMAIN
# ============================================================

status: canonical
domain_id: 040
scope: civilization.model.asset_management

owner: Boss
prepared_by: Zero


# MODEL LIST

asset_management
asset_manager
investment_fund
portfolio
portfolio_allocation
portfolio_rebalancing
portfolio_risk
portfolio_return
asset_class
equity_asset
bond_asset
alternative_asset
real_asset
fund_structure
fund_subscription
fund_redemption
fund_reporting
fund_strategy
fund_performance
fund_fee
asset_custodian
asset_transfer
asset_record
asset_monitoring
asset_statistics
asset_index
asset_allocation_model
asset_liquidity
asset_management_system_design
asset_management_system_state


# STATES

growth
stable
rebalancing
stress
crisis
recovery


# EVENTS

portfolio_rebalance
fund_launch
fund_closure
market_loss
market_recovery


# RELATIONS

asset_management -> capital_market
asset_management -> stock_market
asset_management -> bond_market


# METRICS

portfolio_return
risk_adjusted_return
asset_liquidity

