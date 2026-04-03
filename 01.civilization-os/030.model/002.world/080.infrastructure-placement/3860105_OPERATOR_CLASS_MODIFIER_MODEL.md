# ============================================================
# OPERATOR CLASS MODIFIER MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: operator-class-modifier

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OPERATOR CLASSES
# ============================================================

operator_classes:
- user_company
- system_company
- public_body
- nation_body
- city_body
- mixed_operator


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

operator_class_modifier_fields:
- operator_class
- facility_type_or_null
- build_cost_multiplier
- maintenance_multiplier
- build_time_multiplier
- activation_delay_seconds
- review_bias
- note
- enabled_flag


# ============================================================
# 3. EXAMPLE EFFECTS
# ============================================================

example_effects:
- system_company may receive stable baseline modifiers
- public_body may reduce civic facility friction
- user_company may face stricter review or higher premium in sensitive zones
- nation_body may reduce activation friction for official facilities


# ============================================================
# 4. FINAL RULE
# ============================================================

Operator modifiers express execution posture,
not alternate facility identities.
