# ============================================================
# MODEL BOOK
# OIL & GAS DOMAIN
# ============================================================

status: canonical
domain_id: 067
scope: civilization.model.oil_gas

owner: Boss
prepared_by: Zero


# MODEL LIST

oil_gas
oil_field
gas_field
oil_reserve
gas_reserve
oil_production
gas_production
oil_refinery
gas_processing
oil_pipeline
gas_pipeline
oil_trade
gas_trade
oil_market
gas_market
oil_price
gas_price
oil_storage
gas_storage
oil_policy
gas_policy
oil_monitoring
gas_monitoring
oil_data
gas_data
oil_statistics
gas_statistics
oil_system_design
oil_system_state
gas_system_state


# STATES

stable
shortage
price_spike
recovery


# EVENTS

oil_supply_shock
gas_shortage
price_spike


# RELATIONS

oil_gas -> energy
oil_gas -> trade
oil_gas -> transport


# METRICS

oil_output
gas_output
energy_dependency

