# ============================================================
# REWARD GRANT
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for reward grants.

# 2. INFRASTRUCTURE SCOPE

- grant-state storage
- approval-state persistence
- target publication path
- grant audit sink

# 3. INFRASTRUCTURE RULES

- approval state must persist before applied state
- source and target identity must remain durable
- unauthorized grant path must not publish from infra state
- infrastructure ambiguity must fail closed

