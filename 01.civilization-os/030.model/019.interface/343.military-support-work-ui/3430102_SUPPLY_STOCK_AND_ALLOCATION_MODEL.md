# ============================================================
# SUPPLY STOCK AND ALLOCATION MODEL
# ============================================================

status: canonical
layer: model
scope: military-support-work-ui
component: supply-stock-and-allocation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPLY TYPES
# ============================================================

supply_types:
- food_supply
- fuel_supply
- ammunition_supply
- medical_supply
- maintenance_parts
- uniforms_and_personal_gear
- engineering_material
- communications_equipment
- training_material
- emergency_reserve_supply


# ============================================================
# 2. STOCK FIELDS
# ============================================================

stock_fields:
- stock_id
- supply_type
- current_quantity
- reserve_quantity
- critical_threshold
- spoilage_or_decay_risk
- transport_requirement
- priority_class
- restricted_use_flag


# ============================================================
# 3. ALLOCATION ACTIONS
# ============================================================

allocation_actions:
- allocate_to_base
- allocate_to_training_group
- allocate_to_front_support_channel
- allocate_to_medical_recovery_channel
- hold_for_reserve
- ration_supply
- emergency_reprioritize_supply
- substitute_lower_grade_supply
- release_emergency_reserve


# ============================================================
# 4. FINAL RULE
# ============================================================

Supply control must expose
the tension between readiness,
consumption,
reserve safety,
and emergency scarcity.
