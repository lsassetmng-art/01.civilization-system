# ============================================================
# FACILITY DB CONTROL RULE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-economics-db
component: facility-db-control-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DB CONTROL RULES
# ============================================================

db_control_rules:
- numeric values for build_cost, maintenance_cost, and build_time are DB-controlled
- activation and operation profiles are DB-controlled rule-instance data
- facility_type must be referenced from facility_type_master
- nation, city, district, and operator modifiers must be applied after base values are loaded
- UI must display evaluated values, not hardcoded design placeholders


# ============================================================
# 2. FINAL RULE
# ============================================================

DB controls live values.
Design documents control structure and meaning.
