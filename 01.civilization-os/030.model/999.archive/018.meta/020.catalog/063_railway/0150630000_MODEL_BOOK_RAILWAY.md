# ============================================================
# MODEL BOOK
# RAILWAY DOMAIN
# ============================================================

status: canonical
domain_id: 063
scope: civilization.model.railway

owner: Boss
prepared_by: Zero


# MODEL LIST

railway
railway_network
railway_line
railway_station
railway_operator
railway_train
railway_schedule
railway_capacity
railway_passenger
railway_freight
railway_signal
railway_control
railway_infrastructure
railway_maintenance
railway_monitoring
railway_data
railway_statistics
railway_index
railway_risk
railway_disruption
railway_recovery
railway_upgrade
railway_policy
railway_regulation
railway_strategy
railway_transition
railway_efficiency
railway_system_design
railway_system_state


# STATES

operational
delayed
disrupted
recovery


# EVENTS

train_delay
signal_failure
network_upgrade


# RELATIONS

railway -> transport
railway -> logistics
railway -> infrastructure


# METRICS

on_time_rate
rail_capacity
passenger_volume

