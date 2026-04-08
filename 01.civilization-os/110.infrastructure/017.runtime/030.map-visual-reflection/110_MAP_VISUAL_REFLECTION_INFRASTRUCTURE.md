# ============================================================
# MAP VISUAL REFLECTION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for map visual reflection.

# 2. INFRASTRUCTURE SCOPE

- map-visual-state storage
- layer persistence
- reflection-rule storage
- projection audit sink

# 3. INFRASTRUCTURE RULES

- map scope and layer order must be durably resolvable
- projection result must persist before rendering handoff
- visual-state identity must remain durable
- infrastructure ambiguity must fail closed

