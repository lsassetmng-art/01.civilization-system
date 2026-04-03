# ============================================================
# INFRASTRUCTURE OPERATOR CLASS MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-placement-and-governance
component: infrastructure-operator-class

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OPERATOR CLASSES
# ============================================================

operator_classes:
- road_authority
- rail_operator
- national_rail_authority
- city_transit_authority
- port_authority
- nation_operator
- city_operator
- licensed_private_infrastructure_operator


# ============================================================
# 2. FINAL RULE
# ============================================================

Infrastructure requires dedicated operator classes,
not generic enterprise access.
