# ============================================================
# MAINTENANCE MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: maintenance-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

maintenance_mode_enum:
- operator_self_maintenance
- public_authority_maintenance
- contracted_maintenance
- mixed_maintenance
- emergency_state_maintenance


# ============================================================
# 2. FINAL RULE
# ============================================================

Maintenance mode
defines how upkeep responsibility
is structurally assigned.
