# ============================================================
# MAP VISUAL REFLECTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for runtime map visual reflection.

# 2. CORE ENTITIES

- map_visual_state
- map_visual_layer
- visual_reflection_rule
- visual_projection_result

# 3. STATE MODEL

map_visual_state:
- map_visual_state_id
- map_scope
- visual_version
- visual_status
- captured_at

map_visual_layer:
- map_visual_layer_id
- map_visual_state_id
- layer_code
- layer_order
- layer_status

visual_reflection_rule:
- visual_reflection_rule_id
- rule_scope
- source_state_code
- reflection_type_code
- rule_status

visual_projection_result:
- visual_projection_result_id
- map_visual_state_id
- projection_scope
- projection_status
- projected_at

# 4. INTEGRITY RULES

- layer belongs to one map visual state
- projection result must reference one map visual state
- reflection rule scope must be explicit
- hidden visual mutation is prohibited

