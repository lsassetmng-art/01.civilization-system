# ============================================================
# LIFE EVENT
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for persona life events.

# 2. INFRASTRUCTURE SCOPE

- trigger-source path
- life-event storage
- effect/state persistence
- life-event audit sink

# 3. INFRASTRUCTURE RULES

- life-event record must persist before effect publication
- trigger source must remain attributable
- effect and state publication must preserve life-event identity
- infrastructure ambiguity must fail closed

