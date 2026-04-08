# ============================================================
# LIFE EVENTS AND WORLD EVENTS
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for life and world events.

# 2. INFRASTRUCTURE SCOPE

- trigger source path
- event persistence
- effect publication path
- event audit sink

# 3. INFRASTRUCTURE RULES

- trigger source must be attributable before event creation
- event persistence must complete before effect publication
- effect publication must preserve target identity
- infrastructure ambiguity must fail closed

