# ============================================================
# PLACEABLE INFRASTRUCTURE VALUE CANDIDATE MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: placeable-infrastructure-value-candidate

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE REQUIRED FIELDS
# ============================================================

core_required_fields:
- infrastructure_type
- infrastructure_category
- line_or_node_type
- operator_class
- authority_scope_type
- placement_mode
- approval_mode
- replacement_mode
- removal_mode
- maintenance_mode
- public_or_private_control_type
- strategic_infrastructure_flag
- cross_border_infrastructure_flag


# ============================================================
# 2. LINE INFRASTRUCTURE CANDIDATES
# ============================================================

line_infrastructure_candidates:
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
# 3. NODE INFRASTRUCTURE CANDIDATES
# ============================================================

node_infrastructure_candidates:
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
# 4. FINAL RULE
# ============================================================

Placeable infrastructure
must use an explicit candidate dictionary
because infrastructure affects
authority,
placement,
and operational play.
