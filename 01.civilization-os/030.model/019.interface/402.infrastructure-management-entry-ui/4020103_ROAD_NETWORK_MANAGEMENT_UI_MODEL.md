# ============================================================
# ROAD NETWORK MANAGEMENT UI MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: road-network-management-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED ACTIONS
# ============================================================

supported_actions:
- lay_road
- replace_road
- remove_road
- place_road_junction
- reconfigure_road_junction
- inspect_road_network


# ============================================================
# 2. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- road_network_summary
- road_build_mode_toggle
- road_path_preview
- junction_node_tools
- replacement_and_removal_tools
- authority_and_permission_banner


# ============================================================
# 3. FINAL RULE
# ============================================================

Road management UI
must treat roads as network lines,
not as ordinary placeable buildings.
