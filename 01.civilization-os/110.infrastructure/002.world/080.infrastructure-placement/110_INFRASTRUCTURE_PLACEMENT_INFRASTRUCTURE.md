# ============================================================
# INFRASTRUCTURE PLACEMENT
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for infrastructure placement.

# 2. INFRASTRUCTURE SCOPE

- placement-state storage
- coordinate validation path
- violation persistence
- map/runtime publication path

# 3. INFRASTRUCTURE RULES

- placement state must persist before publication
- violation evidence must persist before rejection
- coordinate validation must be attributable
- infrastructure ambiguity must fail closed

