# ============================================================
# EXHIBITION BUILDER RULE MASTER
# ============================================================

status: canonical
layer: model
scope: exhibition-builder
component: exhibition-builder-rule-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines configurable rule master values
for Exhibition Builder.


# ============================================================
# 2. CORE RULE
# ============================================================

Exhibition Builder structure is canonical.
Venue and layout operating constraints are configurable.

This master may define:
- enabled_flag
- venue_type_compatibility
- max_artwork_count
- max_equipment_count
- safety_requirement_profile
- visitor_capacity_profile
- placement_constraint_profile
- opening_schedule_constraint_profile
- nation_override_profile


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

Recommended fields:
- exhibition_builder_rule_code
- nation_id
- enabled_flag
- venue_type_compatibility
- max_artwork_count
- max_equipment_count
- safety_requirement_profile
- visitor_capacity_profile
- placement_constraint_profile
- opening_schedule_constraint_profile
- notes
- updated_at


# ============================================================
# 4. FINAL RULE
# ============================================================

Exhibition builder rule master controls variable operational constraints,
not the canonical exhibition builder structure.
