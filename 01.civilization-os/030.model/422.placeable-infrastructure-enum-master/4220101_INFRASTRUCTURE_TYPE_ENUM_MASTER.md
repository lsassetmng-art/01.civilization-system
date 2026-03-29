# ============================================================
# INFRASTRUCTURE TYPE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: infrastructure-type-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

infrastructure_type_enum:
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
# 2. FINAL RULE
# ============================================================

Infrastructure type
defines the concrete infrastructure object
that can be placed or managed.
