# ============================================================
# INFRASTRUCTURE PERMISSION BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-placement-and-governance
component: infrastructure-permission-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTION BINDINGS
# ============================================================

action_bindings:
- lay_road -> road_authority_or_city_scope_or_nation_scope
- replace_road -> elevated_road_authority
- remove_road -> elevated_road_authority
- lay_rail -> rail_operator_or_national_rail_authority_or_city_transit_authority
- replace_rail -> elevated_rail_authority
- remove_rail -> elevated_rail_authority
- place_station_node -> rail_authority
- place_port_node -> port_authority
- reconfigure_transport_node -> elevated_transport_authority


# ============================================================
# 2. FINAL RULE
# ============================================================

Infrastructure permissions
must be stricter than ordinary facility placement.
