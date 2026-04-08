# ============================================================
# WAR CORE
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for war core structures.

# 2. INFRASTRUCTURE SCOPE

- war-definition storage
- party/rule persistence
- war-status storage
- war-core audit sink

# 3. INFRASTRUCTURE RULES

- war scope and identity must be durably resolvable
- parties and rules must persist before downstream handoff
- active and suspended state must remain durable
- infrastructure ambiguity must fail closed

