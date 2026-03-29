# ============================================================
# INFRASTRUCTURE PLACEMENT PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: infrastructure-placement-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFRASTRUCTURE ACTIONS
# ============================================================

infrastructure_actions:
- lay_road
- lay_rail
- lay_metro
- place_station_node
- place_port_node
- replace_line
- remove_line
- reconfigure_node


# ============================================================
# 2. RULES
# ============================================================

rules:
- infrastructure actions require explicit infrastructure authority
- road placement may be city-scope or nation-scope depending on policy
- rail placement may require higher authority than ordinary road placement
- station and port nodes may require transport-hub approval
- removal and replacement may require stronger authority than initial placement
- protected transport corridors may be blocked even for many operators


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure placement
must be permissioned separately
from ordinary facility placement.
