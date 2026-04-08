# ============================================================
# MAP VISUAL REFLECTION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for map visual reflection.

# 2. INTEGRATION SCOPE

- map visual state to rendering/runtime consumers
- reflection rules to projection engines
- projection results to visible map layers
- visual audit to operations

# 3. INTEGRATION RULES

- map scope and layer ordering must be explicit before projection handoff
- projection results must preserve visual-state identity
- hidden visual mutation must not cross boundary
- invalid layer ordering must fail closed

