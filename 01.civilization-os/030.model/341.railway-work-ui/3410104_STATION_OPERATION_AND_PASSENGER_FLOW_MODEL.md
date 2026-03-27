# ============================================================
# STATION OPERATION AND PASSENGER FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: station-operation-and-passenger-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. STATION FIELDS
# ============================================================

station_fields:
- station_id
- station_class
- platform_capacity
- gate_capacity
- crowding_sensitivity
- transfer_complexity
- staffing_level
- retail_presence
- freight_handling_supported
- military_loading_supported
- ceremonial_visibility


# ============================================================
# 2. PASSENGER FLOW ACTIONS
# ============================================================

passenger_flow_actions:
- increase_platform_staff
- open_additional_gate_flow
- stagger_departure_information
- prioritize_transfer_flow
- crowd_control_mode
- emergency_station_restriction
- event_day_station_mode
- military_or_state_priority_mode


# ============================================================
# 3. FINAL RULE
# ============================================================

Stations must be modeled
as operational bottlenecks
rather than passive line decorations.
