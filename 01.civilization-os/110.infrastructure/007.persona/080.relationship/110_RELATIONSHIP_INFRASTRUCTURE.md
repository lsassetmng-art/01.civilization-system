# ============================================================
# RELATIONSHIP
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for persona relationships.

# 2. INFRASTRUCTURE SCOPE

- relationship-record storage
- party/status persistence
- relationship-event storage
- relationship audit sink

# 3. INFRASTRUCTURE RULES

- party and status state must persist before publication
- relationship-event must preserve relationship identity
- hidden mutation evidence must remain durable
- infrastructure ambiguity must fail closed

