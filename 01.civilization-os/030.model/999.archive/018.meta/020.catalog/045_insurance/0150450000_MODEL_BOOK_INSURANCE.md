# ============================================================
# MODEL BOOK
# INSURANCE DOMAIN
# ============================================================

status: canonical
domain_id: 045
scope: civilization.model.insurance

owner: Boss
prepared_by: Zero


# MODEL LIST

insurance
insurance_company
insurance_policy
insurance_contract
insurance_premium
insurance_claim
insurance_underwriting
insurance_risk
insurance_pool
insurance_portfolio
insurance_reserve
insurance_reinsurance
insurance_market
insurance_distribution
insurance_broker
insurance_agent
insurance_product
insurance_regulation
insurance_monitoring
insurance_statistics
insurance_data
insurance_index
insurance_crisis
insurance_recovery
insurance_reform
insurance_strategy
insurance_liability
insurance_asset
insurance_system_design
insurance_system_state


# STATES

normal
risk_expansion
stress
crisis
recovery


# EVENTS

claim_surge
catastrophe_loss
insurance_repricing
market_recovery


# RELATIONS

insurance -> asset_management
insurance -> financial_stability
insurance -> company


# METRICS

loss_ratio
combined_ratio
insurance_stability

