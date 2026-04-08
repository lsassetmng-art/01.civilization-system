# ============================================================
# MAP VISUAL REFLECTION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for map visual reflection.

# 2. IMPLEMENTATION TARGETS

- visual-state handling
- layer handling
- rule evaluation
- projection publication
- audit publication

# 3. DATA / STATE

Canonical structures:
- map_visual_state
- map_visual_layer
- visual_reflection_rule
- visual_projection_result

# 4. EXECUTION

- resolve explicit map scope and deterministic layer order
- evaluate reflection rules before projection publication
- persist projection before render handoff
- reject hidden visual mutation

# 5. VALIDATION

- reject missing map scope
- reject invalid layer ordering
- reject hidden visual mutation

# 6. OBSERVABILITY

- visual audit
- layer/rule visibility
- projection visibility

