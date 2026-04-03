# ============================================================
# TRANSPORT ROUTE AND CONVOY MODEL
# ============================================================

status: canonical
layer: model
scope: military-support-work-ui
component: transport-route-and-convoy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRANSPORT TYPES
# ============================================================

transport_types:
- road_convoy
- rail_support_route
- ship_support_route
- emergency_airlift_equivalent
- local_base_transfer
- medical_evacuation_route


# ============================================================
# 2. ROUTE FIELDS
# ============================================================

route_fields:
- route_id
- transport_type
- route_capacity
- route_security_risk
- route_weather_risk
- route_delay_risk
- route_priority_level
- route_repair_dependency
- route_military_override_supported


# ============================================================
# 3. CONVOY ACTIONS
# ============================================================

convoy_actions:
- dispatch_convoy
- split_convoy_load
- reroute_convoy
- delay_convoy_for_security
- prioritize_medical_evacuation
- prioritize_ammunition_or_fuel
- attach_security_support
- suspend_route_use


# ============================================================
# 4. FINAL RULE
# ============================================================

Transport support must expose
that route choice is a tradeoff
between speed, safety,
capacity, and strategic priority.
