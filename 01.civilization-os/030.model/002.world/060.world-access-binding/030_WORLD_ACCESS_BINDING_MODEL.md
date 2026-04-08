# ============================================================
# WORLD ACCESS BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for world access bindings.

# 2. CORE ENTITIES

- world_access_binding
- access_subject_reference
- access_rule
- access_binding_status

# 3. STATE MODEL

world_access_binding:
- world_access_binding_id
- world_definition_id
- binding_scope
- access_type_code
- binding_status

access_subject_reference:
- access_subject_reference_id
- world_access_binding_id
- subject_scope
- subject_code
- reference_status

access_rule:
- access_rule_id
- world_access_binding_id
- rule_type_code
- rule_value
- rule_status

access_binding_status:
- access_binding_status_id
- world_access_binding_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- subject reference and rule must belong to one access binding
- world and subject scope must be explicit
- active and blocked state must be explicit
- hidden access-binding mutation is prohibited

