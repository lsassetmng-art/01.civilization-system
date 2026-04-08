# ============================================================
# MAP VISUAL REFLECTION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for runtime map visual reflection.

# 2. TRIGGER

- world/map state update
- visual refresh cycle
- reflection rule update

# 3. MAIN FLOW

1. create or resolve map_visual_state
2. resolve map_visual_layer set
3. resolve visual_reflection_rule set
4. calculate visual projection
5. persist visual_projection_result
6. emit audit trace

# 4. FAILURE FLOW

- missing map scope -> reject
- invalid layer ordering -> reject
- hidden visual mutation -> fail closed

# 5. OUTPUT

- map visual state
- projection result
- audit record

