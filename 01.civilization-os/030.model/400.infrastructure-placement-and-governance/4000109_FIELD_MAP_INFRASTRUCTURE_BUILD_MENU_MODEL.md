# ============================================================
# FIELD MAP INFRASTRUCTURE BUILD MENU MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-placement-and-governance
component: field-map-infrastructure-build-menu

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BUILD MENU GROUPS
# ============================================================

build_menu_groups:
- road
- rail
- metro
- station
- port
- transport_node
- private_access_route


# ============================================================
# 2. MENU RULES
# ============================================================

menu_rules:
- build menu must show only infrastructure actions permitted in current context
- blocked infrastructure actions may appear disabled with authority explanation
- node placement and line placement must be visually distinct
- public and licensed-private modes may change visible options


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure build menu
must communicate authority and transport form clearly.
