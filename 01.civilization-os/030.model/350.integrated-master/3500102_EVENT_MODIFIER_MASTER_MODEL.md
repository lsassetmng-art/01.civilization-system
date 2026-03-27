# ============================================================
# EVENT MODIFIER MASTER MODEL
# ============================================================

status: canonical
layer: model
scope: integrated-master
component: event-modifier-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical master mapping
between world models and event modifiers.


# ============================================================
# 2. REQUIRED MODIFIER GROUPS
# ============================================================

required_modifier_groups:
- social_statistics_modifiers
- household_cost_modifiers
- security_and_disaster_modifiers
- class_modifiers
- civic_psychology_modifiers
- family_culture_modifiers
- food_culture_modifiers
- appearance_culture_modifiers
- living_space_modifiers
- leisure_culture_modifiers
- communication_culture_modifiers
- time_culture_modifiers
- mobility_culture_modifiers
- consumer_behavior_modifiers
- media_information_modifiers
- corporate_culture_modifiers
- political_participation_modifiers


# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

event_modifier_master_fields:
- modifier_group_id
- source_model_id
- target_event_family
- modifier_direction
- modifier_intensity_style
- affected_result_types
- stacking_rule
- override_rule
- fallback_rule


# ============================================================
# 4. FINAL RULE
# ============================================================

Every major nation-difference model
must be able to point to concrete event influence.
