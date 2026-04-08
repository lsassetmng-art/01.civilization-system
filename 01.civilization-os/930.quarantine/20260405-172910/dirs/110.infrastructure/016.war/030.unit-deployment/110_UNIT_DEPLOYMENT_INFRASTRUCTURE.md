# ============================================================
# UNIT DEPLOYMENT
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for unit deployment structures.

# 2. INFRASTRUCTURE SCOPE

- deployment storage
- unit/rule persistence
- deployment-status storage
- unit-deployment audit sink

# 3. INFRASTRUCTURE RULES

- deployment scope and identity must be durably resolvable
- units and rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

