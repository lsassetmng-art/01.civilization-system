# ============================================================
# TRIPLE ECONOMIC INTERVENTION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for Triple economic intervention.

# 2. INFRASTRUCTURE SCOPE

- context storage
- signal persistence
- adjustment publication path
- reason-trace persistence

# 3. INFRASTRUCTURE RULES

- one context must bind one signal set durably
- reason trace must persist before adjustment publication
- adjustment publication must preserve channel identity
- infrastructure ambiguity must fail closed

