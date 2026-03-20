# ============================================================
# MODEL BOOK
# TRANSPORT DOMAIN
# ============================================================

status: canonical
domain_id: 062
scope: civilization.model.transport

owner: Boss
prepared_by: Zero


# MODEL LIST

transport
transport_network
transport_route
transport_node
transport_operator
transport_vehicle
transport_service
transport_capacity
transport_demand
transport_flow
transport_schedule
transport_infrastructure
transport_logistics
transport_data
transport_statistics
transport_monitoring
transport_index
transport_risk
transport_congestion
transport_disruption
transport_recovery
transport_reform
transport_policy
transport_regulation
transport_strategy
transport_transition
transport_efficiency
transport_system_design
transport_system_state


# STATES

normal
congested
disrupted
recovery


# EVENTS

traffic_surge
network_failure
transport_upgrade


# RELATIONS

transport -> logistics
transport -> infrastructure
transport -> urban


# METRICS

transport_capacity
travel_time
network_efficiency

