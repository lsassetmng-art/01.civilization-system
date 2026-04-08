# ============================================================
# WAR LOGISTICS
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for war logistics structures.

# 2. INFRASTRUCTURE SCOPE

- logistics storage
- route/resource persistence
- logistics-status storage
- war-logistics audit sink

# 3. INFRASTRUCTURE RULES

- logistics scope and identity must be durably resolvable
- routes and resource rules must persist before downstream handoff
- active and blocked state must remain durable
- infrastructure ambiguity must fail closed

