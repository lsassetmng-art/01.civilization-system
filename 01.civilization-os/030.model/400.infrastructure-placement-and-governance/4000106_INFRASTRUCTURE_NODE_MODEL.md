# ============================================================
# INFRASTRUCTURE NODE MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-placement-and-governance
component: infrastructure-node

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NODE TYPES
# ============================================================

node_types:
- station_node
- port_node
- road_junction_node
- interchange_node
- rail_control_node


# ============================================================
# 2. NODE RULES
# ============================================================

node_rules:
- station nodes are controlled by rail operator classes
- port nodes are controlled by port authority classes
- major interchange nodes may require elevated transport approval
- node placement is distinct from line placement
- commercial tenant overlays on stations do not redefine station control


# ============================================================
# 3. FINAL RULE
# ============================================================

Nodes are authority-bearing transport objects,
not merely decorative attachments to lines.
