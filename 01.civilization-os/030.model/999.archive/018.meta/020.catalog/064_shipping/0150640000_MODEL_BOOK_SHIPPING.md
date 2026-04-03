# ============================================================
# MODEL BOOK
# SHIPPING DOMAIN
# ============================================================

status: canonical
domain_id: 064
scope: civilization.model.shipping

owner: Boss
prepared_by: Zero


# MODEL LIST

shipping
shipping_route
shipping_lane
shipping_port
shipping_terminal
shipping_operator
shipping_vessel
shipping_cargo
shipping_schedule
shipping_capacity
shipping_network
shipping_logistics
shipping_monitoring
shipping_data
shipping_statistics
shipping_index
shipping_risk
shipping_congestion
shipping_disruption
shipping_recovery
shipping_upgrade
shipping_policy
shipping_regulation
shipping_strategy
shipping_transition
shipping_efficiency
shipping_infrastructure
shipping_system_design
shipping_system_state


# STATES

normal
congested
blocked
recovery


# EVENTS

port_closure
cargo_delay
shipping_recovery


# RELATIONS

shipping -> logistics
shipping -> trade
shipping -> port


# METRICS

shipping_volume
port_turnaround_time
shipping_cost

