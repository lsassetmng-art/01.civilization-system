# ============================================================
# WAR OPERATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for war operation structures.

# 2. INFRASTRUCTURE SCOPE

- operation storage
- phase/objective persistence
- operation-status storage
- war-operation audit sink

# 3. INFRASTRUCTURE RULES

- operation scope and identity must be durably resolvable
- phases and objectives must persist before downstream handoff
- active and closed state must remain durable
- infrastructure ambiguity must fail closed

