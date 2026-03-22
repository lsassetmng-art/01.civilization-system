# ============================================================
# MODEL BOOK
# ELECTRIC POWER DOMAIN
# ============================================================

status: canonical
domain_id: 068
scope: civilization.model.electric_power

owner: Boss
prepared_by: Zero


# MODEL LIST

electric_power
power_plant
power_generation
power_grid
power_transmission
power_distribution
power_capacity
power_demand
power_supply
power_market
power_operator
power_station
power_network
power_storage
power_backup
power_monitoring
power_data
power_statistics
power_index
power_risk
power_blackout
power_recovery
power_upgrade
power_policy
power_regulation
power_transition
power_strategy
power_system_design
power_system_state


# STATES

balanced
overload
blackout
recovery


# EVENTS

power_outage
grid_failure
capacity_expansion


# RELATIONS

electric_power -> energy
electric_power -> infrastructure
electric_power -> manufacturing


# METRICS

grid_reliability
power_capacity
electricity_price

