# ============================================================
# MILITARY SUPPLY RELATION TYPE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: company-builder-enum-master-phase2
component: military-supply-relation-type-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

military_supply_relation_type_enum:
- no_military_relation
- indirect_supplier
- dual_use_supplier
- certified_military_supplier
- core_defense_supplier
- state_war_supply_enterprise


# ============================================================
# 2. FINAL RULE
# ============================================================

Military supply relation type
defines proximity to military demand and war logistics.
