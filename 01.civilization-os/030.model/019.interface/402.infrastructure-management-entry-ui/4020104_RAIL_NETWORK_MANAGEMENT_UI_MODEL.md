# ============================================================
# RAIL NETWORK MANAGEMENT UI MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: rail-network-management-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED ACTIONS
# ============================================================

supported_actions:
- lay_rail
- replace_rail
- remove_rail
- place_station_node
- reconfigure_station_node
- inspect_rail_network


# ============================================================
# 2. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- rail_network_summary
- rail_build_mode_toggle
- rail_path_preview
- station_node_tools
- replacement_and_removal_tools
- authority_and_permission_banner


# ============================================================
# 3. FINAL RULE
# ============================================================

Rail management UI
must keep rail line actions
and station node actions distinct.
