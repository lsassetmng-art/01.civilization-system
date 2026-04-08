# ============================================================
# TRIPLE WORLD INTERVENTION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for Triple world intervention.

# 2. INFRASTRUCTURE SCOPE

- context persistence
- signal intake path
- action publication path
- reason-trace persistence

# 3. INFRASTRUCTURE RULES

- one context must bind one signal set durably
- reason trace must persist before action publication
- action publication must preserve explicit channel identity
- infrastructure ambiguity must fail closed

