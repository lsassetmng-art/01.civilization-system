# ============================================================
# INFRASTRUCTURE TYPE TO CATEGORY BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: infrastructure-type-to-category-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- road_line -> road_transport
- highway_line -> road_transport
- private_access_road -> road_transport
- rail_line -> rail_transport
- metro_line -> rail_transport
- freight_rail_line -> freight_logistics
- canal_line -> maritime_transport
- power_line -> energy_utility
- water_line -> water_utility
- gas_line -> energy_utility
- telecom_line -> telecom_utility
- road_junction_node -> road_transport
- interchange_node -> road_transport
- station_node -> rail_transport
- freight_terminal_node -> freight_logistics
- port_node -> maritime_transport
- airport_node -> air_transport
- power_substation_node -> energy_utility
- water_plant_node -> water_utility
- telecom_hub_node -> telecom_utility


# ============================================================
# 2. FINAL RULE
# ============================================================

Every infrastructure type
must map to one primary infrastructure category.
