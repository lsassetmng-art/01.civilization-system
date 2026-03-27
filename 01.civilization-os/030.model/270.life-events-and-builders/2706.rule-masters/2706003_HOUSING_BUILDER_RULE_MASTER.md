# ============================================================
# HOUSING BUILDER RULE MASTER
# ============================================================

status: canonical
layer: model
scope: housing-builder
component: housing-builder-rule-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines configurable rule master values
for Housing Builder.


# ============================================================
# 2. CORE RULE
# ============================================================

Housing Builder structure is canonical.
Housing Builder operating conditions are configurable.

This master may define:
- enabled_housing_types
- zone_compatibility_profile
- buildable_zone_requirements
- construction_cost_profile
- purchase_cost_profile
- design_cost_profile
- equipment_cost_profile
- default_construction_duration_days
- move_in_requirements
- nation_override_profile


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

Recommended fields:
- housing_builder_rule_code
- nation_id
- enabled_flag
- enabled_housing_type_set
- zone_compatibility_profile
- buildable_zone_profile
- construction_cost_profile
- purchase_cost_profile
- interior_exterior_cost_profile
- default_construction_duration_days
- move_in_requirements
- notes
- updated_at


# ============================================================
# 4. FINAL RULE
# ============================================================

Housing builder rule master controls variable build conditions,
not housing builder core structure.
