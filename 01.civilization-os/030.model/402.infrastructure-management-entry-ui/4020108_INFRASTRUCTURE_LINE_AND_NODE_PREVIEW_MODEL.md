# ============================================================
# INFRASTRUCTURE LINE AND NODE PREVIEW MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-line-and-node-preview

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW TYPES
# ============================================================

preview_types:
- road_line_preview
- rail_line_preview
- metro_line_preview
- station_node_preview
- port_node_preview
- replacement_preview
- removal_preview


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- preview_type
- target_path_or_node
- authority_context
- permission_state
- projected_build_cost
- projected_build_time
- projected_network_effect
- warning_or_block_reason_set


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure preview
must explain path or node consequences
before execution.
