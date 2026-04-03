# ============================================================
# FACILITY AND INFRASTRUCTURE PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: facility-and-infrastructure-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TARGET CLASSES
# ============================================================

target_classes:
- nation_object
- nation_policy_object
- public_facility
- civic_board_facility
- military_facility
- company_facility
- housing_facility
- mixed_use_building
- marketplace_facility
- bank_facility
- securities_facility
- infrastructure_line
- infrastructure_node
- road
- rail
- station
- port
- protected_lot
- reserved_lot


# ============================================================
# 2. EXAMPLE BASE RULES
# ============================================================

example_base_rules:
- ordinary_user may usually view and use public facilities
- creator_owner may manage owned company facilities
- city_operator may manage city-scoped civic objects
- nation_operator may manage nation-scoped public objects
- military_operator is required for military facility management
- infrastructure placement requires explicit infrastructure authority
- protected_lot modifications are restricted even for many operators


# ============================================================
# 3. FINAL RULE
# ============================================================

Target class matters as much as actor class.
The same actor may be allowed on one target
and blocked on another.
