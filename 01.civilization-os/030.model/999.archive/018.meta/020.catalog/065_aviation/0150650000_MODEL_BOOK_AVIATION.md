# ============================================================
# MODEL BOOK
# AVIATION DOMAIN
# ============================================================

status: canonical
domain_id: 065
scope: civilization.model.aviation

owner: Boss
prepared_by: Zero


# MODEL LIST

aviation
airline
airport
flight
flight_route
flight_schedule
aircraft
aircraft_capacity
air_traffic
air_traffic_control
air_cargo
air_passenger
aviation_network
aviation_safety
aviation_regulation
aviation_policy
aviation_monitoring
aviation_data
aviation_statistics
aviation_index
aviation_risk
aviation_crisis
aviation_recovery
aviation_upgrade
aviation_infrastructure
aviation_strategy
aviation_transition
aviation_system_design
aviation_system_state


# STATES

normal
delayed
disrupted
recovery


# EVENTS

flight_delay
airport_closure
traffic_surge


# RELATIONS

aviation -> transport
aviation -> logistics
aviation -> tourism


# METRICS

passenger_volume
flight_punctuality
cargo_capacity

