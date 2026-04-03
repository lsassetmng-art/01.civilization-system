# ============================================================
# INFRASTRUCTURE TYPE TO LINE NODE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: infrastructure-type-to-line-node-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LINE TYPES
# ============================================================

line_types:
- road_line
- highway_line
- private_access_road
- rail_line
- metro_line
- freight_rail_line
- canal_line
- power_line
- water_line
- gas_line
- telecom_line


# ============================================================
# 2. NODE TYPES
# ============================================================

node_types:
- road_junction_node
- interchange_node
- station_node
- freight_terminal_node
- port_node
- airport_node
- power_substation_node
- water_plant_node
- telecom_hub_node


# ============================================================
# 3. FINAL RULE
# ============================================================

Every infrastructure type
must map to exactly one of
line or node.
