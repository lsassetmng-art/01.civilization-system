# ============================================================
# INFRASTRUCTURE PLACEMENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for infrastructure placement.

# 2. CORE ENTITIES

- infrastructure_object
- placement_rule
- placement_state
- placement_violation

# 3. STATE MODEL

infrastructure_object:
- object_id
- infrastructure_type_code
- owner_scope
- object_status

placement_rule:
- rule_id
- infrastructure_type_code
- placement_scope
- validation_rule_code

placement_state:
- placement_id
- object_id
- region_id
- coordinate_ref
- placement_status

placement_violation:
- violation_id
- placement_id
- violation_type_code
- detected_at
- severity_code

# 4. INTEGRITY RULES

- placement must reference one object
- infrastructure placement must bind one region
- validation rule must be explicit
- violation must preserve placement identity

