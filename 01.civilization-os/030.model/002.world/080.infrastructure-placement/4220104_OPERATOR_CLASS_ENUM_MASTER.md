# ============================================================
# OPERATOR CLASS ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: operator-class-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

operator_class_enum:
- road_authority
- rail_operator
- national_rail_authority
- city_transit_authority
- port_authority
- airport_authority
- power_authority
- water_authority
- telecom_authority
- nation_operator
- city_operator
- licensed_private_infrastructure_operator
- public_corporation_operator
- strategic_infrastructure_operator


# ============================================================
# 2. FINAL RULE
# ============================================================

Operator class
defines the actor family
that normally owns or manages the infrastructure.
