# ============================================================
# FACILITY MODIFIER MASTER MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-economics-db
component: facility-modifier-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines multiplier-based modifiers
for facility economics and timing.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

facility_modifier_master_fields:
- modifier_id
- applies_to_scope
- nation_id
- city_id
- district_id
- operator_class
- facility_type
- build_cost_multiplier
- maintenance_multiplier
- build_time_multiplier
- activation_delay_seconds
- note
- enabled_flag


# ============================================================
# 3. APPLIES-TO SCOPES
# ============================================================

applies_to_scopes:
- global
- nation
- city
- district
- operator_class
- facility_type
- combined


# ============================================================
# 4. FINAL RULE
# ============================================================

Modifiers adjust values.
They do not redefine facility meaning.
