# ============================================================
# WORLD ENVIRONMENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for world environment structures.

# 2. CORE ENTITIES

- world_environment
- environment_factor
- environment_rule
- environment_status

# 3. STATE MODEL

world_environment:
- world_environment_id
- world_definition_id
- environment_scope
- environment_type_code
- environment_status

environment_factor:
- environment_factor_id
- world_environment_id
- factor_code
- factor_value
- factor_status

environment_rule:
- environment_rule_id
- world_environment_id
- rule_type_code
- rule_value
- rule_status

environment_status:
- environment_status_id
- world_environment_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- factor and rule must belong to one world environment
- environment scope must be explicit
- active and revised state must be explicit
- hidden environment mutation is prohibited

